import matplotlib.pyplot as plt
import tensorflow as tf
from tensorflow import keras

image_size = (380, 454)
batch_size = 256
num_classes = 5
epochs = 200
buffer_size = 4

# (train_images, train_labels), (test_images, test_labels) = keras.datasets.cifar10.load_data()

CLASS_NAMES = ['Early', 'Early-Mid', 'Mid', 'Late-Mid', 'Late']

# validation_images, validation_labels = train_images[:5000], train_labels[:5000]
# train_images, train_labels = train_images[5000:], train_labels[5000:]

# train_ds = tf.data.Dataset.from_tensor_slices((train_images, train_labels))
# test_ds = tf.data.Dataset.from_tensor_slices((test_images, test_labels))
# validation_ds = tf.data.Dataset.from_tensor_slices((validation_images, validation_labels))

train_ds = tf.keras.preprocessing.image_dataset_from_directory(
    "Zebrafish_Train",
    # "Z:/working/barryd/hpc/python/keras_image_class/Zebrafish_Train",
    validation_split=0.2,
    subset="training",
    seed=1337,
    image_size=image_size,
    batch_size=batch_size,
    shuffle=True,
    color_mode="grayscale",
    labels="inferred",
    label_mode="categorical"
)

validation_ds = tf.keras.preprocessing.image_dataset_from_directory(
    "Zebrafish_Train",
    # "Z:/working/barryd/hpc/python/keras_image_class/Zebrafish_Train",
    validation_split=0.2,
    subset="validation",
    seed=1337,
    image_size=image_size,
    batch_size=batch_size,
    shuffle=True,
    color_mode="grayscale",
    labels="inferred",
    label_mode="categorical"
)

test_ds = tf.keras.preprocessing.image_dataset_from_directory(
    "Zebrafish_Test",
    # "Z:/working/barryd/hpc/python/keras_image_class/Zebrafish_Test",
    image_size=image_size,
    batch_size=batch_size,
    color_mode="grayscale",
    labels="inferred",
    label_mode="categorical"
)

train_ds = train_ds.prefetch(buffer_size=buffer_size).cache()
validation_ds = validation_ds.prefetch(buffer_size=buffer_size).cache()

plt.figure(figsize=(20, 17))
for images, labels in train_ds.take(1):
    for i in range(25):
        ax = plt.subplot(5, 5, i + 1)
        plt.imshow(images[i].numpy().astype("uint8"), cmap=plt.cm.gray)
        for j in range(len(CLASS_NAMES)):
            if labels.numpy()[i][j] > 0:
                plt.title(CLASS_NAMES[j])
        plt.axis("off")
plt.savefig('sample_images.png')

strategy = tf.distribute.MirroredStrategy()

with strategy.scope():
    data_augmentation = keras.Sequential(
        [
            keras.layers.experimental.preprocessing.RandomFlip(mode="horizontal_and_vertical"),
            keras.layers.experimental.preprocessing.RandomContrast(factor=0.2)
        ]
    )

    inputs = keras.Input(shape=image_size + (1,))
    x = data_augmentation(inputs)
    x = keras.layers.experimental.preprocessing.Rescaling(1.0 / 255)(x)
    x = keras.layers.Conv2D(filters=96, kernel_size=(11, 11), strides=(4, 4), activation='relu', padding="same")(x)
    x = keras.layers.BatchNormalization()(x)
    x = keras.layers.MaxPool2D(pool_size=(3, 3), strides=(2, 2))(x)
    x = keras.layers.Conv2D(filters=256, kernel_size=(5, 5), strides=(1, 1), activation='relu', padding="same")(x)
    x = keras.layers.BatchNormalization()(x)
    x = keras.layers.MaxPool2D(pool_size=(3, 3), strides=(2, 2))(x)
    x = keras.layers.Conv2D(filters=384, kernel_size=(3, 3), strides=(1, 1), activation='relu', padding="same")(x)
    x = keras.layers.BatchNormalization()(x)
    x = keras.layers.Conv2D(filters=384, kernel_size=(3, 3), strides=(1, 1), activation='relu', padding="same")(x)
    x = keras.layers.BatchNormalization()(x)
    x = keras.layers.Conv2D(filters=256, kernel_size=(3, 3), strides=(1, 1), activation='relu', padding="same")(x)
    x = keras.layers.BatchNormalization()(x)
    x = keras.layers.MaxPool2D(pool_size=(3, 3), strides=(2, 2))(x)
    x = keras.layers.Flatten()(x)
    x = keras.layers.Dense(4096, activation='relu')(x)
    x = keras.layers.Dropout(0.5)(x)
    x = keras.layers.Dense(4096, activation='relu')(x)
    x = keras.layers.Dropout(0.5)(x)
    # if num_classes == 2:
    #    activation = "sigmoid"
    # else:
    #    activation = "softmax"
    # outputs = keras.layers.Dense(num_classes, activation=activation)(x)
    outputs = keras.layers.Dense(num_classes, activation="softmax")(x)
    model = keras.Model(inputs, outputs)

    model.compile(loss='categorical_crossentropy', optimizer=keras.optimizers.Adam(learning_rate=0.0001),
                  metrics=['accuracy'])

model.summary()

csv_logger = tf.keras.callbacks.CSVLogger('training.log')

history = model.fit(train_ds,
                    epochs=epochs,
                    validation_data=validation_ds,
                    validation_freq=1,
                    callbacks=csv_logger)

model.save('trained_alexnet_classification_model')

plt.figure(figsize=(20, 10))
plt.subplot(1, 2, 1)
plt.suptitle('Optimizer : Adam', fontsize=10)
plt.ylabel('Loss', fontsize=16)
plt.plot(history.history['loss'], label='Training Loss')
plt.plot(history.history['val_loss'], label='Validation Loss')
plt.legend(loc='upper right')

plt.subplot(1, 2, 2)
plt.ylabel('Accuracy', fontsize=16)
plt.plot(history.history['accuracy'], label='Training Accuracy')
plt.plot(history.history['val_accuracy'], label='Validation Accuracy')
plt.legend(loc='lower right')
plt.savefig('training_classification_progress.png')

csv_logger = tf.keras.callbacks.CSVLogger('testing.log')

model.evaluate(test_ds,
               callbacks=csv_logger)
