З∆!
Ъй
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
Ї
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 И
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758ўў
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
А
random_zoom/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_zoom/StateVar
y
(random_zoom/StateVar/Read/ReadVariableOpReadVariableOprandom_zoom/StateVar*
_output_shapes
:*
dtype0	
О
random_translation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*,
shared_namerandom_translation/StateVar
З
/random_translation/StateVar/Read/ReadVariableOpReadVariableOprandom_translation/StateVar*
_output_shapes
:*
dtype0	
А
random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
z
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
:*
dtype0
z
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
:*
dtype0
Г
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	Р*
dtype0
Г
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	Р*
dtype0
Б
Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*%
shared_nameAdam/v/conv2d_4/bias
z
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes	
:Р*
dtype0
Б
Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*%
shared_nameAdam/m/conv2d_4/bias
z
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes	
:Р*
dtype0
Т
Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:РР*'
shared_nameAdam/v/conv2d_4/kernel
Л
*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*(
_output_shapes
:РР*
dtype0
Т
Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:РР*'
shared_nameAdam/m/conv2d_4/kernel
Л
*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*(
_output_shapes
:РР*
dtype0
Б
Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*%
shared_nameAdam/v/conv2d_3/bias
z
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes	
:Р*
dtype0
Б
Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*%
shared_nameAdam/m/conv2d_3/bias
z
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes	
:Р*
dtype0
С
Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:pР*'
shared_nameAdam/v/conv2d_3/kernel
К
*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*'
_output_shapes
:pР*
dtype0
С
Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:pР*'
shared_nameAdam/m/conv2d_3/kernel
К
*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*'
_output_shapes
:pР*
dtype0
А
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:p*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:p*
dtype0
А
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:p*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:p*
dtype0
С
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:аp*'
shared_nameAdam/v/conv2d_2/kernel
К
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*'
_output_shapes
:аp*
dtype0
С
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:аp*'
shared_nameAdam/m/conv2d_2/kernel
К
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*'
_output_shapes
:аp*
dtype0
Б
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*%
shared_nameAdam/v/conv2d_1/bias
z
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes	
:а*
dtype0
Б
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*%
shared_nameAdam/m/conv2d_1/bias
z
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes	
:а*
dtype0
Т
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Аа*'
shared_nameAdam/v/conv2d_1/kernel
Л
*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*(
_output_shapes
:Аа*
dtype0
Т
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Аа*'
shared_nameAdam/m/conv2d_1/kernel
Л
*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*(
_output_shapes
:Аа*
dtype0
}
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/v/conv2d/bias
v
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes	
:А*
dtype0
}
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/m/conv2d/bias
v
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes	
:А*
dtype0
Н
Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/v/conv2d/kernel
Ж
(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*'
_output_shapes
:А*
dtype0
Н
Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/m/conv2d/kernel
Ж
(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*'
_output_shapes
:А*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	Р*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:Р*
dtype0
Д
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:РР* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:РР*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:Р*
dtype0
Г
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:pР* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:pР*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:p*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:p*
dtype0
Г
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:аp* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:аp*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:а*
dtype0
Д
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Аа* 
shared_nameconv2d_1/kernel
}
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*(
_output_shapes
:Аа*
dtype0
o
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:А*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:А*
dtype0
О
serving_default_input_1Placeholder*1
_output_shapes
:€€€€€€€€€аМ*
dtype0*&
shape:€€€€€€€€€аМ
К
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *.
f)R'
%__inference_signature_wrapper_1108611

NoOpNoOp
°В
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*џБ
value–БBћБ BƒБ
Џ
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer_with_weights-2

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer-15
layer-16
layer_with_weights-5
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
І
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator*
І
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator*
І
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator*
О
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
О
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
»
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
 E_jit_compiled_convolution_op*
О
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
»
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias
 T_jit_compiled_convolution_op*
О
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses* 
»
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
 c_jit_compiled_convolution_op*
О
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
»
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

pkernel
qbias
 r_jit_compiled_convolution_op*
О
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses* 
 
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	Аbias
!Б_jit_compiled_convolution_op*
Ф
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses* 
Ф
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses* 
ђ
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses
Ф_random_generator* 
Ѓ
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
Ыkernel
	Ьbias*
]
C0
D1
R2
S3
a4
b5
p6
q7
8
А9
Ы10
Ь11*
]
C0
D1
R2
S3
a4
b5
p6
q7
8
А9
Ы10
Ь11*
* 
µ
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Ґtrace_0
£trace_1
§trace_2
•trace_3* 
:
¶trace_0
Іtrace_1
®trace_2
©trace_3* 
* 
И
™
_variables
Ђ_iterations
ђ_learning_rate
≠_index_dict
Ѓ
_momentums
ѓ_velocities
∞_update_step_xla*

±serving_default* 
* 
* 
* 
Ц
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

Јtrace_0
Єtrace_1* 

єtrace_0
Їtrace_1* 

ї
_generator*
* 
* 
* 
Ц
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

Ѕtrace_0
¬trace_1* 

√trace_0
ƒtrace_1* 

≈
_generator*
* 
* 
* 
Ц
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

Ћtrace_0
ћtrace_1* 

Ќtrace_0
ќtrace_1* 

ѕ
_generator*
* 
* 
* 
Ц
–non_trainable_variables
—layers
“metrics
 ”layer_regularization_losses
‘layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

’trace_0* 

÷trace_0* 
* 
* 
* 
Ц
„non_trainable_variables
Ўlayers
ўmetrics
 Џlayer_regularization_losses
џlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

№trace_0* 

Ёtrace_0* 

C0
D1*

C0
D1*
* 
Ш
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

кtrace_0* 

лtrace_0* 

R0
S1*

R0
S1*
* 
Ш
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

сtrace_0* 

тtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

шtrace_0* 

щtrace_0* 

a0
b1*

a0
b1*
* 
Ш
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

€trace_0* 

Аtrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

Жtrace_0* 

Зtrace_0* 

p0
q1*

p0
q1*
* 
Ш
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 

0
А1*

0
А1*
* 
Ш
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*

Ыtrace_0* 

Ьtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses* 

Ґtrace_0* 

£trace_0* 
* 
* 
* 
Ь
§non_trainable_variables
•layers
¶metrics
 Іlayer_regularization_losses
®layer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses* 

©trace_0* 

™trace_0* 
* 
* 
* 
Ь
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses* 

∞trace_0
±trace_1* 

≤trace_0
≥trace_1* 
* 

Ы0
Ь1*

Ы0
Ь1*
* 
Ю
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses*

єtrace_0* 

Їtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
К
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*

ї0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
џ
Ђ0
Љ1
љ2
Њ3
њ4
ј5
Ѕ6
¬7
√8
ƒ9
≈10
∆11
«12
»13
…14
 15
Ћ16
ћ17
Ќ18
ќ19
ѕ20
–21
—22
“23
”24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
Љ0
Њ1
ј2
¬3
ƒ4
∆5
»6
 7
ћ8
ќ9
–10
“11*
f
љ0
њ1
Ѕ2
√3
≈4
«5
…6
Ћ7
Ќ8
ѕ9
—10
”11*
ђ
‘trace_0
’trace_1
÷trace_2
„trace_3
Ўtrace_4
ўtrace_5
Џtrace_6
џtrace_7
№trace_8
Ёtrace_9
ёtrace_10
яtrace_11* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

а
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

б
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

в
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
г	variables
д	keras_api

еtotal

жcount*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_4/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_4/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_4/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_4/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
xr
VARIABLE_VALUErandom_flip/StateVarJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUErandom_translation/StateVarJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUErandom_zoom/StateVarJlayer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*

е0
ж1*

г	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Л	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasrandom_flip/StateVarrandom_translation/StateVarrandom_zoom/StateVartotalcountConst*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *)
f$R"
 __inference__traced_save_1110474
Ж	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasrandom_flip/StateVarrandom_translation/StateVarrandom_zoom/StateVartotalcount*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *,
f'R%
#__inference__traced_restore_1110613§к
Я

c
D__inference_dropout_layer_call_and_return_conditional_losses_1110154

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕН
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€РT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Рb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€Р:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
ш
b
F__inference_rescaling_layer_call_and_return_conditional_losses_1109829

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1108114

inputs:
conv2d_readvariableop_resource:РР.
biasadd_readvariableop_resource:	Р
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:РР*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

Р*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

РY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Рj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

Рw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€Р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
щ
°
*__inference_conv2d_3_layer_call_fn_1110070

inputs"
unknown:pР
	unknown_0:	Р
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1108096x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Р`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€p: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€p
 
_user_specified_nameinputs
Й
€
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1110051

inputs9
conv2d_readvariableop_resource:аp-
biasadd_readvariableop_resource:p
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:аp*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44p*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:p*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44pX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€44pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€44pw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€66а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€66а
 
_user_specified_nameinputs
ъE
Ь
G__inference_sequential_layer_call_and_return_conditional_losses_1108223
input_1)
conv2d_1108180:А
conv2d_1108182:	А,
conv2d_1_1108186:Аа
conv2d_1_1108188:	а+
conv2d_2_1108192:аp
conv2d_2_1108194:p+
conv2d_3_1108198:pР
conv2d_3_1108200:	Р,
conv2d_4_1108204:РР
conv2d_4_1108206:	Р 
dense_1108217:	Р
dense_1108219:
identityИҐ#center_crop/StatefulPartitionedCallҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ conv2d_3/StatefulPartitionedCallҐ conv2d_4/StatefulPartitionedCallҐdense/StatefulPartitionedCall”
random_flip/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_flip_layer_call_and_return_conditional_losses_1108166ю
"random_translation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *X
fSRQ
O__inference_random_translation_layer_call_and_return_conditional_losses_1108171ч
random_zoom/PartitionedCallPartitionedCall+random_translation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_zoom_layer_call_and_return_conditional_losses_1108176м
rescaling/PartitionedCallPartitionedCall$random_zoom/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_1107890ю
#center_crop/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_center_crop_layer_call_and_return_conditional_losses_1108029•
conv2d/StatefulPartitionedCallStatefulPartitionedCall,center_crop/StatefulPartitionedCall:output:0conv2d_1108180conv2d_1108182*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ёёА*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_1108042ц
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€ooА* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1107483•
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1108186conv2d_1_1108188*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€mmа*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1108060ь
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€66а* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1107495¶
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1108192conv2d_2_1108194*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€44p*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1108078ы
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€p* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1107507І
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_1108198conv2d_3_1108200*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1108096ь
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1107519І
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_1108204conv2d_4_1108206*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1108114ь
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1107531г
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1108127џ
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1108215К
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1108217dense_1108219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1108153u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€є
NoOpNoOp$^center_crop/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аМ: : : : : : : : : : : : 2J
#center_crop/StatefulPartitionedCall#center_crop/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аМ
!
_user_specified_name	input_1
љ
Ђ
,__inference_sequential_layer_call_fn_1108311
input_1
unknown:	
	unknown_0:	
	unknown_1:	$
	unknown_2:А
	unknown_3:	А%
	unknown_4:Аа
	unknown_5:	а$
	unknown_6:аp
	unknown_7:p$
	unknown_8:pР
	unknown_9:	Р&

unknown_10:РР

unknown_11:	Р

unknown_12:	Р

unknown_13:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1108278o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€аМ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аМ
!
_user_specified_name	input_1
„
Z
$__inference__update_step_xla_1109424
gradient$
variable:РР*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:РР: *
	_noinline(:($
"
_user_specified_name
variable:R N
(
_output_shapes
:РР
"
_user_specified_name
gradient
С
Б
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1110111

inputs:
conv2d_readvariableop_resource:РР.
biasadd_readvariableop_resource:	Р
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:РР*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

Р*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

РY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Рj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

Рw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€Р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1107531

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ш
ю
C__inference_conv2d_layer_call_and_return_conditional_losses_1108042

inputs9
conv2d_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype0Э
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёАl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:€€€€€€€€€ёёАw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1110001

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ
Д
4__inference_random_translation_layer_call_fn_1109573

inputs
unknown:	
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *X
fSRQ
O__inference_random_translation_layer_call_and_return_conditional_losses_1107772y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аМ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Й
€
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1108078

inputs9
conv2d_readvariableop_resource:аp-
biasadd_readvariableop_resource:p
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:аp*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44p*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:p*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44pX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€44pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€44pw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€66а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€66а
 
_user_specified_nameinputs
Э
k
O__inference_random_translation_layer_call_and_return_conditional_losses_1109698

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
‘
Y
$__inference__update_step_xla_1109384
gradient#
variable:А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:А: *
	_noinline(:($
"
_user_specified_name
variable:Q M
'
_output_shapes
:А
"
_user_specified_name
gradient
Ђ'
l
cond_false_1107920
cond_placeholder
cond_placeholder_1
cond_shape_inputs
cond_identityY

cond/ShapeShapecond_shape_inputs*
T0*
_output_shapes
::нѕk
cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€m
cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€d
cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
cond/strided_sliceStridedSlicecond/Shape:output:0!cond/strided_slice/stack:output:0#cond/strided_slice/stack_1:output:0#cond/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
cond/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€o
cond/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€f
cond/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
cond/strided_slice_1StridedSlicecond/Shape:output:0#cond/strided_slice_1/stack:output:0%cond/strided_slice_1/stack_1:output:0%cond/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM

cond/mul/yConst*
_output_shapes
: *
dtype0*
value
B :аd
cond/mulMulcond/strided_slice_1:output:0cond/mul/y:output:0*
T0*
_output_shapes
: O
	cond/CastCastcond/mul:z:0*

DstT0*

SrcT0*
_output_shapes
: S
cond/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `C`
cond/truedivRealDivcond/Cast:y:0cond/truediv/y:output:0*
T0*
_output_shapes
: U
cond/Cast_1Castcond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: O
cond/mul_1/yConst*
_output_shapes
: *
dtype0*
value
B :аf

cond/mul_1Mulcond/strided_slice:output:0cond/mul_1/y:output:0*
T0*
_output_shapes
: S
cond/Cast_2Castcond/mul_1:z:0*

DstT0*

SrcT0*
_output_shapes
: U
cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `Cf
cond/truediv_1RealDivcond/Cast_2:y:0cond/truediv_1/y:output:0*
T0*
_output_shapes
: W
cond/Cast_3Castcond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: f
cond/MinimumMinimumcond/strided_slice:output:0cond/Cast_1:y:0*
T0*
_output_shapes
: j
cond/Minimum_1Minimumcond/strided_slice_1:output:0cond/Cast_3:y:0*
T0*
_output_shapes
: _
cond/subSubcond/strided_slice:output:0cond/Minimum:z:0*
T0*
_output_shapes
: Q
cond/Cast_4Castcond/sub:z:0*

DstT0*

SrcT0*
_output_shapes
: U
cond/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
cond/truediv_2RealDivcond/Cast_4:y:0cond/truediv_2/y:output:0*
T0*
_output_shapes
: W
cond/Cast_5Castcond/truediv_2:z:0*

DstT0*

SrcT0*
_output_shapes
: e

cond/sub_1Subcond/strided_slice_1:output:0cond/Minimum_1:z:0*
T0*
_output_shapes
: S
cond/Cast_6Castcond/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: U
cond/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
cond/truediv_3RealDivcond/Cast_6:y:0cond/truediv_3/y:output:0*
T0*
_output_shapes
: W
cond/Cast_7Castcond/truediv_3:z:0*

DstT0*

SrcT0*
_output_shapes
: N
cond/stack/0Const*
_output_shapes
: *
dtype0*
value	B : N
cond/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Р

cond/stackPackcond/stack/0:output:0cond/Cast_5:y:0cond/Cast_7:y:0cond/stack/3:output:0*
N*
T0*
_output_shapes
:Y
cond/stack_1/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Y
cond/stack_1/3Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ъ
cond/stack_1Packcond/stack_1/0:output:0cond/Minimum:z:0cond/Minimum_1:z:0cond/stack_1/3:output:0*
N*
T0*
_output_shapes
:§

cond/SliceSlicecond_shape_inputscond/stack:output:0cond/stack_1:output:0*
Index0*
T0*:
_output_shapes(
&:$€€€€€€€€€аа€€€€€€€€€a
cond/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ≤
cond/resize/ResizeBilinearResizeBilinearcond/Slice:output:0cond/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(В
cond/IdentityIdentity+cond/resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
Ф
h
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1110091

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1110031

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
£s
ћ
"__inference__wrapped_model_1107477
input_1K
0sequential_conv2d_conv2d_readvariableop_resource:А@
1sequential_conv2d_biasadd_readvariableop_resource:	АN
2sequential_conv2d_1_conv2d_readvariableop_resource:АаB
3sequential_conv2d_1_biasadd_readvariableop_resource:	аM
2sequential_conv2d_2_conv2d_readvariableop_resource:аpA
3sequential_conv2d_2_biasadd_readvariableop_resource:pM
2sequential_conv2d_3_conv2d_readvariableop_resource:pРB
3sequential_conv2d_3_biasadd_readvariableop_resource:	РN
2sequential_conv2d_4_conv2d_readvariableop_resource:РРB
3sequential_conv2d_4_biasadd_readvariableop_resource:	РB
/sequential_dense_matmul_readvariableop_resource:	Р>
0sequential_dense_biasadd_readvariableop_resource:
identityИҐsequential/center_crop/condҐ(sequential/conv2d/BiasAdd/ReadVariableOpҐ'sequential/conv2d/Conv2D/ReadVariableOpҐ*sequential/conv2d_1/BiasAdd/ReadVariableOpҐ)sequential/conv2d_1/Conv2D/ReadVariableOpҐ*sequential/conv2d_2/BiasAdd/ReadVariableOpҐ)sequential/conv2d_2/Conv2D/ReadVariableOpҐ*sequential/conv2d_3/BiasAdd/ReadVariableOpҐ)sequential/conv2d_3/Conv2D/ReadVariableOpҐ*sequential/conv2d_4/BiasAdd/ReadVariableOpҐ)sequential/conv2d_4/Conv2D/ReadVariableOpҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOp`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential/rescaling/mulMulinput_1$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМv
sequential/center_crop/ShapeShapesequential/rescaling/add:z:0*
T0*
_output_shapes
::нѕ}
*sequential/center_crop/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€
,sequential/center_crop/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€v
,sequential/center_crop/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential/center_crop/strided_sliceStridedSlice%sequential/center_crop/Shape:output:03sequential/center_crop/strided_slice/stack:output:05sequential/center_crop/strided_slice/stack_1:output:05sequential/center_crop/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential/center_crop/sub/yConst*
_output_shapes
: *
dtype0*
value
B :аШ
sequential/center_crop/subSub-sequential/center_crop/strided_slice:output:0%sequential/center_crop/sub/y:output:0*
T0*
_output_shapes
: 
,sequential/center_crop/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Б
.sequential/center_crop/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€x
.sequential/center_crop/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ћ
&sequential/center_crop/strided_slice_1StridedSlice%sequential/center_crop/Shape:output:05sequential/center_crop/strided_slice_1/stack:output:07sequential/center_crop/strided_slice_1/stack_1:output:07sequential/center_crop/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential/center_crop/sub_1/yConst*
_output_shapes
: *
dtype0*
value
B :аЮ
sequential/center_crop/sub_1Sub/sequential/center_crop/strided_slice_1:output:0'sequential/center_crop/sub_1/y:output:0*
T0*
_output_shapes
: g
%sequential/center_crop/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : §
#sequential/center_crop/GreaterEqualGreaterEqualsequential/center_crop/sub:z:0.sequential/center_crop/GreaterEqual/y:output:0*
T0*
_output_shapes
: i
'sequential/center_crop/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : ™
%sequential/center_crop/GreaterEqual_1GreaterEqual sequential/center_crop/sub_1:z:00sequential/center_crop/GreaterEqual_1/y:output:0*
T0*
_output_shapes
: ђ
"sequential/center_crop/Rank/packedPack'sequential/center_crop/GreaterEqual:z:0)sequential/center_crop/GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:]
sequential/center_crop/RankConst*
_output_shapes
: *
dtype0*
value	B :d
"sequential/center_crop/range/startConst*
_output_shapes
: *
dtype0*
value	B : d
"sequential/center_crop/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
sequential/center_crop/rangeRange+sequential/center_crop/range/start:output:0$sequential/center_crop/Rank:output:0+sequential/center_crop/range/delta:output:0*
_output_shapes
:™
 sequential/center_crop/All/inputPack'sequential/center_crop/GreaterEqual:z:0)sequential/center_crop/GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:Л
sequential/center_crop/AllAll)sequential/center_crop/All/input:output:0%sequential/center_crop/range:output:0*
_output_shapes
: х
sequential/center_crop/condIf#sequential/center_crop/All:output:0sequential/center_crop/sub:z:0 sequential/center_crop/sub_1:z:0sequential/rescaling/add:z:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *<
else_branch-R+
)sequential_center_crop_cond_false_1107319*0
output_shapes
:€€€€€€€€€аа*;
then_branch,R*
(sequential_center_crop_cond_true_1107318Т
$sequential/center_crop/cond/IdentityIdentity$sequential/center_crop/cond:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа°
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype0и
sequential/conv2d/Conv2DConv2D-sequential/center_crop/cond/Identity:output:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА*
paddingVALID*
strides
Ч
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ґ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёАњ
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:€€€€€€€€€ooА*
ksize
*
paddingVALID*
strides
¶
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:Аа*
dtype0ж
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmа*
paddingVALID*
strides
Ы
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0Ї
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmаБ
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€mmа√
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:€€€€€€€€€66а*
ksize
*
paddingVALID*
strides
•
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:аp*
dtype0з
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44p*
paddingVALID*
strides
Ъ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype0є
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44pА
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€44p¬
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€p*
ksize
*
paddingVALID*
strides
•
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:pР*
dtype0и
sequential/conv2d_3/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Р*
paddingVALID*
strides
Ы
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Ї
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€РБ
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Р√
"sequential/max_pooling2d_3/MaxPoolMaxPool&sequential/conv2d_3/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Р*
ksize
*
paddingVALID*
strides
¶
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:РР*
dtype0и
sequential/conv2d_4/Conv2DConv2D+sequential/max_pooling2d_3/MaxPool:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

Р*
paddingVALID*
strides
Ы
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Ї
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

РБ
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Р√
"sequential/max_pooling2d_4/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Р*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  ®
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_4/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р
sequential/dropout/IdentityIdentity#sequential/flatten/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€РЧ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0©
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€p
IdentityIdentity!sequential/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€р
NoOpNoOp^sequential/center_crop/cond)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аМ: : : : : : : : : : : : 2:
sequential/center_crop/condsequential/center_crop/cond2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:Z V
1
_output_shapes
:€€€€€€€€€аМ
!
_user_specified_name	input_1
ш
†
*__inference_conv2d_2_layer_call_fn_1110040

inputs"
unknown:аp
	unknown_0:p
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€44p*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1108078w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€44p`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€66а: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€66а
 
_user_specified_nameinputs
ь
Ґ
*__inference_conv2d_4_layer_call_fn_1110100

inputs#
unknown:РР
	unknown_0:	Р
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1108114x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

Р`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€Р: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
ь
Ґ
*__inference_conv2d_1_layer_call_fn_1110010

inputs#
unknown:Аа
	unknown_0:	а
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€mmа*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1108060x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€mmа`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€ooА: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€ooА
 
_user_specified_nameinputs
д
P
4__inference_random_translation_layer_call_fn_1109578

inputs
identityЌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *X
fSRQ
O__inference_random_translation_layer_call_and_return_conditional_losses_1108171j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Ц
d
H__inference_random_flip_layer_call_and_return_conditional_losses_1108166

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
–X
»
center_crop_cond_true_11092201
-center_crop_cond_truediv_cast_center_crop_sub5
1center_crop_cond_truediv_1_cast_center_crop_sub_1=
9center_crop_cond_crop_to_bounding_box_shape_rescaling_add
center_crop_cond_identityИҐ3center_crop/cond/crop_to_bounding_box/Assert/AssertҐ5center_crop/cond/crop_to_bounding_box/Assert_1/AssertҐ5center_crop/cond/crop_to_bounding_box/Assert_2/AssertҐ5center_crop/cond/crop_to_bounding_box/Assert_3/Assert\
center_crop/cond/truediv/yConst*
_output_shapes
: *
dtype0*
value	B :Д
center_crop/cond/truediv/CastCast-center_crop_cond_truediv_cast_center_crop_sub*

DstT0*

SrcT0*
_output_shapes
: |
center_crop/cond/truediv/Cast_1Cast#center_crop/cond/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: М
center_crop/cond/truedivRealDiv!center_crop/cond/truediv/Cast:y:0#center_crop/cond/truediv/Cast_1:y:0*
T0*
_output_shapes
: k
center_crop/cond/CastCastcenter_crop/cond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: ^
center_crop/cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
center_crop/cond/truediv_1/CastCast1center_crop_cond_truediv_1_cast_center_crop_sub_1*

DstT0*

SrcT0*
_output_shapes
: А
!center_crop/cond/truediv_1/Cast_1Cast%center_crop/cond/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: Т
center_crop/cond/truediv_1RealDiv#center_crop/cond/truediv_1/Cast:y:0%center_crop/cond/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: o
center_crop/cond/Cast_1Castcenter_crop/cond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Ґ
+center_crop/cond/crop_to_bounding_box/ShapeShape9center_crop_cond_crop_to_bounding_box_shape_rescaling_add*
T0*
_output_shapes
::нѕЯ
-center_crop/cond/crop_to_bounding_box/unstackUnpack4center_crop/cond/crop_to_bounding_box/Shape:output:0*
T0*
_output_shapes

: : : : *	
numv
4center_crop/cond/crop_to_bounding_box/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : њ
2center_crop/cond/crop_to_bounding_box/GreaterEqualGreaterEqualcenter_crop/cond/Cast_1:y:0=center_crop/cond/crop_to_bounding_box/GreaterEqual/y:output:0*
T0*
_output_shapes
: Н
2center_crop/cond/crop_to_bounding_box/Assert/ConstConst*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.Х
:center_crop/cond/crop_to_bounding_box/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.Д
3center_crop/cond/crop_to_bounding_box/Assert/AssertAssert6center_crop/cond/crop_to_bounding_box/GreaterEqual:z:0Ccenter_crop/cond/crop_to_bounding_box/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 x
6center_crop/cond/crop_to_bounding_box/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : Ѕ
4center_crop/cond/crop_to_bounding_box/GreaterEqual_1GreaterEqualcenter_crop/cond/Cast:y:0?center_crop/cond/crop_to_bounding_box/GreaterEqual_1/y:output:0*
T0*
_output_shapes
: Р
4center_crop/cond/crop_to_bounding_box/Assert_1/ConstConst*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.Ш
<center_crop/cond/crop_to_bounding_box/Assert_1/Assert/data_0Const*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.ј
5center_crop/cond/crop_to_bounding_box/Assert_1/AssertAssert8center_crop/cond/crop_to_bounding_box/GreaterEqual_1:z:0Ecenter_crop/cond/crop_to_bounding_box/Assert_1/Assert/data_0:output:04^center_crop/cond/crop_to_bounding_box/Assert/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 n
+center_crop/cond/crop_to_bounding_box/add/xConst*
_output_shapes
: *
dtype0*
value
B :а¶
)center_crop/cond/crop_to_bounding_box/addAddV24center_crop/cond/crop_to_bounding_box/add/x:output:0center_crop/cond/Cast_1:y:0*
T0*
_output_shapes
: t
1center_crop/cond/crop_to_bounding_box/LessEqual/yConst*
_output_shapes
: *
dtype0*
value
B :М»
/center_crop/cond/crop_to_bounding_box/LessEqual	LessEqual-center_crop/cond/crop_to_bounding_box/add:z:0:center_crop/cond/crop_to_bounding_box/LessEqual/y:output:0*
T0*
_output_shapes
: Ц
4center_crop/cond/crop_to_bounding_box/Assert_2/ConstConst*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.Ю
<center_crop/cond/crop_to_bounding_box/Assert_2/Assert/data_0Const*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.љ
5center_crop/cond/crop_to_bounding_box/Assert_2/AssertAssert3center_crop/cond/crop_to_bounding_box/LessEqual:z:0Ecenter_crop/cond/crop_to_bounding_box/Assert_2/Assert/data_0:output:06^center_crop/cond/crop_to_bounding_box/Assert_1/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 p
-center_crop/cond/crop_to_bounding_box/add_1/xConst*
_output_shapes
: *
dtype0*
value
B :а®
+center_crop/cond/crop_to_bounding_box/add_1AddV26center_crop/cond/crop_to_bounding_box/add_1/x:output:0center_crop/cond/Cast:y:0*
T0*
_output_shapes
: v
3center_crop/cond/crop_to_bounding_box/LessEqual_1/yConst*
_output_shapes
: *
dtype0*
value
B :аќ
1center_crop/cond/crop_to_bounding_box/LessEqual_1	LessEqual/center_crop/cond/crop_to_bounding_box/add_1:z:0<center_crop/cond/crop_to_bounding_box/LessEqual_1/y:output:0*
T0*
_output_shapes
: Ч
4center_crop/cond/crop_to_bounding_box/Assert_3/ConstConst*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.Я
<center_crop/cond/crop_to_bounding_box/Assert_3/Assert/data_0Const*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.њ
5center_crop/cond/crop_to_bounding_box/Assert_3/AssertAssert5center_crop/cond/crop_to_bounding_box/LessEqual_1:z:0Ecenter_crop/cond/crop_to_bounding_box/Assert_3/Assert/data_0:output:06^center_crop/cond/crop_to_bounding_box/Assert_2/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 ї
8center_crop/cond/crop_to_bounding_box/control_dependencyIdentity9center_crop_cond_crop_to_bounding_box_shape_rescaling_add4^center_crop/cond/crop_to_bounding_box/Assert/Assert6^center_crop/cond/crop_to_bounding_box/Assert_1/Assert6^center_crop/cond/crop_to_bounding_box/Assert_2/Assert6^center_crop/cond/crop_to_bounding_box/Assert_3/Assert*
T0* 
_class
loc:@rescaling/add*1
_output_shapes
:€€€€€€€€€аМo
-center_crop/cond/crop_to_bounding_box/stack/0Const*
_output_shapes
: *
dtype0*
value	B : o
-center_crop/cond/crop_to_bounding_box/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Й
+center_crop/cond/crop_to_bounding_box/stackPack6center_crop/cond/crop_to_bounding_box/stack/0:output:0center_crop/cond/Cast:y:0center_crop/cond/Cast_1:y:06center_crop/cond/crop_to_bounding_box/stack/3:output:0*
N*
T0*
_output_shapes
:ђ
-center_crop/cond/crop_to_bounding_box/Shape_1ShapeAcenter_crop/cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕГ
9center_crop/cond/crop_to_bounding_box/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;center_crop/cond/crop_to_bounding_box/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;center_crop/cond/crop_to_bounding_box/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
3center_crop/cond/crop_to_bounding_box/strided_sliceStridedSlice6center_crop/cond/crop_to_bounding_box/Shape_1:output:0Bcenter_crop/cond/crop_to_bounding_box/strided_slice/stack:output:0Dcenter_crop/cond/crop_to_bounding_box/strided_slice/stack_1:output:0Dcenter_crop/cond/crop_to_bounding_box/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskђ
-center_crop/cond/crop_to_bounding_box/Shape_2ShapeAcenter_crop/cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕЕ
;center_crop/cond/crop_to_bounding_box/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=center_crop/cond/crop_to_bounding_box/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=center_crop/cond/crop_to_bounding_box/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
5center_crop/cond/crop_to_bounding_box/strided_slice_1StridedSlice6center_crop/cond/crop_to_bounding_box/Shape_2:output:0Dcenter_crop/cond/crop_to_bounding_box/strided_slice_1/stack:output:0Fcenter_crop/cond/crop_to_bounding_box/strided_slice_1/stack_1:output:0Fcenter_crop/cond/crop_to_bounding_box/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/center_crop/cond/crop_to_bounding_box/stack_1/1Const*
_output_shapes
: *
dtype0*
value
B :аr
/center_crop/cond/crop_to_bounding_box/stack_1/2Const*
_output_shapes
: *
dtype0*
value
B :а’
-center_crop/cond/crop_to_bounding_box/stack_1Pack<center_crop/cond/crop_to_bounding_box/strided_slice:output:08center_crop/cond/crop_to_bounding_box/stack_1/1:output:08center_crop/cond/crop_to_bounding_box/stack_1/2:output:0>center_crop/cond/crop_to_bounding_box/strided_slice_1:output:0*
N*
T0*
_output_shapes
:Ѓ
+center_crop/cond/crop_to_bounding_box/SliceSliceAcenter_crop/cond/crop_to_bounding_box/control_dependency:output:04center_crop/cond/crop_to_bounding_box/stack:output:06center_crop/cond/crop_to_bounding_box/stack_1:output:0*
Index0*
T0*1
_output_shapes
:€€€€€€€€€ааѓ
center_crop/cond/IdentityIdentity4center_crop/cond/crop_to_bounding_box/Slice:output:0^center_crop/cond/NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааµ
center_crop/cond/NoOpNoOp4^center_crop/cond/crop_to_bounding_box/Assert/Assert6^center_crop/cond/crop_to_bounding_box/Assert_1/Assert6^center_crop/cond/crop_to_bounding_box/Assert_2/Assert6^center_crop/cond/crop_to_bounding_box/Assert_3/Assert*"
_acd_function_control_output(*
_output_shapes
 "?
center_crop_cond_identity"center_crop/cond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ2j
3center_crop/cond/crop_to_bounding_box/Assert/Assert3center_crop/cond/crop_to_bounding_box/Assert/Assert2n
5center_crop/cond/crop_to_bounding_box/Assert_1/Assert5center_crop/cond/crop_to_bounding_box/Assert_1/Assert2n
5center_crop/cond/crop_to_bounding_box/Assert_2/Assert5center_crop/cond/crop_to_bounding_box/Assert_2/Assert2n
5center_crop/cond/crop_to_bounding_box/Assert_3/Assert5center_crop/cond/crop_to_bounding_box/Assert_3/Assert:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
С
Б
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1108060

inputs:
conv2d_readvariableop_resource:Аа.
biasadd_readvariableop_resource:	а
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:Аа*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmа*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmаY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€mmаj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€mmаw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€ooА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€ooА
 
_user_specified_nameinputs
њ
№
,__inference_sequential_layer_call_fn_1108675

inputs"
unknown:А
	unknown_0:	А%
	unknown_1:Аа
	unknown_2:	а$
	unknown_3:аp
	unknown_4:p$
	unknown_5:pР
	unknown_6:	Р%
	unknown_7:РР
	unknown_8:	Р
	unknown_9:	Р

unknown_10:
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1108359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аМ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
√
M
1__inference_max_pooling2d_2_layer_call_fn_1110056

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1107507Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Жє
ш'
 __inference__traced_save_1110474
file_prefix?
$read_disablecopyonread_conv2d_kernel:А3
$read_1_disablecopyonread_conv2d_bias:	АD
(read_2_disablecopyonread_conv2d_1_kernel:Аа5
&read_3_disablecopyonread_conv2d_1_bias:	аC
(read_4_disablecopyonread_conv2d_2_kernel:аp4
&read_5_disablecopyonread_conv2d_2_bias:pC
(read_6_disablecopyonread_conv2d_3_kernel:pР5
&read_7_disablecopyonread_conv2d_3_bias:	РD
(read_8_disablecopyonread_conv2d_4_kernel:РР5
&read_9_disablecopyonread_conv2d_4_bias:	Р9
&read_10_disablecopyonread_dense_kernel:	Р2
$read_11_disablecopyonread_dense_bias:-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: I
.read_14_disablecopyonread_adam_m_conv2d_kernel:АI
.read_15_disablecopyonread_adam_v_conv2d_kernel:А;
,read_16_disablecopyonread_adam_m_conv2d_bias:	А;
,read_17_disablecopyonread_adam_v_conv2d_bias:	АL
0read_18_disablecopyonread_adam_m_conv2d_1_kernel:АаL
0read_19_disablecopyonread_adam_v_conv2d_1_kernel:Аа=
.read_20_disablecopyonread_adam_m_conv2d_1_bias:	а=
.read_21_disablecopyonread_adam_v_conv2d_1_bias:	аK
0read_22_disablecopyonread_adam_m_conv2d_2_kernel:аpK
0read_23_disablecopyonread_adam_v_conv2d_2_kernel:аp<
.read_24_disablecopyonread_adam_m_conv2d_2_bias:p<
.read_25_disablecopyonread_adam_v_conv2d_2_bias:pK
0read_26_disablecopyonread_adam_m_conv2d_3_kernel:pРK
0read_27_disablecopyonread_adam_v_conv2d_3_kernel:pР=
.read_28_disablecopyonread_adam_m_conv2d_3_bias:	Р=
.read_29_disablecopyonread_adam_v_conv2d_3_bias:	РL
0read_30_disablecopyonread_adam_m_conv2d_4_kernel:РРL
0read_31_disablecopyonread_adam_v_conv2d_4_kernel:РР=
.read_32_disablecopyonread_adam_m_conv2d_4_bias:	Р=
.read_33_disablecopyonread_adam_v_conv2d_4_bias:	Р@
-read_34_disablecopyonread_adam_m_dense_kernel:	Р@
-read_35_disablecopyonread_adam_v_dense_kernel:	Р9
+read_36_disablecopyonread_adam_m_dense_bias:9
+read_37_disablecopyonread_adam_v_dense_bias:<
.read_38_disablecopyonread_random_flip_statevar:	C
5read_39_disablecopyonread_random_translation_statevar:	<
.read_40_disablecopyonread_random_zoom_statevar:	)
read_41_disablecopyonread_total: )
read_42_disablecopyonread_count: 
savev2_const
identity_87ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 ©
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А*
dtype0r
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:Аj

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*'
_output_shapes
:Аx
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 °
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:А|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:Аа*
dtype0w

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:Ааm

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*(
_output_shapes
:Ааz
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 £
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:а`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:а|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ±
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:аp*
dtype0v

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:аpl

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*'
_output_shapes
:аpz
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:p*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:pa
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:p|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ±
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:pР*
dtype0w
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:pРn
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:pРz
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 £
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_conv2d_4_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:РР*
dtype0x
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:РРo
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*(
_output_shapes
:РРz
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 £
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_conv2d_4_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:Р{
Read_10/DisableCopyOnReadDisableCopyOnRead&read_10_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 ©
Read_10/ReadVariableOpReadVariableOp&read_10_disablecopyonread_dense_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	Рy
Read_11/DisableCopyOnReadDisableCopyOnRead$read_11_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_11/ReadVariableOpReadVariableOp$read_11_disablecopyonread_dense_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_14/DisableCopyOnReadDisableCopyOnRead.read_14_disablecopyonread_adam_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 є
Read_14/ReadVariableOpReadVariableOp.read_14_disablecopyonread_adam_m_conv2d_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А*
dtype0x
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:Аn
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*'
_output_shapes
:АГ
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 є
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_v_conv2d_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А*
dtype0x
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:Аn
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*'
_output_shapes
:АБ
Read_16/DisableCopyOnReadDisableCopyOnRead,read_16_disablecopyonread_adam_m_conv2d_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_16/ReadVariableOpReadVariableOp,read_16_disablecopyonread_adam_m_conv2d_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:АБ
Read_17/DisableCopyOnReadDisableCopyOnRead,read_17_disablecopyonread_adam_v_conv2d_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_17/ReadVariableOpReadVariableOp,read_17_disablecopyonread_adam_v_conv2d_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_18/DisableCopyOnReadDisableCopyOnRead0read_18_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_18/ReadVariableOpReadVariableOp0read_18_disablecopyonread_adam_m_conv2d_1_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:Аа*
dtype0y
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:Ааo
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*(
_output_shapes
:АаЕ
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_v_conv2d_1_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:Аа*
dtype0y
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:Ааo
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*(
_output_shapes
:АаГ
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 ≠
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_m_conv2d_1_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:аb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:аГ
Read_21/DisableCopyOnReadDisableCopyOnRead.read_21_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 ≠
Read_21/ReadVariableOpReadVariableOp.read_21_disablecopyonread_adam_v_conv2d_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:аb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:аЕ
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ї
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_conv2d_2_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:аp*
dtype0x
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:аpn
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*'
_output_shapes
:аpЕ
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ї
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_conv2d_2_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:аp*
dtype0x
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:аpn
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*'
_output_shapes
:аpГ
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 ђ
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_conv2d_2_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:p*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:pa
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:pГ
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 ђ
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_conv2d_2_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:p*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:pa
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:pЕ
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ї
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adam_m_conv2d_3_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:pР*
dtype0x
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:pРn
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*'
_output_shapes
:pРЕ
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ї
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_v_conv2d_3_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:pР*
dtype0x
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:pРn
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*'
_output_shapes
:pРГ
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 ≠
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_m_conv2d_3_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:РГ
Read_29/DisableCopyOnReadDisableCopyOnRead.read_29_disablecopyonread_adam_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 ≠
Read_29/ReadVariableOpReadVariableOp.read_29_disablecopyonread_adam_v_conv2d_3_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:РЕ
Read_30/DisableCopyOnReadDisableCopyOnRead0read_30_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_30/ReadVariableOpReadVariableOp0read_30_disablecopyonread_adam_m_conv2d_4_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:РР*
dtype0y
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:РРo
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*(
_output_shapes
:РРЕ
Read_31/DisableCopyOnReadDisableCopyOnRead0read_31_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_31/ReadVariableOpReadVariableOp0read_31_disablecopyonread_adam_v_conv2d_4_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:РР*
dtype0y
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:РРo
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*(
_output_shapes
:РРГ
Read_32/DisableCopyOnReadDisableCopyOnRead.read_32_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 ≠
Read_32/ReadVariableOpReadVariableOp.read_32_disablecopyonread_adam_m_conv2d_4_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:РГ
Read_33/DisableCopyOnReadDisableCopyOnRead.read_33_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 ≠
Read_33/ReadVariableOpReadVariableOp.read_33_disablecopyonread_adam_v_conv2d_4_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:РВ
Read_34/DisableCopyOnReadDisableCopyOnRead-read_34_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 ∞
Read_34/ReadVariableOpReadVariableOp-read_34_disablecopyonread_adam_m_dense_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рf
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	РВ
Read_35/DisableCopyOnReadDisableCopyOnRead-read_35_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 ∞
Read_35/ReadVariableOpReadVariableOp-read_35_disablecopyonread_adam_v_dense_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рf
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	РА
Read_36/DisableCopyOnReadDisableCopyOnRead+read_36_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 ©
Read_36/ReadVariableOpReadVariableOp+read_36_disablecopyonread_adam_m_dense_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:А
Read_37/DisableCopyOnReadDisableCopyOnRead+read_37_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 ©
Read_37/ReadVariableOpReadVariableOp+read_37_disablecopyonread_adam_v_dense_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_38/DisableCopyOnReadDisableCopyOnRead.read_38_disablecopyonread_random_flip_statevar"/device:CPU:0*
_output_shapes
 ђ
Read_38/ReadVariableOpReadVariableOp.read_38_disablecopyonread_random_flip_statevar^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0	*
_output_shapes
:К
Read_39/DisableCopyOnReadDisableCopyOnRead5read_39_disablecopyonread_random_translation_statevar"/device:CPU:0*
_output_shapes
 ≥
Read_39/ReadVariableOpReadVariableOp5read_39_disablecopyonread_random_translation_statevar^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0	*
_output_shapes
:Г
Read_40/DisableCopyOnReadDisableCopyOnRead.read_40_disablecopyonread_random_zoom_statevar"/device:CPU:0*
_output_shapes
 ђ
Read_40/ReadVariableOpReadVariableOp.read_40_disablecopyonread_random_zoom_statevar^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0	*
_output_shapes
:t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_total^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_42/DisableCopyOnReadDisableCopyOnReadread_42_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_42/ReadVariableOpReadVariableOpread_42_disablecopyonread_count^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: ђ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*’
valueЋB»,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEBJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH≈
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ∞	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *:
dtypes0
.2,				Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_86Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_87IdentityIdentity_86:output:0^NoOp*
T0*
_output_shapes
: ™
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_87Identity_87:output:0*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:,

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ћ
}
-__inference_random_flip_layer_call_fn_1109446

inputs
unknown:	
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_flip_layer_call_and_return_conditional_losses_1107652y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аМ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Љ
Q
$__inference__update_step_xla_1109434
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	Р: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	Р
"
_user_specified_name
gradient
≠
L
$__inference__update_step_xla_1109409
gradient
variable:p*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:p: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:p
"
_user_specified_name
gradient
џ
b
D__inference_dropout_layer_call_and_return_conditional_losses_1108215

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€Р\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€Р:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1107495

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
n
H__inference_center_crop_layer_call_and_return_conditional_losses_1108029

inputs
identityИҐcondI
ShapeShapeinputs*
T0*
_output_shapes
::нѕf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskH
sub/yConst*
_output_shapes
: *
dtype0*
value
B :аS
subSubstrided_slice:output:0sub/y:output:0*
T0*
_output_shapes
: h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskJ
sub_1/yConst*
_output_shapes
: *
dtype0*
value
B :аY
sub_1Substrided_slice_1:output:0sub_1/y:output:0*
T0*
_output_shapes
: P
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterEqualGreaterEqualsub:z:0GreaterEqual/y:output:0*
T0*
_output_shapes
: R
GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : e
GreaterEqual_1GreaterEqual	sub_1:z:0GreaterEqual_1/y:output:0*
T0*
_output_shapes
: g
Rank/packedPackGreaterEqual:z:0GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:F
RankConst*
_output_shapes
: *
dtype0*
value	B :M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :e
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
:e
	All/inputPackGreaterEqual:z:0GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:F
AllAllAll/input:output:0range:output:0*
_output_shapes
: ’
condIfAll:output:0sub:z:0	sub_1:z:0inputs*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *%
else_branchR
cond_false_1107920*0
output_shapes
:€€€€€€€€€аа*$
then_branchR
cond_true_1107919d
cond/IdentityIdentitycond:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааo
IdentityIdentitycond/Identity:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааM
NoOpNoOp^cond*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ2
condcond:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
 
Х
'__inference_dense_layer_call_fn_1110168

inputs
unknown:	Р
	unknown_0:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1108153o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Р: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
√
M
1__inference_max_pooling2d_1_layer_call_fn_1110026

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1107495Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
÷
I
-__inference_random_zoom_layer_call_fn_1109710

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_zoom_layer_call_and_return_conditional_losses_1108176j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
щґ
√
G__inference_sequential_layer_call_and_return_conditional_losses_1109189

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	I
;random_translation_stateful_uniform_rngreadandskip_resource:	B
4random_zoom_stateful_uniform_rngreadandskip_resource:	@
%conv2d_conv2d_readvariableop_resource:А5
&conv2d_biasadd_readvariableop_resource:	АC
'conv2d_1_conv2d_readvariableop_resource:Аа7
(conv2d_1_biasadd_readvariableop_resource:	аB
'conv2d_2_conv2d_readvariableop_resource:аp6
(conv2d_2_biasadd_readvariableop_resource:pB
'conv2d_3_conv2d_readvariableop_resource:pР7
(conv2d_3_biasadd_readvariableop_resource:	РC
'conv2d_4_conv2d_readvariableop_resource:РР7
(conv2d_4_biasadd_readvariableop_resource:	Р7
$dense_matmul_readvariableop_resource:	Р3
%dense_biasadd_readvariableop_resource:
identityИҐcenter_crop/condҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐ4random_flip/stateful_uniform_full_int/RngReadAndSkipҐ6random_flip/stateful_uniform_full_int_1/RngReadAndSkipҐ2random_translation/stateful_uniform/RngReadAndSkipҐ4random_translation/stateful_uniform_1/RngReadAndSkipҐ+random_zoom/stateful_uniform/RngReadAndSkipu
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: њ
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: n
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: К
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Г
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskІ
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Е
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ќ
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	`
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ь
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:p
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≥
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask™
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€аМЄ
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::нѕК
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: М
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≤
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask∆
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:О
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    О
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?»
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::§
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ї
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€Щ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ґ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€Я
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€~
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :К
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Й
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€і
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Е
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:П
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМм
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМw
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ж
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€х
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМг
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€аМw
-random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≈
,random_flip/stateful_uniform_full_int_1/ProdProd6random_flip/stateful_uniform_full_int_1/shape:output:06random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: p
.random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Э
.random_flip/stateful_uniform_full_int_1/Cast_1Cast5random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: «
6random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource7random_flip/stateful_uniform_full_int_1/Cast/x:output:02random_flip/stateful_uniform_full_int_1/Cast_1:y:05^random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Е
;random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
5random_flip/stateful_uniform_full_int_1/strided_sliceStridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЂ
/random_flip/stateful_uniform_full_int_1/BitcastBitcast>random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0З
=random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
7random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ѓ
1random_flip/stateful_uniform_full_int_1/Bitcast_1Bitcast@random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :„
'random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV26random_flip/stateful_uniform_full_int_1/shape:output:0:random_flip/stateful_uniform_full_int_1/Bitcast_1:output:08random_flip/stateful_uniform_full_int_1/Bitcast:output:04random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R Ґ
random_flip/stack_1Pack0random_flip/stateful_uniform_full_int_1:output:0!random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:r
!random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      љ
random_flip/strided_slice_1StridedSlicerandom_flip/stack_1:output:0*random_flip/strided_slice_1/stack:output:0,random_flip/strided_slice_1/stack_1:output:0,random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask€
<random_flip/stateless_random_flip_up_down/control_dependencyIdentity4random_flip/stateless_random_flip_left_right/add:z:0*
T0*C
_class9
75loc:@random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€аМ≤
/random_flip/stateless_random_flip_up_down/ShapeShapeErandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::нѕЗ
=random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:£
7random_flip/stateless_random_flip_up_down/strided_sliceStridedSlice8random_flip/stateless_random_flip_up_down/Shape:output:0Frandom_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskј
Hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Л
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?«
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip/strided_slice_1:output:0* 
_output_shapes
::°
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ђ
[random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Qrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0erandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0irandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€Р
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/subSubOrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ≠
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMuldrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ц
Brandom_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€{
9random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ы
7random_flip/stateless_random_flip_up_down/Reshape/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:А
1random_flip/stateless_random_flip_up_down/ReshapeReshapeFrandom_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0@random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ѓ
/random_flip/stateless_random_flip_up_down/RoundRound:random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€В
8random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ж
3random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0Arandom_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМг
-random_flip/stateless_random_flip_up_down/mulMul3random_flip/stateless_random_flip_up_down/Round:y:0<random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМt
/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ё
-random_flip/stateless_random_flip_up_down/subSub8random_flip/stateless_random_flip_up_down/sub/x:output:03random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€м
/random_flip/stateless_random_flip_up_down/mul_1Mul1random_flip/stateless_random_flip_up_down/sub:z:0Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМЏ
-random_flip/stateless_random_flip_up_down/addAddV21random_flip/stateless_random_flip_up_down/mul:z:03random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€аМЗ
random_translation/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::нѕp
&random_translation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(random_translation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(random_translation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 random_translation/strided_sliceStridedSlice!random_translation/Shape:output:0/random_translation/strided_slice/stack:output:01random_translation/strided_slice/stack_1:output:01random_translation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
(random_translation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€}
*random_translation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€t
*random_translation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
"random_translation/strided_slice_1StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_1/stack:output:03random_translation/strided_slice_1/stack_1:output:03random_translation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_translation/CastCast+random_translation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: {
(random_translation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€}
*random_translation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€t
*random_translation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
"random_translation/strided_slice_2StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_2/stack:output:03random_translation/strided_slice_2/stack_1:output:03random_translation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
random_translation/Cast_1Cast+random_translation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+random_translation/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ј
)random_translation/stateful_uniform/shapePack)random_translation/strided_slice:output:04random_translation/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:l
'random_translation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *   Аl
'random_translation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    s
)random_translation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: є
(random_translation/stateful_uniform/ProdProd2random_translation/stateful_uniform/shape:output:02random_translation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: l
*random_translation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Х
*random_translation/stateful_uniform/Cast_1Cast1random_translation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: В
2random_translation/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource3random_translation/stateful_uniform/Cast/x:output:0.random_translation/stateful_uniform/Cast_1:y:0*
_output_shapes
:Б
7random_translation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Г
9random_translation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Г
9random_translation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
1random_translation/stateful_uniform/strided_sliceStridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0@random_translation/stateful_uniform/strided_slice/stack:output:0Brandom_translation/stateful_uniform/strided_slice/stack_1:output:0Brandom_translation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+random_translation/stateful_uniform/BitcastBitcast:random_translation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Г
9random_translation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Е
;random_translation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;random_translation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Б
3random_translation/stateful_uniform/strided_slice_1StridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0Brandom_translation/stateful_uniform/strided_slice_1/stack:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:І
-random_translation/stateful_uniform/Bitcast_1Bitcast<random_translation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0В
@random_translation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :о
<random_translation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_translation/stateful_uniform/shape:output:06random_translation/stateful_uniform/Bitcast_1:output:04random_translation/stateful_uniform/Bitcast:output:0Irandom_translation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€≥
'random_translation/stateful_uniform/subSub0random_translation/stateful_uniform/max:output:00random_translation/stateful_uniform/min:output:0*
T0*
_output_shapes
: ‘
'random_translation/stateful_uniform/mulMulErandom_translation/stateful_uniform/StatelessRandomUniformV2:output:0+random_translation/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€љ
#random_translation/stateful_uniformAddV2+random_translation/stateful_uniform/mul:z:00random_translation/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€Х
random_translation/mulMul'random_translation/stateful_uniform:z:0random_translation/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€o
-random_translation/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ƒ
+random_translation/stateful_uniform_1/shapePack)random_translation/strided_slice:output:06random_translation/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:n
)random_translation/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћLЊn
)random_translation/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>u
+random_translation/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: њ
*random_translation/stateful_uniform_1/ProdProd4random_translation/stateful_uniform_1/shape:output:04random_translation/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: n
,random_translation/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
,random_translation/stateful_uniform_1/Cast_1Cast3random_translation/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: љ
4random_translation/stateful_uniform_1/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource5random_translation/stateful_uniform_1/Cast/x:output:00random_translation/stateful_uniform_1/Cast_1:y:03^random_translation/stateful_uniform/RngReadAndSkip*
_output_shapes
:Г
9random_translation/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;random_translation/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;random_translation/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
3random_translation/stateful_uniform_1/strided_sliceStridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Brandom_translation/stateful_uniform_1/strided_slice/stack:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_1:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskІ
-random_translation/stateful_uniform_1/BitcastBitcast<random_translation/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Е
;random_translation/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=random_translation/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_translation/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
5random_translation/stateful_uniform_1/strided_slice_1StridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Drandom_translation/stateful_uniform_1/strided_slice_1/stack:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_1:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
/random_translation/stateful_uniform_1/Bitcast_1Bitcast>random_translation/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Д
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ш
>random_translation/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV24random_translation/stateful_uniform_1/shape:output:08random_translation/stateful_uniform_1/Bitcast_1:output:06random_translation/stateful_uniform_1/Bitcast:output:0Krandom_translation/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€є
)random_translation/stateful_uniform_1/subSub2random_translation/stateful_uniform_1/max:output:02random_translation/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: Џ
)random_translation/stateful_uniform_1/mulMulGrandom_translation/stateful_uniform_1/StatelessRandomUniformV2:output:0-random_translation/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€√
%random_translation/stateful_uniform_1AddV2-random_translation/stateful_uniform_1/mul:z:02random_translation/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ы
random_translation/mul_1Mul)random_translation/stateful_uniform_1:z:0random_translation/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€`
random_translation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :√
random_translation/concatConcatV2random_translation/mul_1:z:0random_translation/mul:z:0'random_translation/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Л
+random_translation/translation_matrix/ShapeShape"random_translation/concat:output:0*
T0*
_output_shapes
::нѕГ
9random_translation/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;random_translation/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;random_translation/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
3random_translation/translation_matrix/strided_sliceStridedSlice4random_translation/translation_matrix/Shape:output:0Brandom_translation/translation_matrix/strided_slice/stack:output:0Drandom_translation/translation_matrix/strided_slice/stack_1:output:0Drandom_translation/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3random_translation/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :г
1random_translation/translation_matrix/ones/packedPack<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:u
0random_translation/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?џ
*random_translation/translation_matrix/onesFill:random_translation/translation_matrix/ones/packed:output:09random_translation/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
4random_translation/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :е
2random_translation/translation_matrix/zeros/packedPack<random_translation/translation_matrix/strided_slice:output:0=random_translation/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1random_translation/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
+random_translation/translation_matrix/zerosFill;random_translation/translation_matrix/zeros/packed:output:0:random_translation/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Р
;random_translation/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Т
=random_translation/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Т
=random_translation/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ќ
5random_translation/translation_matrix/strided_slice_1StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_1/stack:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskҐ
)random_translation/translation_matrix/NegNeg>random_translation/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
6random_translation/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :й
4random_translation/translation_matrix/zeros_1/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:x
3random_translation/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    д
-random_translation/translation_matrix/zeros_1Fill=random_translation/translation_matrix/zeros_1/packed:output:0<random_translation/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€w
5random_translation/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :з
3random_translation/translation_matrix/ones_1/packedPack<random_translation/translation_matrix/strided_slice:output:0>random_translation/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:w
2random_translation/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
,random_translation/translation_matrix/ones_1Fill<random_translation/translation_matrix/ones_1/packed:output:0;random_translation/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Р
;random_translation/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Т
=random_translation/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Т
=random_translation/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ќ
5random_translation/translation_matrix/strided_slice_2StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_2/stack:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask§
+random_translation/translation_matrix/Neg_1Neg>random_translation/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
6random_translation/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :й
4random_translation/translation_matrix/zeros_2/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:x
3random_translation/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    д
-random_translation/translation_matrix/zeros_2Fill=random_translation/translation_matrix/zeros_2/packed:output:0<random_translation/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€s
1random_translation/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
,random_translation/translation_matrix/concatConcatV23random_translation/translation_matrix/ones:output:04random_translation/translation_matrix/zeros:output:0-random_translation/translation_matrix/Neg:y:06random_translation/translation_matrix/zeros_1:output:05random_translation/translation_matrix/ones_1:output:0/random_translation/translation_matrix/Neg_1:y:06random_translation/translation_matrix/zeros_2:output:0:random_translation/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€С
"random_translation/transform/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::нѕz
0random_translation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2random_translation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2random_translation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
*random_translation/transform/strided_sliceStridedSlice+random_translation/transform/Shape:output:09random_translation/transform/strided_slice/stack:output:0;random_translation/transform/strided_slice/stack_1:output:0;random_translation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:l
'random_translation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Ы
7random_translation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV31random_flip/stateless_random_flip_up_down/add:z:05random_translation/translation_matrix/concat:output:03random_translation/transform/strided_slice:output:00random_translation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аМ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARЫ
random_zoom/ShapeShapeLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::нѕi
random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
random_zoom/strided_sliceStridedSlicerandom_zoom/Shape:output:0(random_zoom/strided_slice/stack:output:0*random_zoom/strided_slice/stack_1:output:0*random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
!random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€v
#random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€m
#random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
random_zoom/strided_slice_1StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_1/stack:output:0,random_zoom/strided_slice_1/stack_1:output:0,random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
random_zoom/CastCast$random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: t
!random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€v
#random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€m
#random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
random_zoom/strided_slice_2StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_2/stack:output:0,random_zoom/strided_slice_2/stack_1:output:0,random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
random_zoom/Cast_1Cast$random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: f
$random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ђ
"random_zoom/stateful_uniform/shapePack"random_zoom/strided_slice:output:0-random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:e
 random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?e
 random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?l
"random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
!random_zoom/stateful_uniform/ProdProd+random_zoom/stateful_uniform/shape:output:0+random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: e
#random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :З
#random_zoom/stateful_uniform/Cast_1Cast*random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ж
+random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip4random_zoom_stateful_uniform_rngreadandskip_resource,random_zoom/stateful_uniform/Cast/x:output:0'random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:z
0random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
*random_zoom/stateful_uniform/strided_sliceStridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:09random_zoom/stateful_uniform/strided_slice/stack:output:0;random_zoom/stateful_uniform/strided_slice/stack_1:output:0;random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskХ
$random_zoom/stateful_uniform/BitcastBitcast3random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0|
2random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
,random_zoom/stateful_uniform/strided_slice_1StridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:0;random_zoom/stateful_uniform/strided_slice_1/stack:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Щ
&random_zoom/stateful_uniform/Bitcast_1Bitcast5random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0{
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ћ
5random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2+random_zoom/stateful_uniform/shape:output:0/random_zoom/stateful_uniform/Bitcast_1:output:0-random_zoom/stateful_uniform/Bitcast:output:0Brandom_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€Ю
 random_zoom/stateful_uniform/subSub)random_zoom/stateful_uniform/max:output:0)random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: њ
 random_zoom/stateful_uniform/mulMul>random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0$random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€®
random_zoom/stateful_uniformAddV2$random_zoom/stateful_uniform/mul:z:0)random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :њ
random_zoom/concatConcatV2 random_zoom/stateful_uniform:z:0 random_zoom/stateful_uniform:z:0 random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€v
random_zoom/zoom_matrix/ShapeShaperandom_zoom/concat:output:0*
T0*
_output_shapes
::нѕu
+random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:…
%random_zoom/zoom_matrix/strided_sliceStridedSlice&random_zoom/zoom_matrix/Shape:output:04random_zoom/zoom_matrix/strided_slice/stack:output:06random_zoom/zoom_matrix/strided_slice/stack_1:output:06random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
random_zoom/zoom_matrix/subSubrandom_zoom/Cast_1:y:0&random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: f
!random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
random_zoom/zoom_matrix/truedivRealDivrandom_zoom/zoom_matrix/sub:z:0*random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: В
-random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Д
/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         О
'random_zoom/zoom_matrix/strided_slice_1StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_1/stack:output:08random_zoom/zoom_matrix/strided_slice_1/stack_1:output:08random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskd
random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≤
random_zoom/zoom_matrix/sub_1Sub(random_zoom/zoom_matrix/sub_1/x:output:00random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
random_zoom/zoom_matrix/mulMul#random_zoom/zoom_matrix/truediv:z:0!random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d
random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
random_zoom/zoom_matrix/sub_2Subrandom_zoom/Cast:y:0(random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: h
#random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
!random_zoom/zoom_matrix/truediv_1RealDiv!random_zoom/zoom_matrix/sub_2:z:0,random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: В
-random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         О
'random_zoom/zoom_matrix/strided_slice_2StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_2/stack:output:08random_zoom/zoom_matrix/strided_slice_2/stack_1:output:08random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskd
random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≤
random_zoom/zoom_matrix/sub_3Sub(random_zoom/zoom_matrix/sub_3/x:output:00random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€†
random_zoom/zoom_matrix/mul_1Mul%random_zoom/zoom_matrix/truediv_1:z:0!random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€В
-random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Д
/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         О
'random_zoom/zoom_matrix/strided_slice_3StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_3/stack:output:08random_zoom/zoom_matrix/strided_slice_3/stack_1:output:08random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskh
&random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ї
$random_zoom/zoom_matrix/zeros/packedPack.random_zoom/zoom_matrix/strided_slice:output:0/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
random_zoom/zoom_matrix/zerosFill-random_zoom/zoom_matrix/zeros/packed:output:0,random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
(random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :њ
&random_zoom/zoom_matrix/zeros_1/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
random_zoom/zoom_matrix/zeros_1Fill/random_zoom/zoom_matrix/zeros_1/packed:output:0.random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€В
-random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         О
'random_zoom/zoom_matrix/strided_slice_4StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_4/stack:output:08random_zoom/zoom_matrix/strided_slice_4/stack_1:output:08random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :њ
&random_zoom/zoom_matrix/zeros_2/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
random_zoom/zoom_matrix/zeros_2Fill/random_zoom/zoom_matrix/zeros_2/packed:output:0.random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€e
#random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
random_zoom/zoom_matrix/concatConcatV20random_zoom/zoom_matrix/strided_slice_3:output:0&random_zoom/zoom_matrix/zeros:output:0random_zoom/zoom_matrix/mul:z:0(random_zoom/zoom_matrix/zeros_1:output:00random_zoom/zoom_matrix/strided_slice_4:output:0!random_zoom/zoom_matrix/mul_1:z:0(random_zoom/zoom_matrix/zeros_2:output:0,random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€•
random_zoom/transform/ShapeShapeLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::нѕs
)random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
#random_zoom/transform/strided_sliceStridedSlice$random_zoom/transform/Shape:output:02random_zoom/transform/strided_slice/stack:output:04random_zoom/transform/strided_slice/stack_1:output:04random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:e
 random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    У
0random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Lrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0'random_zoom/zoom_matrix/concat:output:0,random_zoom/transform/strided_slice:output:0)random_zoom/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аМ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARU
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ≤
rescaling/mulMulErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ`
center_crop/ShapeShaperescaling/add:z:0*
T0*
_output_shapes
::нѕr
center_crop/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€t
!center_crop/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€k
!center_crop/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
center_crop/strided_sliceStridedSlicecenter_crop/Shape:output:0(center_crop/strided_slice/stack:output:0*center_crop/strided_slice/stack_1:output:0*center_crop/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
center_crop/sub/yConst*
_output_shapes
: *
dtype0*
value
B :аw
center_crop/subSub"center_crop/strided_slice:output:0center_crop/sub/y:output:0*
T0*
_output_shapes
: t
!center_crop/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€v
#center_crop/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€m
#center_crop/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
center_crop/strided_slice_1StridedSlicecenter_crop/Shape:output:0*center_crop/strided_slice_1/stack:output:0,center_crop/strided_slice_1/stack_1:output:0,center_crop/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
center_crop/sub_1/yConst*
_output_shapes
: *
dtype0*
value
B :а}
center_crop/sub_1Sub$center_crop/strided_slice_1:output:0center_crop/sub_1/y:output:0*
T0*
_output_shapes
: \
center_crop/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : Г
center_crop/GreaterEqualGreaterEqualcenter_crop/sub:z:0#center_crop/GreaterEqual/y:output:0*
T0*
_output_shapes
: ^
center_crop/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : Й
center_crop/GreaterEqual_1GreaterEqualcenter_crop/sub_1:z:0%center_crop/GreaterEqual_1/y:output:0*
T0*
_output_shapes
: Л
center_crop/Rank/packedPackcenter_crop/GreaterEqual:z:0center_crop/GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:R
center_crop/RankConst*
_output_shapes
: *
dtype0*
value	B :Y
center_crop/range/startConst*
_output_shapes
: *
dtype0*
value	B : Y
center_crop/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Х
center_crop/rangeRange center_crop/range/start:output:0center_crop/Rank:output:0 center_crop/range/delta:output:0*
_output_shapes
:Й
center_crop/All/inputPackcenter_crop/GreaterEqual:z:0center_crop/GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:j
center_crop/AllAllcenter_crop/All/input:output:0center_crop/range:output:0*
_output_shapes
: ®
center_crop/condIfcenter_crop/All:output:0center_crop/sub:z:0center_crop/sub_1:z:0rescaling/add:z:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *1
else_branch"R 
center_crop_cond_false_1109024*0
output_shapes
:€€€€€€€€€аа*0
then_branch!R
center_crop_cond_true_1109023|
center_crop/cond/IdentityIdentitycenter_crop/cond:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЛ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype0«
conv2d/Conv2DConv2D"center_crop/cond/Identity:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА*
paddingVALID*
strides
Б
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёАi
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА©
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:€€€€€€€€€ooА*
ksize
*
paddingVALID*
strides
Р
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:Аа*
dtype0≈
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmа*
paddingVALID*
strides
Е
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0Щ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmаk
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€mmа≠
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:€€€€€€€€€66а*
ksize
*
paddingVALID*
strides
П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:аp*
dtype0∆
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44p*
paddingVALID*
strides
Д
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype0Ш
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44pj
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€44pђ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€p*
ksize
*
paddingVALID*
strides
П
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:pР*
dtype0«
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Р*
paddingVALID*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Рk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Р≠
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Р*
ksize
*
paddingVALID*
strides
Р
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:РР*
dtype0«
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

Р*
paddingVALID*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Щ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

Рk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Р≠
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Р*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  З
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€РZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @З
dropout/dropout/MulMulflatten/Reshape:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Рk
dropout/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
::нѕЭ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?њ
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    і
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€РБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Р
dense/MatMulMatMul!dropout/dropout/SelectV2:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€л
NoOpNoOp^center_crop/cond^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip7^random_flip/stateful_uniform_full_int_1/RngReadAndSkip3^random_translation/stateful_uniform/RngReadAndSkip5^random_translation/stateful_uniform_1/RngReadAndSkip,^random_zoom/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€аМ: : : : : : : : : : : : : : : 2$
center_crop/condcenter_crop/cond2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2p
6random_flip/stateful_uniform_full_int_1/RngReadAndSkip6random_flip/stateful_uniform_full_int_1/RngReadAndSkip2h
2random_translation/stateful_uniform/RngReadAndSkip2random_translation/stateful_uniform/RngReadAndSkip2l
4random_translation/stateful_uniform_1/RngReadAndSkip4random_translation/stateful_uniform_1/RngReadAndSkip2Z
+random_zoom/stateful_uniform/RngReadAndSkip+random_zoom/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
К:
с
)sequential_center_crop_cond_false_1107319+
'sequential_center_crop_cond_placeholder-
)sequential_center_crop_cond_placeholder_1>
:sequential_center_crop_cond_shape_sequential_rescaling_add(
$sequential_center_crop_cond_identityЩ
!sequential/center_crop/cond/ShapeShape:sequential_center_crop_cond_shape_sequential_rescaling_add*
T0*
_output_shapes
::нѕВ
/sequential/center_crop/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€Д
1sequential/center_crop/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€{
1sequential/center_crop/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)sequential/center_crop/cond/strided_sliceStridedSlice*sequential/center_crop/cond/Shape:output:08sequential/center_crop/cond/strided_slice/stack:output:0:sequential/center_crop/cond/strided_slice/stack_1:output:0:sequential/center_crop/cond/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskД
1sequential/center_crop/cond/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Ж
3sequential/center_crop/cond/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€}
3sequential/center_crop/cond/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
+sequential/center_crop/cond/strided_slice_1StridedSlice*sequential/center_crop/cond/Shape:output:0:sequential/center_crop/cond/strided_slice_1/stack:output:0<sequential/center_crop/cond/strided_slice_1/stack_1:output:0<sequential/center_crop/cond/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
!sequential/center_crop/cond/mul/yConst*
_output_shapes
: *
dtype0*
value
B :а©
sequential/center_crop/cond/mulMul4sequential/center_crop/cond/strided_slice_1:output:0*sequential/center_crop/cond/mul/y:output:0*
T0*
_output_shapes
: }
 sequential/center_crop/cond/CastCast#sequential/center_crop/cond/mul:z:0*

DstT0*

SrcT0*
_output_shapes
: j
%sequential/center_crop/cond/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `C•
#sequential/center_crop/cond/truedivRealDiv$sequential/center_crop/cond/Cast:y:0.sequential/center_crop/cond/truediv/y:output:0*
T0*
_output_shapes
: Г
"sequential/center_crop/cond/Cast_1Cast'sequential/center_crop/cond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: f
#sequential/center_crop/cond/mul_1/yConst*
_output_shapes
: *
dtype0*
value
B :аЂ
!sequential/center_crop/cond/mul_1Mul2sequential/center_crop/cond/strided_slice:output:0,sequential/center_crop/cond/mul_1/y:output:0*
T0*
_output_shapes
: Б
"sequential/center_crop/cond/Cast_2Cast%sequential/center_crop/cond/mul_1:z:0*

DstT0*

SrcT0*
_output_shapes
: l
'sequential/center_crop/cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `CЂ
%sequential/center_crop/cond/truediv_1RealDiv&sequential/center_crop/cond/Cast_2:y:00sequential/center_crop/cond/truediv_1/y:output:0*
T0*
_output_shapes
: Е
"sequential/center_crop/cond/Cast_3Cast)sequential/center_crop/cond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#sequential/center_crop/cond/MinimumMinimum2sequential/center_crop/cond/strided_slice:output:0&sequential/center_crop/cond/Cast_1:y:0*
T0*
_output_shapes
: ѓ
%sequential/center_crop/cond/Minimum_1Minimum4sequential/center_crop/cond/strided_slice_1:output:0&sequential/center_crop/cond/Cast_3:y:0*
T0*
_output_shapes
: §
sequential/center_crop/cond/subSub2sequential/center_crop/cond/strided_slice:output:0'sequential/center_crop/cond/Minimum:z:0*
T0*
_output_shapes
: 
"sequential/center_crop/cond/Cast_4Cast#sequential/center_crop/cond/sub:z:0*

DstT0*

SrcT0*
_output_shapes
: l
'sequential/center_crop/cond/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ђ
%sequential/center_crop/cond/truediv_2RealDiv&sequential/center_crop/cond/Cast_4:y:00sequential/center_crop/cond/truediv_2/y:output:0*
T0*
_output_shapes
: Е
"sequential/center_crop/cond/Cast_5Cast)sequential/center_crop/cond/truediv_2:z:0*

DstT0*

SrcT0*
_output_shapes
: ™
!sequential/center_crop/cond/sub_1Sub4sequential/center_crop/cond/strided_slice_1:output:0)sequential/center_crop/cond/Minimum_1:z:0*
T0*
_output_shapes
: Б
"sequential/center_crop/cond/Cast_6Cast%sequential/center_crop/cond/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: l
'sequential/center_crop/cond/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ђ
%sequential/center_crop/cond/truediv_3RealDiv&sequential/center_crop/cond/Cast_6:y:00sequential/center_crop/cond/truediv_3/y:output:0*
T0*
_output_shapes
: Е
"sequential/center_crop/cond/Cast_7Cast)sequential/center_crop/cond/truediv_3:z:0*

DstT0*

SrcT0*
_output_shapes
: e
#sequential/center_crop/cond/stack/0Const*
_output_shapes
: *
dtype0*
value	B : e
#sequential/center_crop/cond/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Г
!sequential/center_crop/cond/stackPack,sequential/center_crop/cond/stack/0:output:0&sequential/center_crop/cond/Cast_5:y:0&sequential/center_crop/cond/Cast_7:y:0,sequential/center_crop/cond/stack/3:output:0*
N*
T0*
_output_shapes
:p
%sequential/center_crop/cond/stack_1/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€p
%sequential/center_crop/cond/stack_1/3Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Н
#sequential/center_crop/cond/stack_1Pack.sequential/center_crop/cond/stack_1/0:output:0'sequential/center_crop/cond/Minimum:z:0)sequential/center_crop/cond/Minimum_1:z:0.sequential/center_crop/cond/stack_1/3:output:0*
N*
T0*
_output_shapes
:Т
!sequential/center_crop/cond/SliceSlice:sequential_center_crop_cond_shape_sequential_rescaling_add*sequential/center_crop/cond/stack:output:0,sequential/center_crop/cond/stack_1:output:0*
Index0*
T0*:
_output_shapes(
&:$€€€€€€€€€аа€€€€€€€€€x
'sequential/center_crop/cond/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ч
1sequential/center_crop/cond/resize/ResizeBilinearResizeBilinear*sequential/center_crop/cond/Slice:output:00sequential/center_crop/cond/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(∞
$sequential/center_crop/cond/IdentityIdentityBsequential/center_crop/cond/resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"U
$sequential_center_crop_cond_identity-sequential/center_crop/cond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
Ш
ю
C__inference_conv2d_layer_call_and_return_conditional_losses_1109991

inputs9
conv2d_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype0Э
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёАl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:€€€€€€€€€ёёАw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
З1
ѓ
center_crop_cond_false_1109221 
center_crop_cond_placeholder"
center_crop_cond_placeholder_1(
$center_crop_cond_shape_rescaling_add
center_crop_cond_identityx
center_crop/cond/ShapeShape$center_crop_cond_shape_rescaling_add*
T0*
_output_shapes
::нѕw
$center_crop/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€y
&center_crop/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€p
&center_crop/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
center_crop/cond/strided_sliceStridedSlicecenter_crop/cond/Shape:output:0-center_crop/cond/strided_slice/stack:output:0/center_crop/cond/strided_slice/stack_1:output:0/center_crop/cond/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
&center_crop/cond/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€{
(center_crop/cond/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€r
(center_crop/cond/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
 center_crop/cond/strided_slice_1StridedSlicecenter_crop/cond/Shape:output:0/center_crop/cond/strided_slice_1/stack:output:01center_crop/cond/strided_slice_1/stack_1:output:01center_crop/cond/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
center_crop/cond/mul/yConst*
_output_shapes
: *
dtype0*
value
B :аИ
center_crop/cond/mulMul)center_crop/cond/strided_slice_1:output:0center_crop/cond/mul/y:output:0*
T0*
_output_shapes
: g
center_crop/cond/CastCastcenter_crop/cond/mul:z:0*

DstT0*

SrcT0*
_output_shapes
: _
center_crop/cond/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `CД
center_crop/cond/truedivRealDivcenter_crop/cond/Cast:y:0#center_crop/cond/truediv/y:output:0*
T0*
_output_shapes
: m
center_crop/cond/Cast_1Castcenter_crop/cond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: [
center_crop/cond/mul_1/yConst*
_output_shapes
: *
dtype0*
value
B :аК
center_crop/cond/mul_1Mul'center_crop/cond/strided_slice:output:0!center_crop/cond/mul_1/y:output:0*
T0*
_output_shapes
: k
center_crop/cond/Cast_2Castcenter_crop/cond/mul_1:z:0*

DstT0*

SrcT0*
_output_shapes
: a
center_crop/cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `CК
center_crop/cond/truediv_1RealDivcenter_crop/cond/Cast_2:y:0%center_crop/cond/truediv_1/y:output:0*
T0*
_output_shapes
: o
center_crop/cond/Cast_3Castcenter_crop/cond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: К
center_crop/cond/MinimumMinimum'center_crop/cond/strided_slice:output:0center_crop/cond/Cast_1:y:0*
T0*
_output_shapes
: О
center_crop/cond/Minimum_1Minimum)center_crop/cond/strided_slice_1:output:0center_crop/cond/Cast_3:y:0*
T0*
_output_shapes
: Г
center_crop/cond/subSub'center_crop/cond/strided_slice:output:0center_crop/cond/Minimum:z:0*
T0*
_output_shapes
: i
center_crop/cond/Cast_4Castcenter_crop/cond/sub:z:0*

DstT0*

SrcT0*
_output_shapes
: a
center_crop/cond/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @К
center_crop/cond/truediv_2RealDivcenter_crop/cond/Cast_4:y:0%center_crop/cond/truediv_2/y:output:0*
T0*
_output_shapes
: o
center_crop/cond/Cast_5Castcenter_crop/cond/truediv_2:z:0*

DstT0*

SrcT0*
_output_shapes
: Й
center_crop/cond/sub_1Sub)center_crop/cond/strided_slice_1:output:0center_crop/cond/Minimum_1:z:0*
T0*
_output_shapes
: k
center_crop/cond/Cast_6Castcenter_crop/cond/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: a
center_crop/cond/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @К
center_crop/cond/truediv_3RealDivcenter_crop/cond/Cast_6:y:0%center_crop/cond/truediv_3/y:output:0*
T0*
_output_shapes
: o
center_crop/cond/Cast_7Castcenter_crop/cond/truediv_3:z:0*

DstT0*

SrcT0*
_output_shapes
: Z
center_crop/cond/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Z
center_crop/cond/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ћ
center_crop/cond/stackPack!center_crop/cond/stack/0:output:0center_crop/cond/Cast_5:y:0center_crop/cond/Cast_7:y:0!center_crop/cond/stack/3:output:0*
N*
T0*
_output_shapes
:e
center_crop/cond/stack_1/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€e
center_crop/cond/stack_1/3Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
center_crop/cond/stack_1Pack#center_crop/cond/stack_1/0:output:0center_crop/cond/Minimum:z:0center_crop/cond/Minimum_1:z:0#center_crop/cond/stack_1/3:output:0*
N*
T0*
_output_shapes
:џ
center_crop/cond/SliceSlice$center_crop_cond_shape_rescaling_addcenter_crop/cond/stack:output:0!center_crop/cond/stack_1:output:0*
Index0*
T0*:
_output_shapes(
&:$€€€€€€€€€аа€€€€€€€€€m
center_crop/cond/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ÷
&center_crop/cond/resize/ResizeBilinearResizeBilinearcenter_crop/cond/Slice:output:0%center_crop/cond/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(Ъ
center_crop/cond/IdentityIdentity7center_crop/cond/resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"?
center_crop_cond_identity"center_crop/cond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
»
`
D__inference_flatten_layer_call_and_return_conditional_losses_1110132

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€РY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€Р:X T
0
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
√
M
1__inference_max_pooling2d_4_layer_call_fn_1110116

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1107531Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Н
А
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1108096

inputs9
conv2d_readvariableop_resource:pР.
biasadd_readvariableop_resource:	Р
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:pР*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Р*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€РY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Рj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Рw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€p: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€p
 
_user_specified_nameinputs
Н
А
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1110081

inputs9
conv2d_readvariableop_resource:pР.
biasadd_readvariableop_resource:	Р
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:pР*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Р*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€РY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Рj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Рw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€p: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€p
 
_user_specified_nameinputs
»
`
D__inference_flatten_layer_call_and_return_conditional_losses_1108127

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€РY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€Р:X T
0
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
Я

c
D__inference_dropout_layer_call_and_return_conditional_losses_1108141

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕН
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€РT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Рb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€Р:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
э
Я
(__inference_conv2d_layer_call_fn_1109980

inputs"
unknown:А
	unknown_0:	А
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ёёА*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_1108042z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:€€€€€€€€€ёёА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ь
b
)__inference_dropout_layer_call_fn_1110137

inputs
identityИҐStatefulPartitionedCall…
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1108141p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Р`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€Р22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
÷
I
-__inference_random_flip_layer_call_fn_1109451

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_flip_layer_call_and_return_conditional_losses_1108166j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
µn
Ѕ
H__inference_random_zoom_layer_call_and_return_conditional_losses_1109812

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::нѕi
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€S
transform/ShapeShapeinputs*
T0*
_output_shapes
::нѕg
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аМ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аМh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
√
M
1__inference_max_pooling2d_3_layer_call_fn_1110086

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1107519Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
„
Z
$__inference__update_step_xla_1109394
gradient$
variable:Аа*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:Аа: *
	_noinline(:($
"
_user_specified_name
variable:R N
(
_output_shapes
:Аа
"
_user_specified_name
gradient
≠
L
$__inference__update_step_xla_1109439
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
…	
ф
B__inference_dense_layer_call_and_return_conditional_losses_1110178

inputs1
matmul_readvariableop_resource:	Р-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
®
f
-__inference_center_crop_layer_call_fn_1109834

inputs
identityИҐStatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_center_crop_layer_call_and_return_conditional_losses_1108029y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1107507

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
—J
љ
cond_true_1107919
cond_truediv_cast_sub
cond_truediv_1_cast_sub_1*
&cond_crop_to_bounding_box_shape_inputs
cond_identityИҐ'cond/crop_to_bounding_box/Assert/AssertҐ)cond/crop_to_bounding_box/Assert_1/AssertҐ)cond/crop_to_bounding_box/Assert_2/AssertҐ)cond/crop_to_bounding_box/Assert_3/AssertP
cond/truediv/yConst*
_output_shapes
: *
dtype0*
value	B :`
cond/truediv/CastCastcond_truediv_cast_sub*

DstT0*

SrcT0*
_output_shapes
: d
cond/truediv/Cast_1Castcond/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: h
cond/truedivRealDivcond/truediv/Cast:y:0cond/truediv/Cast_1:y:0*
T0*
_output_shapes
: S
	cond/CastCastcond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: R
cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
value	B :f
cond/truediv_1/CastCastcond_truediv_1_cast_sub_1*

DstT0*

SrcT0*
_output_shapes
: h
cond/truediv_1/Cast_1Castcond/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: n
cond/truediv_1RealDivcond/truediv_1/Cast:y:0cond/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: W
cond/Cast_1Castcond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Г
cond/crop_to_bounding_box/ShapeShape&cond_crop_to_bounding_box_shape_inputs*
T0*
_output_shapes
::нѕЗ
!cond/crop_to_bounding_box/unstackUnpack(cond/crop_to_bounding_box/Shape:output:0*
T0*
_output_shapes

: : : : *	
numj
(cond/crop_to_bounding_box/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : Ы
&cond/crop_to_bounding_box/GreaterEqualGreaterEqualcond/Cast_1:y:01cond/crop_to_bounding_box/GreaterEqual/y:output:0*
T0*
_output_shapes
: Б
&cond/crop_to_bounding_box/Assert/ConstConst*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.Й
.cond/crop_to_bounding_box/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.а
'cond/crop_to_bounding_box/Assert/AssertAssert*cond/crop_to_bounding_box/GreaterEqual:z:07cond/crop_to_bounding_box/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 l
*cond/crop_to_bounding_box/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : Э
(cond/crop_to_bounding_box/GreaterEqual_1GreaterEqualcond/Cast:y:03cond/crop_to_bounding_box/GreaterEqual_1/y:output:0*
T0*
_output_shapes
: Д
(cond/crop_to_bounding_box/Assert_1/ConstConst*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.М
0cond/crop_to_bounding_box/Assert_1/Assert/data_0Const*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.Р
)cond/crop_to_bounding_box/Assert_1/AssertAssert,cond/crop_to_bounding_box/GreaterEqual_1:z:09cond/crop_to_bounding_box/Assert_1/Assert/data_0:output:0(^cond/crop_to_bounding_box/Assert/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 b
cond/crop_to_bounding_box/add/xConst*
_output_shapes
: *
dtype0*
value
B :аВ
cond/crop_to_bounding_box/addAddV2(cond/crop_to_bounding_box/add/x:output:0cond/Cast_1:y:0*
T0*
_output_shapes
: h
%cond/crop_to_bounding_box/LessEqual/yConst*
_output_shapes
: *
dtype0*
value
B :М§
#cond/crop_to_bounding_box/LessEqual	LessEqual!cond/crop_to_bounding_box/add:z:0.cond/crop_to_bounding_box/LessEqual/y:output:0*
T0*
_output_shapes
: К
(cond/crop_to_bounding_box/Assert_2/ConstConst*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.Т
0cond/crop_to_bounding_box/Assert_2/Assert/data_0Const*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.Н
)cond/crop_to_bounding_box/Assert_2/AssertAssert'cond/crop_to_bounding_box/LessEqual:z:09cond/crop_to_bounding_box/Assert_2/Assert/data_0:output:0*^cond/crop_to_bounding_box/Assert_1/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 d
!cond/crop_to_bounding_box/add_1/xConst*
_output_shapes
: *
dtype0*
value
B :аД
cond/crop_to_bounding_box/add_1AddV2*cond/crop_to_bounding_box/add_1/x:output:0cond/Cast:y:0*
T0*
_output_shapes
: j
'cond/crop_to_bounding_box/LessEqual_1/yConst*
_output_shapes
: *
dtype0*
value
B :а™
%cond/crop_to_bounding_box/LessEqual_1	LessEqual#cond/crop_to_bounding_box/add_1:z:00cond/crop_to_bounding_box/LessEqual_1/y:output:0*
T0*
_output_shapes
: Л
(cond/crop_to_bounding_box/Assert_3/ConstConst*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.У
0cond/crop_to_bounding_box/Assert_3/Assert/data_0Const*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.П
)cond/crop_to_bounding_box/Assert_3/AssertAssert)cond/crop_to_bounding_box/LessEqual_1:z:09cond/crop_to_bounding_box/Assert_3/Assert/data_0:output:0*^cond/crop_to_bounding_box/Assert_2/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 е
,cond/crop_to_bounding_box/control_dependencyIdentity&cond_crop_to_bounding_box_shape_inputs(^cond/crop_to_bounding_box/Assert/Assert*^cond/crop_to_bounding_box/Assert_1/Assert*^cond/crop_to_bounding_box/Assert_2/Assert*^cond/crop_to_bounding_box/Assert_3/Assert*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€аМc
!cond/crop_to_bounding_box/stack/0Const*
_output_shapes
: *
dtype0*
value	B : c
!cond/crop_to_bounding_box/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ќ
cond/crop_to_bounding_box/stackPack*cond/crop_to_bounding_box/stack/0:output:0cond/Cast:y:0cond/Cast_1:y:0*cond/crop_to_bounding_box/stack/3:output:0*
N*
T0*
_output_shapes
:Ф
!cond/crop_to_bounding_box/Shape_1Shape5cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕw
-cond/crop_to_bounding_box/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/cond/crop_to_bounding_box/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/cond/crop_to_bounding_box/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
'cond/crop_to_bounding_box/strided_sliceStridedSlice*cond/crop_to_bounding_box/Shape_1:output:06cond/crop_to_bounding_box/strided_slice/stack:output:08cond/crop_to_bounding_box/strided_slice/stack_1:output:08cond/crop_to_bounding_box/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskФ
!cond/crop_to_bounding_box/Shape_2Shape5cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕy
/cond/crop_to_bounding_box/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1cond/crop_to_bounding_box/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1cond/crop_to_bounding_box/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)cond/crop_to_bounding_box/strided_slice_1StridedSlice*cond/crop_to_bounding_box/Shape_2:output:08cond/crop_to_bounding_box/strided_slice_1/stack:output:0:cond/crop_to_bounding_box/strided_slice_1/stack_1:output:0:cond/crop_to_bounding_box/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#cond/crop_to_bounding_box/stack_1/1Const*
_output_shapes
: *
dtype0*
value
B :аf
#cond/crop_to_bounding_box/stack_1/2Const*
_output_shapes
: *
dtype0*
value
B :аЩ
!cond/crop_to_bounding_box/stack_1Pack0cond/crop_to_bounding_box/strided_slice:output:0,cond/crop_to_bounding_box/stack_1/1:output:0,cond/crop_to_bounding_box/stack_1/2:output:02cond/crop_to_bounding_box/strided_slice_1:output:0*
N*
T0*
_output_shapes
:ю
cond/crop_to_bounding_box/SliceSlice5cond/crop_to_bounding_box/control_dependency:output:0(cond/crop_to_bounding_box/stack:output:0*cond/crop_to_bounding_box/stack_1:output:0*
Index0*
T0*1
_output_shapes
:€€€€€€€€€ааЛ
cond/IdentityIdentity(cond/crop_to_bounding_box/Slice:output:0
^cond/NoOp*
T0*1
_output_shapes
:€€€€€€€€€аащ
	cond/NoOpNoOp(^cond/crop_to_bounding_box/Assert/Assert*^cond/crop_to_bounding_box/Assert_1/Assert*^cond/crop_to_bounding_box/Assert_2/Assert*^cond/crop_to_bounding_box/Assert_3/Assert*"
_acd_function_control_output(*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ2R
'cond/crop_to_bounding_box/Assert/Assert'cond/crop_to_bounding_box/Assert/Assert2V
)cond/crop_to_bounding_box/Assert_1/Assert)cond/crop_to_bounding_box/Assert_1/Assert2V
)cond/crop_to_bounding_box/Assert_2/Assert)cond/crop_to_bounding_box/Assert_2/Assert2V
)cond/crop_to_bounding_box/Assert_3/Assert)cond/crop_to_bounding_box/Assert_3/Assert:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
ЂM
І
G__inference_sequential_layer_call_and_return_conditional_losses_1108160
input_1!
random_flip_1107653:	(
random_translation_1107773:	!
random_zoom_1107879:	)
conv2d_1108043:А
conv2d_1108045:	А,
conv2d_1_1108061:Аа
conv2d_1_1108063:	а+
conv2d_2_1108079:аp
conv2d_2_1108081:p+
conv2d_3_1108097:pР
conv2d_3_1108099:	Р,
conv2d_4_1108115:РР
conv2d_4_1108117:	Р 
dense_1108154:	Р
dense_1108156:
identityИҐ#center_crop/StatefulPartitionedCallҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ conv2d_3/StatefulPartitionedCallҐ conv2d_4/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ#random_flip/StatefulPartitionedCallҐ*random_translation/StatefulPartitionedCallҐ#random_zoom/StatefulPartitionedCallщ
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinput_1random_flip_1107653*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_flip_layer_call_and_return_conditional_losses_1107652≥
*random_translation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_translation_1107773*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *X
fSRQ
O__inference_random_translation_layer_call_and_return_conditional_losses_1107772•
#random_zoom/StatefulPartitionedCallStatefulPartitionedCall3random_translation/StatefulPartitionedCall:output:0random_zoom_1107879*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_zoom_layer_call_and_return_conditional_losses_1107878ф
rescaling/PartitionedCallPartitionedCall,random_zoom/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_1107890ю
#center_crop/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_center_crop_layer_call_and_return_conditional_losses_1108029•
conv2d/StatefulPartitionedCallStatefulPartitionedCall,center_crop/StatefulPartitionedCall:output:0conv2d_1108043conv2d_1108045*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ёёА*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_1108042ц
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€ooА* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1107483•
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1108061conv2d_1_1108063*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€mmа*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1108060ь
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€66а* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1107495¶
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1108079conv2d_2_1108081*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€44p*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1108078ы
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€p* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1107507І
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_1108097conv2d_3_1108099*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1108096ь
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1107519І
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_1108115conv2d_4_1108117*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1108114ь
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1107531г
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1108127С
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0$^center_crop/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1108141Т
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1108154dense_1108156*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1108153u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€‘
NoOpNoOp$^center_crop/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall$^random_flip/StatefulPartitionedCall+^random_translation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€аМ: : : : : : : : : : : : : : : 2J
#center_crop/StatefulPartitionedCall#center_crop/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2X
*random_translation/StatefulPartitionedCall*random_translation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аМ
!
_user_specified_name	input_1
эВ
м
O__inference_random_translation_layer_call_and_return_conditional_losses_1109694

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipҐ!stateful_uniform_1/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *   АY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    `
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€\
mulMulstateful_uniform:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Л
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћLЊ[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ё
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ґ
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskБ
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Е
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Щ
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€А
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: °
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
mul_1Mulstateful_uniform_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2	mul_1:z:0mul:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€e
translation_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::нѕp
&translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 translation_matrix/strided_sliceStridedSlice!translation_matrix/Shape:output:0/translation_matrix/strided_slice/stack:output:01translation_matrix/strided_slice/stack_1:output:01translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :™
translation_matrix/ones/packedPack)translation_matrix/strided_slice:output:0)translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:b
translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ґ
translation_matrix/onesFill'translation_matrix/ones/packed:output:0&translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
!translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ђ
translation_matrix/zeros/packedPack)translation_matrix/strided_slice:output:0*translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    •
translation_matrix/zerosFill(translation_matrix/zeros/packed:output:0'translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€}
(translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
*translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         о
"translation_matrix/strided_slice_1StridedSliceconcat:output:01translation_matrix/strided_slice_1/stack:output:03translation_matrix/strided_slice_1/stack_1:output:03translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
translation_matrix/NegNeg+translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€e
#translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :∞
!translation_matrix/zeros_1/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
translation_matrix/zeros_1Fill*translation_matrix/zeros_1/packed:output:0)translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
"translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
 translation_matrix/ones_1/packedPack)translation_matrix/strided_slice:output:0+translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?®
translation_matrix/ones_1Fill)translation_matrix/ones_1/packed:output:0(translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€}
(translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         о
"translation_matrix/strided_slice_2StridedSliceconcat:output:01translation_matrix/strided_slice_2/stack:output:03translation_matrix/strided_slice_2/stack_1:output:03translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
translation_matrix/Neg_1Neg+translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€e
#translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :∞
!translation_matrix/zeros_2/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
translation_matrix/zeros_2Fill*translation_matrix/zeros_2/packed:output:0)translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
translation_matrix/concatConcatV2 translation_matrix/ones:output:0!translation_matrix/zeros:output:0translation_matrix/Neg:y:0#translation_matrix/zeros_1:output:0"translation_matrix/ones_1:output:0translation_matrix/Neg_1:y:0#translation_matrix/zeros_2:output:0'translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€S
transform/ShapeShapeinputs*
T0*
_output_shapes
::нѕg
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    §
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs"translation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аМ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аММ
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
∞
M
$__inference__update_step_xla_1109389
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:А
"
_user_specified_name
gradient
ш
b
F__inference_rescaling_layer_call_and_return_conditional_losses_1107890

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
з`
Ё	
G__inference_sequential_layer_call_and_return_conditional_losses_1109379

inputs@
%conv2d_conv2d_readvariableop_resource:А5
&conv2d_biasadd_readvariableop_resource:	АC
'conv2d_1_conv2d_readvariableop_resource:Аа7
(conv2d_1_biasadd_readvariableop_resource:	аB
'conv2d_2_conv2d_readvariableop_resource:аp6
(conv2d_2_biasadd_readvariableop_resource:pB
'conv2d_3_conv2d_readvariableop_resource:pР7
(conv2d_3_biasadd_readvariableop_resource:	РC
'conv2d_4_conv2d_readvariableop_resource:РР7
(conv2d_4_biasadd_readvariableop_resource:	Р7
$dense_matmul_readvariableop_resource:	Р3
%dense_biasadd_readvariableop_resource:
identityИҐcenter_crop/condҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpU
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    s
rescaling/mulMulinputsrescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ`
center_crop/ShapeShaperescaling/add:z:0*
T0*
_output_shapes
::нѕr
center_crop/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€t
!center_crop/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€k
!center_crop/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
center_crop/strided_sliceStridedSlicecenter_crop/Shape:output:0(center_crop/strided_slice/stack:output:0*center_crop/strided_slice/stack_1:output:0*center_crop/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
center_crop/sub/yConst*
_output_shapes
: *
dtype0*
value
B :аw
center_crop/subSub"center_crop/strided_slice:output:0center_crop/sub/y:output:0*
T0*
_output_shapes
: t
!center_crop/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€v
#center_crop/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€m
#center_crop/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
center_crop/strided_slice_1StridedSlicecenter_crop/Shape:output:0*center_crop/strided_slice_1/stack:output:0,center_crop/strided_slice_1/stack_1:output:0,center_crop/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
center_crop/sub_1/yConst*
_output_shapes
: *
dtype0*
value
B :а}
center_crop/sub_1Sub$center_crop/strided_slice_1:output:0center_crop/sub_1/y:output:0*
T0*
_output_shapes
: \
center_crop/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : Г
center_crop/GreaterEqualGreaterEqualcenter_crop/sub:z:0#center_crop/GreaterEqual/y:output:0*
T0*
_output_shapes
: ^
center_crop/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : Й
center_crop/GreaterEqual_1GreaterEqualcenter_crop/sub_1:z:0%center_crop/GreaterEqual_1/y:output:0*
T0*
_output_shapes
: Л
center_crop/Rank/packedPackcenter_crop/GreaterEqual:z:0center_crop/GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:R
center_crop/RankConst*
_output_shapes
: *
dtype0*
value	B :Y
center_crop/range/startConst*
_output_shapes
: *
dtype0*
value	B : Y
center_crop/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Х
center_crop/rangeRange center_crop/range/start:output:0center_crop/Rank:output:0 center_crop/range/delta:output:0*
_output_shapes
:Й
center_crop/All/inputPackcenter_crop/GreaterEqual:z:0center_crop/GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:j
center_crop/AllAllcenter_crop/All/input:output:0center_crop/range:output:0*
_output_shapes
: ®
center_crop/condIfcenter_crop/All:output:0center_crop/sub:z:0center_crop/sub_1:z:0rescaling/add:z:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *1
else_branch"R 
center_crop_cond_false_1109221*0
output_shapes
:€€€€€€€€€аа*0
then_branch!R
center_crop_cond_true_1109220|
center_crop/cond/IdentityIdentitycenter_crop/cond:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЛ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype0«
conv2d/Conv2DConv2D"center_crop/cond/Identity:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА*
paddingVALID*
strides
Б
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёАi
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ёёА©
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:€€€€€€€€€ooА*
ksize
*
paddingVALID*
strides
Р
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:Аа*
dtype0≈
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmа*
paddingVALID*
strides
Е
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0Щ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmаk
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€mmа≠
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:€€€€€€€€€66а*
ksize
*
paddingVALID*
strides
П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:аp*
dtype0∆
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44p*
paddingVALID*
strides
Д
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype0Ш
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€44pj
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€44pђ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€p*
ksize
*
paddingVALID*
strides
П
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:pР*
dtype0«
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Р*
paddingVALID*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Рk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Р≠
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Р*
ksize
*
paddingVALID*
strides
Р
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:РР*
dtype0«
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

Р*
paddingVALID*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Щ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

Рk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Р≠
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Р*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  З
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Рi
dropout/IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€РБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0И
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€б
NoOpNoOp^center_crop/cond^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аМ: : : : : : : : : : : : 2$
center_crop/condcenter_crop/cond2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Ц
d
H__inference_random_zoom_layer_call_and_return_conditional_losses_1109816

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
∞
M
$__inference__update_step_xla_1109419
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Р: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:Р
"
_user_specified_name
gradient
‘
Y
$__inference__update_step_xla_1109414
gradient#
variable:pР*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:pР: *
	_noinline(:($
"
_user_specified_name
variable:Q M
'
_output_shapes
:pР
"
_user_specified_name
gradient
‘
Y
$__inference__update_step_xla_1109404
gradient#
variable:аp*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:аp: *
	_noinline(:($
"
_user_specified_name
variable:Q M
'
_output_shapes
:аp
"
_user_specified_name
gradient
Ї
™
,__inference_sequential_layer_call_fn_1108646

inputs
unknown:	
	unknown_0:	
	unknown_1:	$
	unknown_2:А
	unknown_3:	А%
	unknown_4:Аа
	unknown_5:	а$
	unknown_6:аp
	unknown_7:p$
	unknown_8:pР
	unknown_9:	Р&

unknown_10:РР

unknown_11:	Р

unknown_12:	Р

unknown_13:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1108278o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€аМ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Ћ
}
-__inference_random_zoom_layer_call_fn_1109705

inputs
unknown:	
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_zoom_layer_call_and_return_conditional_losses_1107878y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аМ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1110061

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
чE
Ы
G__inference_sequential_layer_call_and_return_conditional_losses_1108359

inputs)
conv2d_1108321:А
conv2d_1108323:	А,
conv2d_1_1108327:Аа
conv2d_1_1108329:	а+
conv2d_2_1108333:аp
conv2d_2_1108335:p+
conv2d_3_1108339:pР
conv2d_3_1108341:	Р,
conv2d_4_1108345:РР
conv2d_4_1108347:	Р 
dense_1108353:	Р
dense_1108355:
identityИҐ#center_crop/StatefulPartitionedCallҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ conv2d_3/StatefulPartitionedCallҐ conv2d_4/StatefulPartitionedCallҐdense/StatefulPartitionedCall“
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_flip_layer_call_and_return_conditional_losses_1108166ю
"random_translation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *X
fSRQ
O__inference_random_translation_layer_call_and_return_conditional_losses_1108171ч
random_zoom/PartitionedCallPartitionedCall+random_translation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_zoom_layer_call_and_return_conditional_losses_1108176м
rescaling/PartitionedCallPartitionedCall$random_zoom/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_1107890ю
#center_crop/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_center_crop_layer_call_and_return_conditional_losses_1108029•
conv2d/StatefulPartitionedCallStatefulPartitionedCall,center_crop/StatefulPartitionedCall:output:0conv2d_1108321conv2d_1108323*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ёёА*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_1108042ц
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€ooА* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1107483•
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1108327conv2d_1_1108329*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€mmа*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1108060ь
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€66а* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1107495¶
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1108333conv2d_2_1108335*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€44p*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1108078ы
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€p* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1107507І
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_1108339conv2d_3_1108341*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1108096ь
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1107519І
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_1108345conv2d_4_1108347*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1108114ь
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1107531г
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1108127џ
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1108215К
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1108353dense_1108355*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1108153u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€є
NoOpNoOp$^center_crop/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аМ: : : : : : : : : : : : 2J
#center_crop/StatefulPartitionedCall#center_crop/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
ыµ
©
#__inference__traced_restore_1110613
file_prefix9
assignvariableop_conv2d_kernel:А-
assignvariableop_1_conv2d_bias:	А>
"assignvariableop_2_conv2d_1_kernel:Аа/
 assignvariableop_3_conv2d_1_bias:	а=
"assignvariableop_4_conv2d_2_kernel:аp.
 assignvariableop_5_conv2d_2_bias:p=
"assignvariableop_6_conv2d_3_kernel:pР/
 assignvariableop_7_conv2d_3_bias:	Р>
"assignvariableop_8_conv2d_4_kernel:РР/
 assignvariableop_9_conv2d_4_bias:	Р3
 assignvariableop_10_dense_kernel:	Р,
assignvariableop_11_dense_bias:'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: C
(assignvariableop_14_adam_m_conv2d_kernel:АC
(assignvariableop_15_adam_v_conv2d_kernel:А5
&assignvariableop_16_adam_m_conv2d_bias:	А5
&assignvariableop_17_adam_v_conv2d_bias:	АF
*assignvariableop_18_adam_m_conv2d_1_kernel:АаF
*assignvariableop_19_adam_v_conv2d_1_kernel:Аа7
(assignvariableop_20_adam_m_conv2d_1_bias:	а7
(assignvariableop_21_adam_v_conv2d_1_bias:	аE
*assignvariableop_22_adam_m_conv2d_2_kernel:аpE
*assignvariableop_23_adam_v_conv2d_2_kernel:аp6
(assignvariableop_24_adam_m_conv2d_2_bias:p6
(assignvariableop_25_adam_v_conv2d_2_bias:pE
*assignvariableop_26_adam_m_conv2d_3_kernel:pРE
*assignvariableop_27_adam_v_conv2d_3_kernel:pР7
(assignvariableop_28_adam_m_conv2d_3_bias:	Р7
(assignvariableop_29_adam_v_conv2d_3_bias:	РF
*assignvariableop_30_adam_m_conv2d_4_kernel:РРF
*assignvariableop_31_adam_v_conv2d_4_kernel:РР7
(assignvariableop_32_adam_m_conv2d_4_bias:	Р7
(assignvariableop_33_adam_v_conv2d_4_bias:	Р:
'assignvariableop_34_adam_m_dense_kernel:	Р:
'assignvariableop_35_adam_v_dense_kernel:	Р3
%assignvariableop_36_adam_m_dense_bias:3
%assignvariableop_37_adam_v_dense_bias:6
(assignvariableop_38_random_flip_statevar:	=
/assignvariableop_39_random_translation_statevar:	6
(assignvariableop_40_random_zoom_statevar:	#
assignvariableop_41_total: #
assignvariableop_42_count: 
identity_44ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ѓ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*’
valueЋB»,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEBJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH»
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B э
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*∆
_output_shapes≥
∞::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_m_conv2d_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_v_conv2d_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_m_conv2d_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_v_conv2d_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_m_conv2d_1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_v_conv2d_1_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_m_conv2d_1_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_v_conv2d_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_conv2d_2_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_conv2d_2_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_conv2d_2_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_conv2d_2_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_conv2d_3_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_conv2d_3_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_m_conv2d_3_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_v_conv2d_3_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_m_conv2d_4_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_v_conv2d_4_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_m_conv2d_4_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_v_conv2d_4_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_m_dense_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_v_dense_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_m_dense_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_37AssignVariableOp%assignvariableop_37_adam_v_dense_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:Ѕ
AssignVariableOp_38AssignVariableOp(assignvariableop_38_random_flip_statevarIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0	*
_output_shapes
:»
AssignVariableOp_39AssignVariableOp/assignvariableop_39_random_translation_statevarIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0	*
_output_shapes
:Ѕ
AssignVariableOp_40AssignVariableOp(assignvariableop_40_random_zoom_statevarIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_41AssignVariableOpassignvariableop_41_totalIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_42AssignVariableOpassignvariableop_42_countIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Б
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: о
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ђ'
l
cond_false_1109862
cond_placeholder
cond_placeholder_1
cond_shape_inputs
cond_identityY

cond/ShapeShapecond_shape_inputs*
T0*
_output_shapes
::нѕk
cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€m
cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€d
cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
cond/strided_sliceStridedSlicecond/Shape:output:0!cond/strided_slice/stack:output:0#cond/strided_slice/stack_1:output:0#cond/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
cond/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€o
cond/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€f
cond/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
cond/strided_slice_1StridedSlicecond/Shape:output:0#cond/strided_slice_1/stack:output:0%cond/strided_slice_1/stack_1:output:0%cond/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM

cond/mul/yConst*
_output_shapes
: *
dtype0*
value
B :аd
cond/mulMulcond/strided_slice_1:output:0cond/mul/y:output:0*
T0*
_output_shapes
: O
	cond/CastCastcond/mul:z:0*

DstT0*

SrcT0*
_output_shapes
: S
cond/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `C`
cond/truedivRealDivcond/Cast:y:0cond/truediv/y:output:0*
T0*
_output_shapes
: U
cond/Cast_1Castcond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: O
cond/mul_1/yConst*
_output_shapes
: *
dtype0*
value
B :аf

cond/mul_1Mulcond/strided_slice:output:0cond/mul_1/y:output:0*
T0*
_output_shapes
: S
cond/Cast_2Castcond/mul_1:z:0*

DstT0*

SrcT0*
_output_shapes
: U
cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `Cf
cond/truediv_1RealDivcond/Cast_2:y:0cond/truediv_1/y:output:0*
T0*
_output_shapes
: W
cond/Cast_3Castcond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: f
cond/MinimumMinimumcond/strided_slice:output:0cond/Cast_1:y:0*
T0*
_output_shapes
: j
cond/Minimum_1Minimumcond/strided_slice_1:output:0cond/Cast_3:y:0*
T0*
_output_shapes
: _
cond/subSubcond/strided_slice:output:0cond/Minimum:z:0*
T0*
_output_shapes
: Q
cond/Cast_4Castcond/sub:z:0*

DstT0*

SrcT0*
_output_shapes
: U
cond/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
cond/truediv_2RealDivcond/Cast_4:y:0cond/truediv_2/y:output:0*
T0*
_output_shapes
: W
cond/Cast_5Castcond/truediv_2:z:0*

DstT0*

SrcT0*
_output_shapes
: e

cond/sub_1Subcond/strided_slice_1:output:0cond/Minimum_1:z:0*
T0*
_output_shapes
: S
cond/Cast_6Castcond/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: U
cond/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
cond/truediv_3RealDivcond/Cast_6:y:0cond/truediv_3/y:output:0*
T0*
_output_shapes
: W
cond/Cast_7Castcond/truediv_3:z:0*

DstT0*

SrcT0*
_output_shapes
: N
cond/stack/0Const*
_output_shapes
: *
dtype0*
value	B : N
cond/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Р

cond/stackPackcond/stack/0:output:0cond/Cast_5:y:0cond/Cast_7:y:0cond/stack/3:output:0*
N*
T0*
_output_shapes
:Y
cond/stack_1/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Y
cond/stack_1/3Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ъ
cond/stack_1Packcond/stack_1/0:output:0cond/Minimum:z:0cond/Minimum_1:z:0cond/stack_1/3:output:0*
N*
T0*
_output_shapes
:§

cond/SliceSlicecond_shape_inputscond/stack:output:0cond/stack_1:output:0*
Index0*
T0*:
_output_shapes(
&:$€€€€€€€€€аа€€€€€€€€€a
cond/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ≤
cond/resize/ResizeBilinearResizeBilinearcond/Slice:output:0cond/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(В
cond/IdentityIdentity+cond/resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
“
n
H__inference_center_crop_layer_call_and_return_conditional_losses_1109971

inputs
identityИҐcondI
ShapeShapeinputs*
T0*
_output_shapes
::нѕf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskH
sub/yConst*
_output_shapes
: *
dtype0*
value
B :аS
subSubstrided_slice:output:0sub/y:output:0*
T0*
_output_shapes
: h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskJ
sub_1/yConst*
_output_shapes
: *
dtype0*
value
B :аY
sub_1Substrided_slice_1:output:0sub_1/y:output:0*
T0*
_output_shapes
: P
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterEqualGreaterEqualsub:z:0GreaterEqual/y:output:0*
T0*
_output_shapes
: R
GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : e
GreaterEqual_1GreaterEqual	sub_1:z:0GreaterEqual_1/y:output:0*
T0*
_output_shapes
: g
Rank/packedPackGreaterEqual:z:0GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:F
RankConst*
_output_shapes
: *
dtype0*
value	B :M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :e
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
:e
	All/inputPackGreaterEqual:z:0GreaterEqual_1:z:0*
N*
T0
*
_output_shapes
:F
AllAllAll/input:output:0range:output:0*
_output_shapes
: ’
condIfAll:output:0sub:z:0	sub_1:z:0inputs*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *%
else_branchR
cond_false_1109862*0
output_shapes
:€€€€€€€€€аа*$
then_branchR
cond_true_1109861d
cond/IdentityIdentitycond:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааo
IdentityIdentitycond/Identity:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааM
NoOpNoOp^cond*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ2
condcond:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
–X
»
center_crop_cond_true_11090231
-center_crop_cond_truediv_cast_center_crop_sub5
1center_crop_cond_truediv_1_cast_center_crop_sub_1=
9center_crop_cond_crop_to_bounding_box_shape_rescaling_add
center_crop_cond_identityИҐ3center_crop/cond/crop_to_bounding_box/Assert/AssertҐ5center_crop/cond/crop_to_bounding_box/Assert_1/AssertҐ5center_crop/cond/crop_to_bounding_box/Assert_2/AssertҐ5center_crop/cond/crop_to_bounding_box/Assert_3/Assert\
center_crop/cond/truediv/yConst*
_output_shapes
: *
dtype0*
value	B :Д
center_crop/cond/truediv/CastCast-center_crop_cond_truediv_cast_center_crop_sub*

DstT0*

SrcT0*
_output_shapes
: |
center_crop/cond/truediv/Cast_1Cast#center_crop/cond/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: М
center_crop/cond/truedivRealDiv!center_crop/cond/truediv/Cast:y:0#center_crop/cond/truediv/Cast_1:y:0*
T0*
_output_shapes
: k
center_crop/cond/CastCastcenter_crop/cond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: ^
center_crop/cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
center_crop/cond/truediv_1/CastCast1center_crop_cond_truediv_1_cast_center_crop_sub_1*

DstT0*

SrcT0*
_output_shapes
: А
!center_crop/cond/truediv_1/Cast_1Cast%center_crop/cond/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: Т
center_crop/cond/truediv_1RealDiv#center_crop/cond/truediv_1/Cast:y:0%center_crop/cond/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: o
center_crop/cond/Cast_1Castcenter_crop/cond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Ґ
+center_crop/cond/crop_to_bounding_box/ShapeShape9center_crop_cond_crop_to_bounding_box_shape_rescaling_add*
T0*
_output_shapes
::нѕЯ
-center_crop/cond/crop_to_bounding_box/unstackUnpack4center_crop/cond/crop_to_bounding_box/Shape:output:0*
T0*
_output_shapes

: : : : *	
numv
4center_crop/cond/crop_to_bounding_box/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : њ
2center_crop/cond/crop_to_bounding_box/GreaterEqualGreaterEqualcenter_crop/cond/Cast_1:y:0=center_crop/cond/crop_to_bounding_box/GreaterEqual/y:output:0*
T0*
_output_shapes
: Н
2center_crop/cond/crop_to_bounding_box/Assert/ConstConst*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.Х
:center_crop/cond/crop_to_bounding_box/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.Д
3center_crop/cond/crop_to_bounding_box/Assert/AssertAssert6center_crop/cond/crop_to_bounding_box/GreaterEqual:z:0Ccenter_crop/cond/crop_to_bounding_box/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 x
6center_crop/cond/crop_to_bounding_box/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : Ѕ
4center_crop/cond/crop_to_bounding_box/GreaterEqual_1GreaterEqualcenter_crop/cond/Cast:y:0?center_crop/cond/crop_to_bounding_box/GreaterEqual_1/y:output:0*
T0*
_output_shapes
: Р
4center_crop/cond/crop_to_bounding_box/Assert_1/ConstConst*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.Ш
<center_crop/cond/crop_to_bounding_box/Assert_1/Assert/data_0Const*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.ј
5center_crop/cond/crop_to_bounding_box/Assert_1/AssertAssert8center_crop/cond/crop_to_bounding_box/GreaterEqual_1:z:0Ecenter_crop/cond/crop_to_bounding_box/Assert_1/Assert/data_0:output:04^center_crop/cond/crop_to_bounding_box/Assert/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 n
+center_crop/cond/crop_to_bounding_box/add/xConst*
_output_shapes
: *
dtype0*
value
B :а¶
)center_crop/cond/crop_to_bounding_box/addAddV24center_crop/cond/crop_to_bounding_box/add/x:output:0center_crop/cond/Cast_1:y:0*
T0*
_output_shapes
: t
1center_crop/cond/crop_to_bounding_box/LessEqual/yConst*
_output_shapes
: *
dtype0*
value
B :М»
/center_crop/cond/crop_to_bounding_box/LessEqual	LessEqual-center_crop/cond/crop_to_bounding_box/add:z:0:center_crop/cond/crop_to_bounding_box/LessEqual/y:output:0*
T0*
_output_shapes
: Ц
4center_crop/cond/crop_to_bounding_box/Assert_2/ConstConst*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.Ю
<center_crop/cond/crop_to_bounding_box/Assert_2/Assert/data_0Const*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.љ
5center_crop/cond/crop_to_bounding_box/Assert_2/AssertAssert3center_crop/cond/crop_to_bounding_box/LessEqual:z:0Ecenter_crop/cond/crop_to_bounding_box/Assert_2/Assert/data_0:output:06^center_crop/cond/crop_to_bounding_box/Assert_1/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 p
-center_crop/cond/crop_to_bounding_box/add_1/xConst*
_output_shapes
: *
dtype0*
value
B :а®
+center_crop/cond/crop_to_bounding_box/add_1AddV26center_crop/cond/crop_to_bounding_box/add_1/x:output:0center_crop/cond/Cast:y:0*
T0*
_output_shapes
: v
3center_crop/cond/crop_to_bounding_box/LessEqual_1/yConst*
_output_shapes
: *
dtype0*
value
B :аќ
1center_crop/cond/crop_to_bounding_box/LessEqual_1	LessEqual/center_crop/cond/crop_to_bounding_box/add_1:z:0<center_crop/cond/crop_to_bounding_box/LessEqual_1/y:output:0*
T0*
_output_shapes
: Ч
4center_crop/cond/crop_to_bounding_box/Assert_3/ConstConst*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.Я
<center_crop/cond/crop_to_bounding_box/Assert_3/Assert/data_0Const*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.њ
5center_crop/cond/crop_to_bounding_box/Assert_3/AssertAssert5center_crop/cond/crop_to_bounding_box/LessEqual_1:z:0Ecenter_crop/cond/crop_to_bounding_box/Assert_3/Assert/data_0:output:06^center_crop/cond/crop_to_bounding_box/Assert_2/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 ї
8center_crop/cond/crop_to_bounding_box/control_dependencyIdentity9center_crop_cond_crop_to_bounding_box_shape_rescaling_add4^center_crop/cond/crop_to_bounding_box/Assert/Assert6^center_crop/cond/crop_to_bounding_box/Assert_1/Assert6^center_crop/cond/crop_to_bounding_box/Assert_2/Assert6^center_crop/cond/crop_to_bounding_box/Assert_3/Assert*
T0* 
_class
loc:@rescaling/add*1
_output_shapes
:€€€€€€€€€аМo
-center_crop/cond/crop_to_bounding_box/stack/0Const*
_output_shapes
: *
dtype0*
value	B : o
-center_crop/cond/crop_to_bounding_box/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Й
+center_crop/cond/crop_to_bounding_box/stackPack6center_crop/cond/crop_to_bounding_box/stack/0:output:0center_crop/cond/Cast:y:0center_crop/cond/Cast_1:y:06center_crop/cond/crop_to_bounding_box/stack/3:output:0*
N*
T0*
_output_shapes
:ђ
-center_crop/cond/crop_to_bounding_box/Shape_1ShapeAcenter_crop/cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕГ
9center_crop/cond/crop_to_bounding_box/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;center_crop/cond/crop_to_bounding_box/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;center_crop/cond/crop_to_bounding_box/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
3center_crop/cond/crop_to_bounding_box/strided_sliceStridedSlice6center_crop/cond/crop_to_bounding_box/Shape_1:output:0Bcenter_crop/cond/crop_to_bounding_box/strided_slice/stack:output:0Dcenter_crop/cond/crop_to_bounding_box/strided_slice/stack_1:output:0Dcenter_crop/cond/crop_to_bounding_box/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskђ
-center_crop/cond/crop_to_bounding_box/Shape_2ShapeAcenter_crop/cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕЕ
;center_crop/cond/crop_to_bounding_box/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=center_crop/cond/crop_to_bounding_box/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=center_crop/cond/crop_to_bounding_box/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
5center_crop/cond/crop_to_bounding_box/strided_slice_1StridedSlice6center_crop/cond/crop_to_bounding_box/Shape_2:output:0Dcenter_crop/cond/crop_to_bounding_box/strided_slice_1/stack:output:0Fcenter_crop/cond/crop_to_bounding_box/strided_slice_1/stack_1:output:0Fcenter_crop/cond/crop_to_bounding_box/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/center_crop/cond/crop_to_bounding_box/stack_1/1Const*
_output_shapes
: *
dtype0*
value
B :аr
/center_crop/cond/crop_to_bounding_box/stack_1/2Const*
_output_shapes
: *
dtype0*
value
B :а’
-center_crop/cond/crop_to_bounding_box/stack_1Pack<center_crop/cond/crop_to_bounding_box/strided_slice:output:08center_crop/cond/crop_to_bounding_box/stack_1/1:output:08center_crop/cond/crop_to_bounding_box/stack_1/2:output:0>center_crop/cond/crop_to_bounding_box/strided_slice_1:output:0*
N*
T0*
_output_shapes
:Ѓ
+center_crop/cond/crop_to_bounding_box/SliceSliceAcenter_crop/cond/crop_to_bounding_box/control_dependency:output:04center_crop/cond/crop_to_bounding_box/stack:output:06center_crop/cond/crop_to_bounding_box/stack_1:output:0*
Index0*
T0*1
_output_shapes
:€€€€€€€€€ааѓ
center_crop/cond/IdentityIdentity4center_crop/cond/crop_to_bounding_box/Slice:output:0^center_crop/cond/NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааµ
center_crop/cond/NoOpNoOp4^center_crop/cond/crop_to_bounding_box/Assert/Assert6^center_crop/cond/crop_to_bounding_box/Assert_1/Assert6^center_crop/cond/crop_to_bounding_box/Assert_2/Assert6^center_crop/cond/crop_to_bounding_box/Assert_3/Assert*"
_acd_function_control_output(*
_output_shapes
 "?
center_crop_cond_identity"center_crop/cond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ2j
3center_crop/cond/crop_to_bounding_box/Assert/Assert3center_crop/cond/crop_to_bounding_box/Assert/Assert2n
5center_crop/cond/crop_to_bounding_box/Assert_1/Assert5center_crop/cond/crop_to_bounding_box/Assert_1/Assert2n
5center_crop/cond/crop_to_bounding_box/Assert_2/Assert5center_crop/cond/crop_to_bounding_box/Assert_2/Assert2n
5center_crop/cond/crop_to_bounding_box/Assert_3/Assert5center_crop/cond/crop_to_bounding_box/Assert_3/Assert:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
Ф
h
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1110121

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
®M
¶
G__inference_sequential_layer_call_and_return_conditional_losses_1108278

inputs!
random_flip_1108229:	(
random_translation_1108232:	!
random_zoom_1108235:	)
conv2d_1108240:А
conv2d_1108242:	А,
conv2d_1_1108246:Аа
conv2d_1_1108248:	а+
conv2d_2_1108252:аp
conv2d_2_1108254:p+
conv2d_3_1108258:pР
conv2d_3_1108260:	Р,
conv2d_4_1108264:РР
conv2d_4_1108266:	Р 
dense_1108272:	Р
dense_1108274:
identityИҐ#center_crop/StatefulPartitionedCallҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ conv2d_3/StatefulPartitionedCallҐ conv2d_4/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ#random_flip/StatefulPartitionedCallҐ*random_translation/StatefulPartitionedCallҐ#random_zoom/StatefulPartitionedCallш
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_1108229*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_flip_layer_call_and_return_conditional_losses_1107652≥
*random_translation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_translation_1108232*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *X
fSRQ
O__inference_random_translation_layer_call_and_return_conditional_losses_1107772•
#random_zoom/StatefulPartitionedCallStatefulPartitionedCall3random_translation/StatefulPartitionedCall:output:0random_zoom_1108235*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_random_zoom_layer_call_and_return_conditional_losses_1107878ф
rescaling/PartitionedCallPartitionedCall,random_zoom/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_1107890ю
#center_crop/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *Q
fLRJ
H__inference_center_crop_layer_call_and_return_conditional_losses_1108029•
conv2d/StatefulPartitionedCallStatefulPartitionedCall,center_crop/StatefulPartitionedCall:output:0conv2d_1108240conv2d_1108242*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ёёА*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_1108042ц
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€ooА* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1107483•
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1108246conv2d_1_1108248*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€mmа*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1108060ь
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€66а* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1107495¶
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1108252conv2d_2_1108254*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€44p*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1108078ы
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€p* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1107507І
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_1108258conv2d_3_1108260*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1108096ь
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1107519І
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_1108264conv2d_4_1108266*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

Р*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1108114ь
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1107531г
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1108127С
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0$^center_crop/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1108141Т
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1108272dense_1108274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1108153u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€‘
NoOpNoOp$^center_crop/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall$^random_flip/StatefulPartitionedCall+^random_translation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€аМ: : : : : : : : : : : : : : : 2J
#center_crop/StatefulPartitionedCall#center_crop/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2X
*random_translation/StatefulPartitionedCall*random_translation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
†Ч
А
H__inference_random_flip_layer_call_and_return_conditional_losses_1107652

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИҐ(stateful_uniform_full_int/RngReadAndSkipҐ*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Џ
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ч
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€аМ†
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::нѕ~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЃ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∞
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ю
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€х
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€ы
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ќ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:е
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:л
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ»
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?¬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€—
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМњ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€аМk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskџ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€аМЪ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::нѕ{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ѓ
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :п
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€м
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€т
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :њ
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:№
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:в
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМњ
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?є
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€»
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМґ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€аМ~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аМЮ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Ц
÷
%__inference_signature_wrapper_1108611
input_1"
unknown:А
	unknown_0:	А%
	unknown_1:Аа
	unknown_2:	а$
	unknown_3:аp
	unknown_4:p$
	unknown_5:pР
	unknown_6:	Р%
	unknown_7:РР
	unknown_8:	Р
	unknown_9:	Р

unknown_10:
identityИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *+
f&R$
"__inference__wrapped_model_1107477o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аМ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аМ
!
_user_specified_name	input_1
Ц
d
H__inference_random_zoom_layer_call_and_return_conditional_losses_1108176

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
—J
љ
cond_true_1109861
cond_truediv_cast_sub
cond_truediv_1_cast_sub_1*
&cond_crop_to_bounding_box_shape_inputs
cond_identityИҐ'cond/crop_to_bounding_box/Assert/AssertҐ)cond/crop_to_bounding_box/Assert_1/AssertҐ)cond/crop_to_bounding_box/Assert_2/AssertҐ)cond/crop_to_bounding_box/Assert_3/AssertP
cond/truediv/yConst*
_output_shapes
: *
dtype0*
value	B :`
cond/truediv/CastCastcond_truediv_cast_sub*

DstT0*

SrcT0*
_output_shapes
: d
cond/truediv/Cast_1Castcond/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: h
cond/truedivRealDivcond/truediv/Cast:y:0cond/truediv/Cast_1:y:0*
T0*
_output_shapes
: S
	cond/CastCastcond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: R
cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
value	B :f
cond/truediv_1/CastCastcond_truediv_1_cast_sub_1*

DstT0*

SrcT0*
_output_shapes
: h
cond/truediv_1/Cast_1Castcond/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: n
cond/truediv_1RealDivcond/truediv_1/Cast:y:0cond/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: W
cond/Cast_1Castcond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: Г
cond/crop_to_bounding_box/ShapeShape&cond_crop_to_bounding_box_shape_inputs*
T0*
_output_shapes
::нѕЗ
!cond/crop_to_bounding_box/unstackUnpack(cond/crop_to_bounding_box/Shape:output:0*
T0*
_output_shapes

: : : : *	
numj
(cond/crop_to_bounding_box/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : Ы
&cond/crop_to_bounding_box/GreaterEqualGreaterEqualcond/Cast_1:y:01cond/crop_to_bounding_box/GreaterEqual/y:output:0*
T0*
_output_shapes
: Б
&cond/crop_to_bounding_box/Assert/ConstConst*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.Й
.cond/crop_to_bounding_box/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.а
'cond/crop_to_bounding_box/Assert/AssertAssert*cond/crop_to_bounding_box/GreaterEqual:z:07cond/crop_to_bounding_box/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 l
*cond/crop_to_bounding_box/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : Э
(cond/crop_to_bounding_box/GreaterEqual_1GreaterEqualcond/Cast:y:03cond/crop_to_bounding_box/GreaterEqual_1/y:output:0*
T0*
_output_shapes
: Д
(cond/crop_to_bounding_box/Assert_1/ConstConst*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.М
0cond/crop_to_bounding_box/Assert_1/Assert/data_0Const*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.Р
)cond/crop_to_bounding_box/Assert_1/AssertAssert,cond/crop_to_bounding_box/GreaterEqual_1:z:09cond/crop_to_bounding_box/Assert_1/Assert/data_0:output:0(^cond/crop_to_bounding_box/Assert/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 b
cond/crop_to_bounding_box/add/xConst*
_output_shapes
: *
dtype0*
value
B :аВ
cond/crop_to_bounding_box/addAddV2(cond/crop_to_bounding_box/add/x:output:0cond/Cast_1:y:0*
T0*
_output_shapes
: h
%cond/crop_to_bounding_box/LessEqual/yConst*
_output_shapes
: *
dtype0*
value
B :М§
#cond/crop_to_bounding_box/LessEqual	LessEqual!cond/crop_to_bounding_box/add:z:0.cond/crop_to_bounding_box/LessEqual/y:output:0*
T0*
_output_shapes
: К
(cond/crop_to_bounding_box/Assert_2/ConstConst*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.Т
0cond/crop_to_bounding_box/Assert_2/Assert/data_0Const*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.Н
)cond/crop_to_bounding_box/Assert_2/AssertAssert'cond/crop_to_bounding_box/LessEqual:z:09cond/crop_to_bounding_box/Assert_2/Assert/data_0:output:0*^cond/crop_to_bounding_box/Assert_1/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 d
!cond/crop_to_bounding_box/add_1/xConst*
_output_shapes
: *
dtype0*
value
B :аД
cond/crop_to_bounding_box/add_1AddV2*cond/crop_to_bounding_box/add_1/x:output:0cond/Cast:y:0*
T0*
_output_shapes
: j
'cond/crop_to_bounding_box/LessEqual_1/yConst*
_output_shapes
: *
dtype0*
value
B :а™
%cond/crop_to_bounding_box/LessEqual_1	LessEqual#cond/crop_to_bounding_box/add_1:z:00cond/crop_to_bounding_box/LessEqual_1/y:output:0*
T0*
_output_shapes
: Л
(cond/crop_to_bounding_box/Assert_3/ConstConst*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.У
0cond/crop_to_bounding_box/Assert_3/Assert/data_0Const*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.П
)cond/crop_to_bounding_box/Assert_3/AssertAssert)cond/crop_to_bounding_box/LessEqual_1:z:09cond/crop_to_bounding_box/Assert_3/Assert/data_0:output:0*^cond/crop_to_bounding_box/Assert_2/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 е
,cond/crop_to_bounding_box/control_dependencyIdentity&cond_crop_to_bounding_box_shape_inputs(^cond/crop_to_bounding_box/Assert/Assert*^cond/crop_to_bounding_box/Assert_1/Assert*^cond/crop_to_bounding_box/Assert_2/Assert*^cond/crop_to_bounding_box/Assert_3/Assert*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€аМc
!cond/crop_to_bounding_box/stack/0Const*
_output_shapes
: *
dtype0*
value	B : c
!cond/crop_to_bounding_box/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ќ
cond/crop_to_bounding_box/stackPack*cond/crop_to_bounding_box/stack/0:output:0cond/Cast:y:0cond/Cast_1:y:0*cond/crop_to_bounding_box/stack/3:output:0*
N*
T0*
_output_shapes
:Ф
!cond/crop_to_bounding_box/Shape_1Shape5cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕw
-cond/crop_to_bounding_box/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/cond/crop_to_bounding_box/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/cond/crop_to_bounding_box/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
'cond/crop_to_bounding_box/strided_sliceStridedSlice*cond/crop_to_bounding_box/Shape_1:output:06cond/crop_to_bounding_box/strided_slice/stack:output:08cond/crop_to_bounding_box/strided_slice/stack_1:output:08cond/crop_to_bounding_box/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskФ
!cond/crop_to_bounding_box/Shape_2Shape5cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕy
/cond/crop_to_bounding_box/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1cond/crop_to_bounding_box/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1cond/crop_to_bounding_box/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)cond/crop_to_bounding_box/strided_slice_1StridedSlice*cond/crop_to_bounding_box/Shape_2:output:08cond/crop_to_bounding_box/strided_slice_1/stack:output:0:cond/crop_to_bounding_box/strided_slice_1/stack_1:output:0:cond/crop_to_bounding_box/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#cond/crop_to_bounding_box/stack_1/1Const*
_output_shapes
: *
dtype0*
value
B :аf
#cond/crop_to_bounding_box/stack_1/2Const*
_output_shapes
: *
dtype0*
value
B :аЩ
!cond/crop_to_bounding_box/stack_1Pack0cond/crop_to_bounding_box/strided_slice:output:0,cond/crop_to_bounding_box/stack_1/1:output:0,cond/crop_to_bounding_box/stack_1/2:output:02cond/crop_to_bounding_box/strided_slice_1:output:0*
N*
T0*
_output_shapes
:ю
cond/crop_to_bounding_box/SliceSlice5cond/crop_to_bounding_box/control_dependency:output:0(cond/crop_to_bounding_box/stack:output:0*cond/crop_to_bounding_box/stack_1:output:0*
Index0*
T0*1
_output_shapes
:€€€€€€€€€ааЛ
cond/IdentityIdentity(cond/crop_to_bounding_box/Slice:output:0
^cond/NoOp*
T0*1
_output_shapes
:€€€€€€€€€аащ
	cond/NoOpNoOp(^cond/crop_to_bounding_box/Assert/Assert*^cond/crop_to_bounding_box/Assert_1/Assert*^cond/crop_to_bounding_box/Assert_2/Assert*^cond/crop_to_bounding_box/Assert_3/Assert*"
_acd_function_control_output(*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ2R
'cond/crop_to_bounding_box/Assert/Assert'cond/crop_to_bounding_box/Assert/Assert2V
)cond/crop_to_bounding_box/Assert_1/Assert)cond/crop_to_bounding_box/Assert_1/Assert2V
)cond/crop_to_bounding_box/Assert_2/Assert)cond/crop_to_bounding_box/Assert_2/Assert2V
)cond/crop_to_bounding_box/Assert_3/Assert)cond/crop_to_bounding_box/Assert_3/Assert:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
эВ
м
O__inference_random_translation_layer_call_and_return_conditional_losses_1107772

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipҐ!stateful_uniform_1/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *   АY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    `
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€\
mulMulstateful_uniform:z:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Л
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћLЊ[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ё
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ґ
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskБ
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Е
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Щ
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€А
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: °
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
mul_1Mulstateful_uniform_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2	mul_1:z:0mul:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€e
translation_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::нѕp
&translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 translation_matrix/strided_sliceStridedSlice!translation_matrix/Shape:output:0/translation_matrix/strided_slice/stack:output:01translation_matrix/strided_slice/stack_1:output:01translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :™
translation_matrix/ones/packedPack)translation_matrix/strided_slice:output:0)translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:b
translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ґ
translation_matrix/onesFill'translation_matrix/ones/packed:output:0&translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
!translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ђ
translation_matrix/zeros/packedPack)translation_matrix/strided_slice:output:0*translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    •
translation_matrix/zerosFill(translation_matrix/zeros/packed:output:0'translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€}
(translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
*translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         о
"translation_matrix/strided_slice_1StridedSliceconcat:output:01translation_matrix/strided_slice_1/stack:output:03translation_matrix/strided_slice_1/stack_1:output:03translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
translation_matrix/NegNeg+translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€e
#translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :∞
!translation_matrix/zeros_1/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
translation_matrix/zeros_1Fill*translation_matrix/zeros_1/packed:output:0)translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€d
"translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
 translation_matrix/ones_1/packedPack)translation_matrix/strided_slice:output:0+translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?®
translation_matrix/ones_1Fill)translation_matrix/ones_1/packed:output:0(translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€}
(translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         о
"translation_matrix/strided_slice_2StridedSliceconcat:output:01translation_matrix/strided_slice_2/stack:output:03translation_matrix/strided_slice_2/stack_1:output:03translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
translation_matrix/Neg_1Neg+translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€e
#translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :∞
!translation_matrix/zeros_2/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
translation_matrix/zeros_2Fill*translation_matrix/zeros_2/packed:output:0)translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
translation_matrix/concatConcatV2 translation_matrix/ones:output:0!translation_matrix/zeros:output:0translation_matrix/Neg:y:0#translation_matrix/zeros_1:output:0"translation_matrix/ones_1:output:0translation_matrix/Neg_1:y:0#translation_matrix/zeros_2:output:0'translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€S
transform/ShapeShapeinputs*
T0*
_output_shapes
::нѕg
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    §
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs"translation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аМ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аММ
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
З1
ѓ
center_crop_cond_false_1109024 
center_crop_cond_placeholder"
center_crop_cond_placeholder_1(
$center_crop_cond_shape_rescaling_add
center_crop_cond_identityx
center_crop/cond/ShapeShape$center_crop_cond_shape_rescaling_add*
T0*
_output_shapes
::нѕw
$center_crop/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€y
&center_crop/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€p
&center_crop/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
center_crop/cond/strided_sliceStridedSlicecenter_crop/cond/Shape:output:0-center_crop/cond/strided_slice/stack:output:0/center_crop/cond/strided_slice/stack_1:output:0/center_crop/cond/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
&center_crop/cond/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€{
(center_crop/cond/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€r
(center_crop/cond/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
 center_crop/cond/strided_slice_1StridedSlicecenter_crop/cond/Shape:output:0/center_crop/cond/strided_slice_1/stack:output:01center_crop/cond/strided_slice_1/stack_1:output:01center_crop/cond/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
center_crop/cond/mul/yConst*
_output_shapes
: *
dtype0*
value
B :аИ
center_crop/cond/mulMul)center_crop/cond/strided_slice_1:output:0center_crop/cond/mul/y:output:0*
T0*
_output_shapes
: g
center_crop/cond/CastCastcenter_crop/cond/mul:z:0*

DstT0*

SrcT0*
_output_shapes
: _
center_crop/cond/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `CД
center_crop/cond/truedivRealDivcenter_crop/cond/Cast:y:0#center_crop/cond/truediv/y:output:0*
T0*
_output_shapes
: m
center_crop/cond/Cast_1Castcenter_crop/cond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: [
center_crop/cond/mul_1/yConst*
_output_shapes
: *
dtype0*
value
B :аК
center_crop/cond/mul_1Mul'center_crop/cond/strided_slice:output:0!center_crop/cond/mul_1/y:output:0*
T0*
_output_shapes
: k
center_crop/cond/Cast_2Castcenter_crop/cond/mul_1:z:0*

DstT0*

SrcT0*
_output_shapes
: a
center_crop/cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  `CК
center_crop/cond/truediv_1RealDivcenter_crop/cond/Cast_2:y:0%center_crop/cond/truediv_1/y:output:0*
T0*
_output_shapes
: o
center_crop/cond/Cast_3Castcenter_crop/cond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: К
center_crop/cond/MinimumMinimum'center_crop/cond/strided_slice:output:0center_crop/cond/Cast_1:y:0*
T0*
_output_shapes
: О
center_crop/cond/Minimum_1Minimum)center_crop/cond/strided_slice_1:output:0center_crop/cond/Cast_3:y:0*
T0*
_output_shapes
: Г
center_crop/cond/subSub'center_crop/cond/strided_slice:output:0center_crop/cond/Minimum:z:0*
T0*
_output_shapes
: i
center_crop/cond/Cast_4Castcenter_crop/cond/sub:z:0*

DstT0*

SrcT0*
_output_shapes
: a
center_crop/cond/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @К
center_crop/cond/truediv_2RealDivcenter_crop/cond/Cast_4:y:0%center_crop/cond/truediv_2/y:output:0*
T0*
_output_shapes
: o
center_crop/cond/Cast_5Castcenter_crop/cond/truediv_2:z:0*

DstT0*

SrcT0*
_output_shapes
: Й
center_crop/cond/sub_1Sub)center_crop/cond/strided_slice_1:output:0center_crop/cond/Minimum_1:z:0*
T0*
_output_shapes
: k
center_crop/cond/Cast_6Castcenter_crop/cond/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: a
center_crop/cond/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @К
center_crop/cond/truediv_3RealDivcenter_crop/cond/Cast_6:y:0%center_crop/cond/truediv_3/y:output:0*
T0*
_output_shapes
: o
center_crop/cond/Cast_7Castcenter_crop/cond/truediv_3:z:0*

DstT0*

SrcT0*
_output_shapes
: Z
center_crop/cond/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Z
center_crop/cond/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ћ
center_crop/cond/stackPack!center_crop/cond/stack/0:output:0center_crop/cond/Cast_5:y:0center_crop/cond/Cast_7:y:0!center_crop/cond/stack/3:output:0*
N*
T0*
_output_shapes
:e
center_crop/cond/stack_1/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€e
center_crop/cond/stack_1/3Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
center_crop/cond/stack_1Pack#center_crop/cond/stack_1/0:output:0center_crop/cond/Minimum:z:0center_crop/cond/Minimum_1:z:0#center_crop/cond/stack_1/3:output:0*
N*
T0*
_output_shapes
:џ
center_crop/cond/SliceSlice$center_crop_cond_shape_rescaling_addcenter_crop/cond/stack:output:0!center_crop/cond/stack_1:output:0*
Index0*
T0*:
_output_shapes(
&:$€€€€€€€€€аа€€€€€€€€€m
center_crop/cond/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ÷
&center_crop/cond/resize/ResizeBilinearResizeBilinearcenter_crop/cond/Slice:output:0%center_crop/cond/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(Ъ
center_crop/cond/IdentityIdentity7center_crop/cond/resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"?
center_crop_cond_identity"center_crop/cond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
Ф
h
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1107519

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
∞
M
$__inference__update_step_xla_1109429
gradient
variable:	Р*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Р: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:Р
"
_user_specified_name
gradient
†Ч
А
H__inference_random_flip_layer_call_and_return_conditional_losses_1109562

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИҐ(stateful_uniform_full_int/RngReadAndSkipҐ*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Џ
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ч
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€аМ†
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::нѕ~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЃ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∞
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ю
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€х
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€ы
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ќ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:е
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:л
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ»
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?¬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€—
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМњ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€аМk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskџ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€аМЪ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::нѕ{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ѓ
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :п
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€м
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€т
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :њ
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:№
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:в
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМњ
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?є
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€»
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМґ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€аМ~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аМЮ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
µn
Ѕ
H__inference_random_zoom_layer_call_and_return_conditional_losses_1107878

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::нѕi
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€S
transform/ShapeShapeinputs*
T0*
_output_shapes
::нѕg
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аМ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аМh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аМ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
™
E
)__inference_dropout_layer_call_fn_1110142

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1108215a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€Р:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
∞
M
$__inference__update_step_xla_1109399
gradient
variable:	а*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:а: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:а
"
_user_specified_name
gradient
Ц
d
H__inference_random_flip_layer_call_and_return_conditional_losses_1109566

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
њ
K
/__inference_max_pooling2d_layer_call_fn_1109996

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1107483Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1110021

inputs:
conv2d_readvariableop_resource:Аа.
biasadd_readvariableop_resource:	а
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:Аа*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmа*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€mmаY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€mmаj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€mmаw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€ooА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€ooА
 
_user_specified_nameinputs
“
G
+__inference_rescaling_layer_call_fn_1109821

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аМ* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_1107890j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
¬
Ё
,__inference_sequential_layer_call_fn_1108386
input_1"
unknown:А
	unknown_0:	А%
	unknown_1:Аа
	unknown_2:	а$
	unknown_3:аp
	unknown_4:p$
	unknown_5:pР
	unknown_6:	Р%
	unknown_7:РР
	unknown_8:	Р
	unknown_9:	Р

unknown_10:
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1108359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аМ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аМ
!
_user_specified_name	input_1
џ
b
D__inference_dropout_layer_call_and_return_conditional_losses_1110159

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€Р\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€Р:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1107483

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ћe
ћ
(sequential_center_crop_cond_true_1107318G
Csequential_center_crop_cond_truediv_cast_sequential_center_crop_subK
Gsequential_center_crop_cond_truediv_1_cast_sequential_center_crop_sub_1S
Osequential_center_crop_cond_crop_to_bounding_box_shape_sequential_rescaling_add(
$sequential_center_crop_cond_identityИҐ>sequential/center_crop/cond/crop_to_bounding_box/Assert/AssertҐ@sequential/center_crop/cond/crop_to_bounding_box/Assert_1/AssertҐ@sequential/center_crop/cond/crop_to_bounding_box/Assert_2/AssertҐ@sequential/center_crop/cond/crop_to_bounding_box/Assert_3/Assertg
%sequential/center_crop/cond/truediv/yConst*
_output_shapes
: *
dtype0*
value	B :•
(sequential/center_crop/cond/truediv/CastCastCsequential_center_crop_cond_truediv_cast_sequential_center_crop_sub*

DstT0*

SrcT0*
_output_shapes
: Т
*sequential/center_crop/cond/truediv/Cast_1Cast.sequential/center_crop/cond/truediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: ≠
#sequential/center_crop/cond/truedivRealDiv,sequential/center_crop/cond/truediv/Cast:y:0.sequential/center_crop/cond/truediv/Cast_1:y:0*
T0*
_output_shapes
: Б
 sequential/center_crop/cond/CastCast'sequential/center_crop/cond/truediv:z:0*

DstT0*

SrcT0*
_output_shapes
: i
'sequential/center_crop/cond/truediv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ђ
*sequential/center_crop/cond/truediv_1/CastCastGsequential_center_crop_cond_truediv_1_cast_sequential_center_crop_sub_1*

DstT0*

SrcT0*
_output_shapes
: Ц
,sequential/center_crop/cond/truediv_1/Cast_1Cast0sequential/center_crop/cond/truediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: ≥
%sequential/center_crop/cond/truediv_1RealDiv.sequential/center_crop/cond/truediv_1/Cast:y:00sequential/center_crop/cond/truediv_1/Cast_1:y:0*
T0*
_output_shapes
: Е
"sequential/center_crop/cond/Cast_1Cast)sequential/center_crop/cond/truediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: √
6sequential/center_crop/cond/crop_to_bounding_box/ShapeShapeOsequential_center_crop_cond_crop_to_bounding_box_shape_sequential_rescaling_add*
T0*
_output_shapes
::нѕµ
8sequential/center_crop/cond/crop_to_bounding_box/unstackUnpack?sequential/center_crop/cond/crop_to_bounding_box/Shape:output:0*
T0*
_output_shapes

: : : : *	
numБ
?sequential/center_crop/cond/crop_to_bounding_box/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : а
=sequential/center_crop/cond/crop_to_bounding_box/GreaterEqualGreaterEqual&sequential/center_crop/cond/Cast_1:y:0Hsequential/center_crop/cond/crop_to_bounding_box/GreaterEqual/y:output:0*
T0*
_output_shapes
: Ш
=sequential/center_crop/cond/crop_to_bounding_box/Assert/ConstConst*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.†
Esequential/center_crop/cond/crop_to_bounding_box/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*+
value"B  Boffset_width must be >= 0.•
>sequential/center_crop/cond/crop_to_bounding_box/Assert/AssertAssertAsequential/center_crop/cond/crop_to_bounding_box/GreaterEqual:z:0Nsequential/center_crop/cond/crop_to_bounding_box/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 Г
Asequential/center_crop/cond/crop_to_bounding_box/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
value	B : в
?sequential/center_crop/cond/crop_to_bounding_box/GreaterEqual_1GreaterEqual$sequential/center_crop/cond/Cast:y:0Jsequential/center_crop/cond/crop_to_bounding_box/GreaterEqual_1/y:output:0*
T0*
_output_shapes
: Ы
?sequential/center_crop/cond/crop_to_bounding_box/Assert_1/ConstConst*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.£
Gsequential/center_crop/cond/crop_to_bounding_box/Assert_1/Assert/data_0Const*
_output_shapes
: *
dtype0*,
value#B! Boffset_height must be >= 0.м
@sequential/center_crop/cond/crop_to_bounding_box/Assert_1/AssertAssertCsequential/center_crop/cond/crop_to_bounding_box/GreaterEqual_1:z:0Psequential/center_crop/cond/crop_to_bounding_box/Assert_1/Assert/data_0:output:0?^sequential/center_crop/cond/crop_to_bounding_box/Assert/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 y
6sequential/center_crop/cond/crop_to_bounding_box/add/xConst*
_output_shapes
: *
dtype0*
value
B :а«
4sequential/center_crop/cond/crop_to_bounding_box/addAddV2?sequential/center_crop/cond/crop_to_bounding_box/add/x:output:0&sequential/center_crop/cond/Cast_1:y:0*
T0*
_output_shapes
: 
<sequential/center_crop/cond/crop_to_bounding_box/LessEqual/yConst*
_output_shapes
: *
dtype0*
value
B :Мй
:sequential/center_crop/cond/crop_to_bounding_box/LessEqual	LessEqual8sequential/center_crop/cond/crop_to_bounding_box/add:z:0Esequential/center_crop/cond/crop_to_bounding_box/LessEqual/y:output:0*
T0*
_output_shapes
: °
?sequential/center_crop/cond/crop_to_bounding_box/Assert_2/ConstConst*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.©
Gsequential/center_crop/cond/crop_to_bounding_box/Assert_2/Assert/data_0Const*
_output_shapes
: *
dtype0*2
value)B' B!width must be >= target + offset.й
@sequential/center_crop/cond/crop_to_bounding_box/Assert_2/AssertAssert>sequential/center_crop/cond/crop_to_bounding_box/LessEqual:z:0Psequential/center_crop/cond/crop_to_bounding_box/Assert_2/Assert/data_0:output:0A^sequential/center_crop/cond/crop_to_bounding_box/Assert_1/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 {
8sequential/center_crop/cond/crop_to_bounding_box/add_1/xConst*
_output_shapes
: *
dtype0*
value
B :а…
6sequential/center_crop/cond/crop_to_bounding_box/add_1AddV2Asequential/center_crop/cond/crop_to_bounding_box/add_1/x:output:0$sequential/center_crop/cond/Cast:y:0*
T0*
_output_shapes
: Б
>sequential/center_crop/cond/crop_to_bounding_box/LessEqual_1/yConst*
_output_shapes
: *
dtype0*
value
B :ап
<sequential/center_crop/cond/crop_to_bounding_box/LessEqual_1	LessEqual:sequential/center_crop/cond/crop_to_bounding_box/add_1:z:0Gsequential/center_crop/cond/crop_to_bounding_box/LessEqual_1/y:output:0*
T0*
_output_shapes
: Ґ
?sequential/center_crop/cond/crop_to_bounding_box/Assert_3/ConstConst*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.™
Gsequential/center_crop/cond/crop_to_bounding_box/Assert_3/Assert/data_0Const*
_output_shapes
: *
dtype0*3
value*B( B"height must be >= target + offset.л
@sequential/center_crop/cond/crop_to_bounding_box/Assert_3/AssertAssert@sequential/center_crop/cond/crop_to_bounding_box/LessEqual_1:z:0Psequential/center_crop/cond/crop_to_bounding_box/Assert_3/Assert/data_0:output:0A^sequential/center_crop/cond/crop_to_bounding_box/Assert_2/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 У
Csequential/center_crop/cond/crop_to_bounding_box/control_dependencyIdentityOsequential_center_crop_cond_crop_to_bounding_box_shape_sequential_rescaling_add?^sequential/center_crop/cond/crop_to_bounding_box/Assert/AssertA^sequential/center_crop/cond/crop_to_bounding_box/Assert_1/AssertA^sequential/center_crop/cond/crop_to_bounding_box/Assert_2/AssertA^sequential/center_crop/cond/crop_to_bounding_box/Assert_3/Assert*
T0*+
_class!
loc:@sequential/rescaling/add*1
_output_shapes
:€€€€€€€€€аМz
8sequential/center_crop/cond/crop_to_bounding_box/stack/0Const*
_output_shapes
: *
dtype0*
value	B : z
8sequential/center_crop/cond/crop_to_bounding_box/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ј
6sequential/center_crop/cond/crop_to_bounding_box/stackPackAsequential/center_crop/cond/crop_to_bounding_box/stack/0:output:0$sequential/center_crop/cond/Cast:y:0&sequential/center_crop/cond/Cast_1:y:0Asequential/center_crop/cond/crop_to_bounding_box/stack/3:output:0*
N*
T0*
_output_shapes
:¬
8sequential/center_crop/cond/crop_to_bounding_box/Shape_1ShapeLsequential/center_crop/cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕО
Dsequential/center_crop/cond/crop_to_bounding_box/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Р
Fsequential/center_crop/cond/crop_to_bounding_box/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Р
Fsequential/center_crop/cond/crop_to_bounding_box/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
>sequential/center_crop/cond/crop_to_bounding_box/strided_sliceStridedSliceAsequential/center_crop/cond/crop_to_bounding_box/Shape_1:output:0Msequential/center_crop/cond/crop_to_bounding_box/strided_slice/stack:output:0Osequential/center_crop/cond/crop_to_bounding_box/strided_slice/stack_1:output:0Osequential/center_crop/cond/crop_to_bounding_box/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¬
8sequential/center_crop/cond/crop_to_bounding_box/Shape_2ShapeLsequential/center_crop/cond/crop_to_bounding_box/control_dependency:output:0*
T0*
_output_shapes
::нѕР
Fsequential/center_crop/cond/crop_to_bounding_box/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Т
Hsequential/center_crop/cond/crop_to_bounding_box/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Т
Hsequential/center_crop/cond/crop_to_bounding_box/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:–
@sequential/center_crop/cond/crop_to_bounding_box/strided_slice_1StridedSliceAsequential/center_crop/cond/crop_to_bounding_box/Shape_2:output:0Osequential/center_crop/cond/crop_to_bounding_box/strided_slice_1/stack:output:0Qsequential/center_crop/cond/crop_to_bounding_box/strided_slice_1/stack_1:output:0Qsequential/center_crop/cond/crop_to_bounding_box/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
:sequential/center_crop/cond/crop_to_bounding_box/stack_1/1Const*
_output_shapes
: *
dtype0*
value
B :а}
:sequential/center_crop/cond/crop_to_bounding_box/stack_1/2Const*
_output_shapes
: *
dtype0*
value
B :аМ
8sequential/center_crop/cond/crop_to_bounding_box/stack_1PackGsequential/center_crop/cond/crop_to_bounding_box/strided_slice:output:0Csequential/center_crop/cond/crop_to_bounding_box/stack_1/1:output:0Csequential/center_crop/cond/crop_to_bounding_box/stack_1/2:output:0Isequential/center_crop/cond/crop_to_bounding_box/strided_slice_1:output:0*
N*
T0*
_output_shapes
:Џ
6sequential/center_crop/cond/crop_to_bounding_box/SliceSliceLsequential/center_crop/cond/crop_to_bounding_box/control_dependency:output:0?sequential/center_crop/cond/crop_to_bounding_box/stack:output:0Asequential/center_crop/cond/crop_to_bounding_box/stack_1:output:0*
Index0*
T0*1
_output_shapes
:€€€€€€€€€аа–
$sequential/center_crop/cond/IdentityIdentity?sequential/center_crop/cond/crop_to_bounding_box/Slice:output:0!^sequential/center_crop/cond/NoOp*
T0*1
_output_shapes
:€€€€€€€€€аам
 sequential/center_crop/cond/NoOpNoOp?^sequential/center_crop/cond/crop_to_bounding_box/Assert/AssertA^sequential/center_crop/cond/crop_to_bounding_box/Assert_1/AssertA^sequential/center_crop/cond/crop_to_bounding_box/Assert_2/AssertA^sequential/center_crop/cond/crop_to_bounding_box/Assert_3/Assert*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_center_crop_cond_identity-sequential/center_crop/cond/Identity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!: : :€€€€€€€€€аМ2А
>sequential/center_crop/cond/crop_to_bounding_box/Assert/Assert>sequential/center_crop/cond/crop_to_bounding_box/Assert/Assert2Д
@sequential/center_crop/cond/crop_to_bounding_box/Assert_1/Assert@sequential/center_crop/cond/crop_to_bounding_box/Assert_1/Assert2Д
@sequential/center_crop/cond/crop_to_bounding_box/Assert_2/Assert@sequential/center_crop/cond/crop_to_bounding_box/Assert_2/Assert2Д
@sequential/center_crop/cond/crop_to_bounding_box/Assert_3/Assert@sequential/center_crop/cond/crop_to_bounding_box/Assert_3/Assert:73
1
_output_shapes
:€€€€€€€€€аМ:

_output_shapes
: : 

_output_shapes
: 
Э
k
O__inference_random_translation_layer_call_and_return_conditional_losses_1108171

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аМ:Y U
1
_output_shapes
:€€€€€€€€€аМ
 
_user_specified_nameinputs
Ї
E
)__inference_flatten_layer_call_fn_1110126

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1108127a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€Р:X T
0
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
…	
ф
B__inference_dense_layer_call_and_return_conditional_losses_1108153

inputs1
matmul_readvariableop_resource:	Р-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≤
serving_defaultЮ
E
input_1:
serving_default_input_1:0€€€€€€€€€аМ9
dense0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:•ќ
ф
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer_with_weights-2

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer-15
layer-16
layer_with_weights-5
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Љ
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator"
_tf_keras_layer
Љ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator"
_tf_keras_layer
Љ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator"
_tf_keras_layer
•
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
•
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
 E_jit_compiled_convolution_op"
_tf_keras_layer
•
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias
 T_jit_compiled_convolution_op"
_tf_keras_layer
•
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
 c_jit_compiled_convolution_op"
_tf_keras_layer
•
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

pkernel
qbias
 r_jit_compiled_convolution_op"
_tf_keras_layer
•
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
я
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	Аbias
!Б_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"
_tf_keras_layer
√
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses
Ф_random_generator"
_tf_keras_layer
√
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
Ыkernel
	Ьbias"
_tf_keras_layer
y
C0
D1
R2
S3
a4
b5
p6
q7
8
А9
Ы10
Ь11"
trackable_list_wrapper
y
C0
D1
R2
S3
a4
b5
p6
q7
8
А9
Ы10
Ь11"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
г
Ґtrace_0
£trace_1
§trace_2
•trace_32р
,__inference_sequential_layer_call_fn_1108311
,__inference_sequential_layer_call_fn_1108386
,__inference_sequential_layer_call_fn_1108646
,__inference_sequential_layer_call_fn_1108675µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zҐtrace_0z£trace_1z§trace_2z•trace_3
ѕ
¶trace_0
Іtrace_1
®trace_2
©trace_32№
G__inference_sequential_layer_call_and_return_conditional_losses_1108160
G__inference_sequential_layer_call_and_return_conditional_losses_1108223
G__inference_sequential_layer_call_and_return_conditional_losses_1109189
G__inference_sequential_layer_call_and_return_conditional_losses_1109379µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¶trace_0zІtrace_1z®trace_2z©trace_3
ЌB 
"__inference__wrapped_model_1107477input_1"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£
™
_variables
Ђ_iterations
ђ_learning_rate
≠_index_dict
Ѓ
_momentums
ѓ_velocities
∞_update_step_xla"
experimentalOptimizer
-
±serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
≈
Јtrace_0
Єtrace_12К
-__inference_random_flip_layer_call_fn_1109446
-__inference_random_flip_layer_call_fn_1109451©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0zЄtrace_1
ы
єtrace_0
Їtrace_12ј
H__inference_random_flip_layer_call_and_return_conditional_losses_1109562
H__inference_random_flip_layer_call_and_return_conditional_losses_1109566©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zєtrace_0zЇtrace_1
/
ї
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
”
Ѕtrace_0
¬trace_12Ш
4__inference_random_translation_layer_call_fn_1109573
4__inference_random_translation_layer_call_fn_1109578©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЅtrace_0z¬trace_1
Й
√trace_0
ƒtrace_12ќ
O__inference_random_translation_layer_call_and_return_conditional_losses_1109694
O__inference_random_translation_layer_call_and_return_conditional_losses_1109698©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z√trace_0zƒtrace_1
/
≈
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
≈
Ћtrace_0
ћtrace_12К
-__inference_random_zoom_layer_call_fn_1109705
-__inference_random_zoom_layer_call_fn_1109710©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0zћtrace_1
ы
Ќtrace_0
ќtrace_12ј
H__inference_random_zoom_layer_call_and_return_conditional_losses_1109812
H__inference_random_zoom_layer_call_and_return_conditional_losses_1109816©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0zќtrace_1
/
ѕ
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
–non_trainable_variables
—layers
“metrics
 ”layer_regularization_losses
‘layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
з
’trace_02»
+__inference_rescaling_layer_call_fn_1109821Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z’trace_0
В
÷trace_02г
F__inference_rescaling_layer_call_and_return_conditional_losses_1109829Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z÷trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
„non_trainable_variables
Ўlayers
ўmetrics
 Џlayer_regularization_losses
џlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
й
№trace_02 
-__inference_center_crop_layer_call_fn_1109834Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z№trace_0
Д
Ёtrace_02е
H__inference_center_crop_layer_call_and_return_conditional_losses_1109971Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЁtrace_0
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
д
гtrace_02≈
(__inference_conv2d_layer_call_fn_1109980Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zгtrace_0
€
дtrace_02а
C__inference_conv2d_layer_call_and_return_conditional_losses_1109991Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zдtrace_0
*:(А 2conv2d/kernel
:А 2conv2d/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
л
кtrace_02ћ
/__inference_max_pooling2d_layer_call_fn_1109996Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zкtrace_0
Ж
лtrace_02з
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1110001Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zлtrace_0
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
ж
сtrace_02«
*__inference_conv2d_1_layer_call_fn_1110010Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zсtrace_0
Б
тtrace_02в
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1110021Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zтtrace_0
-:+Аа 2conv2d_1/kernel
:а 2conv2d_1/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
н
шtrace_02ќ
1__inference_max_pooling2d_1_layer_call_fn_1110026Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zшtrace_0
И
щtrace_02й
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1110031Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zщtrace_0
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
ж
€trace_02«
*__inference_conv2d_2_layer_call_fn_1110040Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z€trace_0
Б
Аtrace_02в
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1110051Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zАtrace_0
,:*аp 2conv2d_2/kernel
:p 2conv2d_2/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
н
Жtrace_02ќ
1__inference_max_pooling2d_2_layer_call_fn_1110056Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0
И
Зtrace_02й
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1110061Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
ж
Нtrace_02«
*__inference_conv2d_3_layer_call_fn_1110070Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
Б
Оtrace_02в
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1110081Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0
,:*pР 2conv2d_3/kernel
:Р 2conv2d_3/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
н
Фtrace_02ќ
1__inference_max_pooling2d_3_layer_call_fn_1110086Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zФtrace_0
И
Хtrace_02й
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1110091Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХtrace_0
/
0
А1"
trackable_list_wrapper
/
0
А1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
ж
Ыtrace_02«
*__inference_conv2d_4_layer_call_fn_1110100Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЫtrace_0
Б
Ьtrace_02в
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1110111Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЬtrace_0
-:+РР 2conv2d_4/kernel
:Р 2conv2d_4/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
н
Ґtrace_02ќ
1__inference_max_pooling2d_4_layer_call_fn_1110116Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zҐtrace_0
И
£trace_02й
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1110121Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z£trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
§non_trainable_variables
•layers
¶metrics
 Іlayer_regularization_losses
®layer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
е
©trace_02∆
)__inference_flatten_layer_call_fn_1110126Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z©trace_0
А
™trace_02б
D__inference_flatten_layer_call_and_return_conditional_losses_1110132Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z™trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
љ
∞trace_0
±trace_12В
)__inference_dropout_layer_call_fn_1110137
)__inference_dropout_layer_call_fn_1110142©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∞trace_0z±trace_1
у
≤trace_0
≥trace_12Є
D__inference_dropout_layer_call_and_return_conditional_losses_1110154
D__inference_dropout_layer_call_and_return_conditional_losses_1110159©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≤trace_0z≥trace_1
"
_generic_user_object
0
Ы0
Ь1"
trackable_list_wrapper
0
Ы0
Ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
г
єtrace_02ƒ
'__inference_dense_layer_call_fn_1110168Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zєtrace_0
ю
Їtrace_02я
B__inference_dense_layer_call_and_return_conditional_losses_1110178Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЇtrace_0
!:	Р 2dense/kernel
: 2
dense/bias
 "
trackable_list_wrapper
¶
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
(
ї0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
,__inference_sequential_layer_call_fn_1108311input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
,__inference_sequential_layer_call_fn_1108386input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_sequential_layer_call_fn_1108646inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_sequential_layer_call_fn_1108675inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ПBМ
G__inference_sequential_layer_call_and_return_conditional_losses_1108160input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ПBМ
G__inference_sequential_layer_call_and_return_conditional_losses_1108223input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_sequential_layer_call_and_return_conditional_losses_1109189inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_sequential_layer_call_and_return_conditional_losses_1109379inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ч
Ђ0
Љ1
љ2
Њ3
њ4
ј5
Ѕ6
¬7
√8
ƒ9
≈10
∆11
«12
»13
…14
 15
Ћ16
ћ17
Ќ18
ќ19
ѕ20
–21
—22
“23
”24"
trackable_list_wrapper
:	  2	iteration
:  2learning_rate
 "
trackable_dict_wrapper
В
Љ0
Њ1
ј2
¬3
ƒ4
∆5
»6
 7
ћ8
ќ9
–10
“11"
trackable_list_wrapper
В
љ0
њ1
Ѕ2
√3
≈4
«5
…6
Ћ7
Ќ8
ѕ9
—10
”11"
trackable_list_wrapper
—
‘trace_0
’trace_1
÷trace_2
„trace_3
Ўtrace_4
ўtrace_5
Џtrace_6
џtrace_7
№trace_8
Ёtrace_9
ёtrace_10
яtrace_112ъ
$__inference__update_step_xla_1109384
$__inference__update_step_xla_1109389
$__inference__update_step_xla_1109394
$__inference__update_step_xla_1109399
$__inference__update_step_xla_1109404
$__inference__update_step_xla_1109409
$__inference__update_step_xla_1109414
$__inference__update_step_xla_1109419
$__inference__update_step_xla_1109424
$__inference__update_step_xla_1109429
$__inference__update_step_xla_1109434
$__inference__update_step_xla_1109439ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0z‘trace_0z’trace_1z÷trace_2z„trace_3zЎtrace_4zўtrace_5zЏtrace_6zџtrace_7z№trace_8zЁtrace_9zёtrace_10zяtrace_11
ћB…
%__inference_signature_wrapper_1108611input_1"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
иBе
-__inference_random_flip_layer_call_fn_1109446inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
иBе
-__inference_random_flip_layer_call_fn_1109451inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
H__inference_random_flip_layer_call_and_return_conditional_losses_1109562inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
H__inference_random_flip_layer_call_and_return_conditional_losses_1109566inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
/
а
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
4__inference_random_translation_layer_call_fn_1109573inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
4__inference_random_translation_layer_call_fn_1109578inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
O__inference_random_translation_layer_call_and_return_conditional_losses_1109694inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
O__inference_random_translation_layer_call_and_return_conditional_losses_1109698inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
/
б
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
иBе
-__inference_random_zoom_layer_call_fn_1109705inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
иBе
-__inference_random_zoom_layer_call_fn_1109710inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
H__inference_random_zoom_layer_call_and_return_conditional_losses_1109812inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
H__inference_random_zoom_layer_call_and_return_conditional_losses_1109816inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
/
в
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_rescaling_layer_call_fn_1109821inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_rescaling_layer_call_and_return_conditional_losses_1109829inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
„B‘
-__inference_center_crop_layer_call_fn_1109834inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
H__inference_center_crop_layer_call_and_return_conditional_losses_1109971inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv2d_layer_call_fn_1109980inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv2d_layer_call_and_return_conditional_losses_1109991inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўB÷
/__inference_max_pooling2d_layer_call_fn_1109996inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1110001inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
‘B—
*__inference_conv2d_1_layer_call_fn_1110010inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1110021inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_1_layer_call_fn_1110026inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1110031inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
‘B—
*__inference_conv2d_2_layer_call_fn_1110040inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1110051inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_2_layer_call_fn_1110056inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1110061inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
‘B—
*__inference_conv2d_3_layer_call_fn_1110070inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1110081inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_3_layer_call_fn_1110086inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1110091inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
‘B—
*__inference_conv2d_4_layer_call_fn_1110100inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1110111inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_4_layer_call_fn_1110116inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1110121inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_flatten_layer_call_fn_1110126inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_flatten_layer_call_and_return_conditional_losses_1110132inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
дBб
)__inference_dropout_layer_call_fn_1110137inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_layer_call_fn_1110142inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_layer_call_and_return_conditional_losses_1110154inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_layer_call_and_return_conditional_losses_1110159inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
—Bќ
'__inference_dense_layer_call_fn_1110168inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
B__inference_dense_layer_call_and_return_conditional_losses_1110178inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
г	variables
д	keras_api

еtotal

жcount"
_tf_keras_metric
/:-А 2Adam/m/conv2d/kernel
/:-А 2Adam/v/conv2d/kernel
!:А 2Adam/m/conv2d/bias
!:А 2Adam/v/conv2d/bias
2:0Аа 2Adam/m/conv2d_1/kernel
2:0Аа 2Adam/v/conv2d_1/kernel
#:!а 2Adam/m/conv2d_1/bias
#:!а 2Adam/v/conv2d_1/bias
1:/аp 2Adam/m/conv2d_2/kernel
1:/аp 2Adam/v/conv2d_2/kernel
": p 2Adam/m/conv2d_2/bias
": p 2Adam/v/conv2d_2/bias
1:/pР 2Adam/m/conv2d_3/kernel
1:/pР 2Adam/v/conv2d_3/kernel
#:!Р 2Adam/m/conv2d_3/bias
#:!Р 2Adam/v/conv2d_3/bias
2:0РР 2Adam/m/conv2d_4/kernel
2:0РР 2Adam/v/conv2d_4/kernel
#:!Р 2Adam/m/conv2d_4/bias
#:!Р 2Adam/v/conv2d_4/bias
&:$	Р 2Adam/m/dense/kernel
&:$	Р 2Adam/v/dense/kernel
: 2Adam/m/dense/bias
: 2Adam/v/dense/bias
пBм
$__inference__update_step_xla_1109384gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109389gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109394gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109399gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109404gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109409gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109414gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109419gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109424gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109429gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109434gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
$__inference__update_step_xla_1109439gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
": 	 2random_flip/StateVar
):'	 2random_translation/StateVar
": 	 2random_zoom/StateVar
0
е0
ж1"
trackable_list_wrapper
.
г	variables"
_generic_user_object
:  (2total
:  (2count©
$__inference__update_step_xla_1109384АzҐw
pҐm
"К
gradientА
=Т:	&Ґ#
ъА
А
p
` VariableSpec 
`†зЬЅµэ?
™ "
 Р
$__inference__update_step_xla_1109389hbҐ_
XҐU
К
gradientА
1Т.	Ґ
ъА
А
p
` VariableSpec 
`аС…јіэ?
™ "
 Ђ
$__inference__update_step_xla_1109394В|Ґy
rҐo
#К 
gradientАа
>Т;	'Ґ$
ъАа
А
p
` VariableSpec 
`јЛєјіэ?
™ "
 Р
$__inference__update_step_xla_1109399hbҐ_
XҐU
К
gradientа
1Т.	Ґ
ъа
А
p
` VariableSpec 
`АЙєјіэ?
™ "
 ©
$__inference__update_step_xla_1109404АzҐw
pҐm
"К
gradientаp
=Т:	&Ґ#
ъаp
А
p
` VariableSpec 
`аЦЈјіэ?
™ "
 О
$__inference__update_step_xla_1109409f`Ґ]
VҐS
К
gradientp
0Т-	Ґ
ъp
А
p
` VariableSpec 
`†≤Јјіэ?
™ "
 ©
$__inference__update_step_xla_1109414АzҐw
pҐm
"К
gradientpР
=Т:	&Ґ#
ъpР
А
p
` VariableSpec 
`†йЈјіэ?
™ "
 Р
$__inference__update_step_xla_1109419hbҐ_
XҐU
К
gradientР
1Т.	Ґ
ъР
А
p
` VariableSpec 
`јБЈјіэ?
™ "
 Ђ
$__inference__update_step_xla_1109424В|Ґy
rҐo
#К 
gradientРР
>Т;	'Ґ$
ъРР
А
p
` VariableSpec 
`†…ојіэ?
™ "
 Р
$__inference__update_step_xla_1109429hbҐ_
XҐU
К
gradientР
1Т.	Ґ
ъР
А
p
` VariableSpec 
`адојіэ?
™ "
 Ш
$__inference__update_step_xla_1109434pjҐg
`Ґ]
К
gradient	Р
5Т2	Ґ
ъ	Р
А
p
` VariableSpec 
`ј§ујіэ?
™ "
 О
$__inference__update_step_xla_1109439f`Ґ]
VҐS
К
gradient
0Т-	Ґ
ъ
А
p
` VariableSpec 
`аЇрјіэ?
™ "
 Ґ
"__inference__wrapped_model_1107477|CDRSabpqАЫЬ:Ґ7
0Ґ-
+К(
input_1€€€€€€€€€аМ
™ "-™*
(
denseК
dense€€€€€€€€€њ
H__inference_center_crop_layer_call_and_return_conditional_losses_1109971s9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аМ
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аа
Ъ Щ
-__inference_center_crop_layer_call_fn_1109834h9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аМ
™ "+К(
unknown€€€€€€€€€ааЊ
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1110021uRS8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€ooА
™ "5Ґ2
+К(
tensor_0€€€€€€€€€mmа
Ъ Ш
*__inference_conv2d_1_layer_call_fn_1110010jRS8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€ooА
™ "*К'
unknown€€€€€€€€€mmаљ
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1110051tab8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€66а
™ "4Ґ1
*К'
tensor_0€€€€€€€€€44p
Ъ Ч
*__inference_conv2d_2_layer_call_fn_1110040iab8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€66а
™ ")К&
unknown€€€€€€€€€44pљ
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1110081tpq7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€p
™ "5Ґ2
+К(
tensor_0€€€€€€€€€Р
Ъ Ч
*__inference_conv2d_3_layer_call_fn_1110070ipq7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€p
™ "*К'
unknown€€€€€€€€€Рњ
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1110111vА8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€Р
™ "5Ґ2
+К(
tensor_0€€€€€€€€€

Р
Ъ Щ
*__inference_conv2d_4_layer_call_fn_1110100kА8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€Р
™ "*К'
unknown€€€€€€€€€

Рњ
C__inference_conv2d_layer_call_and_return_conditional_losses_1109991xCD9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "7Ґ4
-К*
tensor_0€€€€€€€€€ёёА
Ъ Щ
(__inference_conv2d_layer_call_fn_1109980mCD9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ ",К)
unknown€€€€€€€€€ёёАђ
B__inference_dense_layer_call_and_return_conditional_losses_1110178fЫЬ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Р
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ж
'__inference_dense_layer_call_fn_1110168[ЫЬ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Р
™ "!К
unknown€€€€€€€€€≠
D__inference_dropout_layer_call_and_return_conditional_losses_1110154e4Ґ1
*Ґ'
!К
inputs€€€€€€€€€Р
p
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Р
Ъ ≠
D__inference_dropout_layer_call_and_return_conditional_losses_1110159e4Ґ1
*Ґ'
!К
inputs€€€€€€€€€Р
p 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Р
Ъ З
)__inference_dropout_layer_call_fn_1110137Z4Ґ1
*Ґ'
!К
inputs€€€€€€€€€Р
p
™ ""К
unknown€€€€€€€€€РЗ
)__inference_dropout_layer_call_fn_1110142Z4Ґ1
*Ґ'
!К
inputs€€€€€€€€€Р
p 
™ ""К
unknown€€€€€€€€€Р±
D__inference_flatten_layer_call_and_return_conditional_losses_1110132i8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€Р
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Р
Ъ Л
)__inference_flatten_layer_call_fn_1110126^8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€Р
™ ""К
unknown€€€€€€€€€Рц
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1110031•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_1_layer_call_fn_1110026ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ц
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1110061•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_2_layer_call_fn_1110056ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ц
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1110091•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_3_layer_call_fn_1110086ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ц
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1110121•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_4_layer_call_fn_1110116ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1110001•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ќ
/__inference_max_pooling2d_layer_call_fn_1109996ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€«
H__inference_random_flip_layer_call_and_return_conditional_losses_1109562{а=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аМ
Ъ √
H__inference_random_flip_layer_call_and_return_conditional_losses_1109566w=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аМ
Ъ °
-__inference_random_flip_layer_call_fn_1109446pа=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p
™ "+К(
unknown€€€€€€€€€аМЭ
-__inference_random_flip_layer_call_fn_1109451l=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p 
™ "+К(
unknown€€€€€€€€€аМќ
O__inference_random_translation_layer_call_and_return_conditional_losses_1109694{б=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аМ
Ъ  
O__inference_random_translation_layer_call_and_return_conditional_losses_1109698w=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аМ
Ъ ®
4__inference_random_translation_layer_call_fn_1109573pб=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p
™ "+К(
unknown€€€€€€€€€аМ§
4__inference_random_translation_layer_call_fn_1109578l=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p 
™ "+К(
unknown€€€€€€€€€аМ«
H__inference_random_zoom_layer_call_and_return_conditional_losses_1109812{в=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аМ
Ъ √
H__inference_random_zoom_layer_call_and_return_conditional_losses_1109816w=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аМ
Ъ °
-__inference_random_zoom_layer_call_fn_1109705pв=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p
™ "+К(
unknown€€€€€€€€€аМЭ
-__inference_random_zoom_layer_call_fn_1109710l=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аМ
p 
™ "+К(
unknown€€€€€€€€€аМљ
F__inference_rescaling_layer_call_and_return_conditional_losses_1109829s9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аМ
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аМ
Ъ Ч
+__inference_rescaling_layer_call_fn_1109821h9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аМ
™ "+К(
unknown€€€€€€€€€аМ’
G__inference_sequential_layer_call_and_return_conditional_losses_1108160ЙабвCDRSabpqАЫЬBҐ?
8Ґ5
+К(
input_1€€€€€€€€€аМ
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ѕ
G__inference_sequential_layer_call_and_return_conditional_losses_1108223ГCDRSabpqАЫЬBҐ?
8Ґ5
+К(
input_1€€€€€€€€€аМ
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ‘
G__inference_sequential_layer_call_and_return_conditional_losses_1109189ИабвCDRSabpqАЫЬAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аМ
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ќ
G__inference_sequential_layer_call_and_return_conditional_losses_1109379ВCDRSabpqАЫЬAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аМ
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѓ
,__inference_sequential_layer_call_fn_1108311~абвCDRSabpqАЫЬBҐ?
8Ґ5
+К(
input_1€€€€€€€€€аМ
p

 
™ "!К
unknown€€€€€€€€€®
,__inference_sequential_layer_call_fn_1108386xCDRSabpqАЫЬBҐ?
8Ґ5
+К(
input_1€€€€€€€€€аМ
p 

 
™ "!К
unknown€€€€€€€€€≠
,__inference_sequential_layer_call_fn_1108646}абвCDRSabpqАЫЬAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аМ
p

 
™ "!К
unknown€€€€€€€€€І
,__inference_sequential_layer_call_fn_1108675wCDRSabpqАЫЬAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аМ
p 

 
™ "!К
unknown€€€€€€€€€±
%__inference_signature_wrapper_1108611ЗCDRSabpqАЫЬEҐB
Ґ 
;™8
6
input_1+К(
input_1€€€€€€€€€аМ"-™*
(
denseК
dense€€€€€€€€€