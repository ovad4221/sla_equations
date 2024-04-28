import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


df1 = pd.read_csv('../build/tests/resulty_1.csv')
df2 = pd.read_csv('../build/tests/resulty_2.csv')
df3 = pd.read_csv('../build/tests/resulty_3.csv')
df5 = pd.read_csv('../build/tests/resulty_5.csv')

plt.figure(figsize=(8, 6), facecolor='#aaaaaa')

ax = plt.axes()
ax.set_facecolor('#353535')
ax.minorticks_on()

ax.grid(which='major', ls='--', color=(0.5, 0.5, 0.5, 0.1))
ax.grid(which='minor', color=(0.5, 0.5, 0.5, 0.1), linestyle=':')

plt.rcdefaults()

print(df1.head())

# a = np.array([[16, 0, 0, 0], [0, 18, 0, 0], [0, 0, 21, 0], [0, 0, 0, 24]])
# b = np.array([6, 6, 6, 6])
# sc_f = lambda x: np.dot(x.T, np.dot(a, x)) - np.dot(b.T, x)
#
# x = np.linspace(0, 0.5, 4)
# y = np.linspace(0, 0.5, 4)
# plt.contour(, , sc_f(np.linspace(0, 0.5, 4)))

# in h1 (l_min) and h3 (l_max)
plt.plot(df1.res0, df1.res3, label='1 t = 3/40')
plt.plot(df2.res0, df2.res3, label='2 Opt t')
plt.plot(df3.res0, df3.res3, label='3 FGD')
plt.plot(df5.res0, df5.res3, label='5 CG')

plt.ylabel(r'$x$', fontsize=15)
plt.xlabel(r'$y$', fontsize=15)

plt.legend(loc='lower right', fontsize=14)

plt.savefig('sr2.jpg')
plt.show()
