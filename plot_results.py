import matplotlib.pyplot as plt
import numpy as np
import pandas
from scipy.optimize import curve_fit


def func(x, a):
    return a * x


wtData = pandas.read_csv('Z:/working/barryd/hpc/python/zf_reg/outputs/zf_regression_test_2022-06-27-08-57-27'
                         '/zf_regression_test_on_training_data_predictions.csv')
mutData = pandas.read_csv('Z:/working/barryd/hpc/python/zf_reg/outputs/zf_regression_test_25C_2022-06-27-16-17-36'
                          '/zf_regression_test_25C_predictions.csv')

wt_linear_model = np.polyfit(wtData['Label'], wtData['Prediction'], 1)
wt_linear_model_fn = np.poly1d(wt_linear_model)
kimmel_wt = np.polynomial.polynomial.Polynomial([0, 1])
wtpopt, wtpcov = curve_fit(func, wtData['Label'], wtData['Prediction'])
#print(wtpopt, np.sqrt(np.diag(wtpcov)))
mut_linear_model = np.polyfit(mutData['Label'], mutData['Prediction'], 1)
mut_linear_model_fn = np.poly1d(mut_linear_model)
kimmel_mut = np.polynomial.polynomial.Polynomial([0, 0.805])
mutpopt, mutpcov = curve_fit(func, mutData['Label'], mutData['Prediction'])
x_s = np.arange(0, 53)

lred = (0.85, 0.5, 0.2)
lblue = (0.3, 0.3, 0.55)
dred = (0.65, 0.3, 0.0)
dblue = (0.0, 0.0, 0.5)

plt.figure(figsize=(4.5, 4.5), dpi=200)
plt.plot(wtData['Label'], wtData['Prediction'], 'o', markersize=3, alpha=0.1, mfc=lblue, mec=lblue)
plt.plot(mutData['Label'], mutData['Prediction'], 'o', markersize=3, alpha=0.1, mfc=lred, mec=lred)
plt.plot(x_s, func(x_s, wtpopt), linewidth=2, color=dblue)
#y1 = (wtpopt - np.sqrt(np.diag(wtpcov))) * x_s
#y2 = (wtpopt + np.sqrt(np.diag(wtpcov))) * x_s
#plt.fill_between(x_s, y1, y2, color="blue", alpha = 0.3)
plt.plot(x_s, kimmel_wt(x_s), linewidth=2, linestyle='--', color=dblue)
plt.plot(x_s, func(x_s, mutpopt), linewidth=2, color=dred)
plt.plot(x_s, kimmel_mut(x_s), linewidth=2, linestyle='--', color=dred)
plt.xlabel("Actual HPF")
plt.ylabel("Predicted HPF")
plt.xlim(left=0, right=55)
plt.ylim(top=60, bottom=0)
plt.show()
