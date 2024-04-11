import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


df = pd.read_csv('../build/tests/ravn.csv')

plt.figure(figsize=(8, 6), facecolor='#aaaaaa')

ax = plt.axes()
ax.set_facecolor('#353535')
ax.minorticks_on()

ax.grid(which='major', ls='--', color=(0.5, 0.5, 0.5, 0.1))
ax.grid(which='minor', color=(0.5, 0.5, 0.5, 0.1), linestyle=':')

plt.rcdefaults()

print(df.head())

plt.scatter(df.pc0, df.CSR_time, label='CSR')
plt.scatter(df.pc0, df.Dense_time, label='Dense')

plt.ylabel(r'$время$', fontsize=15)
plt.xlabel(r'% плотности', fontsize=15)

plt.legend(loc='lower right', fontsize=14)

plt.savefig('speed_Dense_CSR.jpg')
plt.show()
