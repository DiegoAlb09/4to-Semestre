#Programa capaz de sacar la raiz de una funcion apartir del metodo de punto fijo

import numpy as np
from scipy.optimize import fixed_point
import matplotlib.pyplot as plt

def f(x):
    return np.cos(x)

expresion = f
x0 = 0.5
x_star = fixed_point(expresion, x0)

print("La solucion del punto fijo es: ",x_star)

x = np.linspace(-2*np.pi, 2*np.pi, 1000)
y = f(x)

fig, ax = plt.subplots()
ax.plot(x, y, label='f(x) = cos(x)')

ax.plot([x_star], [f(x_star)], marker = 'o', markersize = 10, color = "red", label = 'Solucion del Punto Fijo')

ax.axhline(y=0, color='black', lw = 0.5)
ax.axvline(x=0, color='black', lw = 0.5)
ax.legend()
ax.set_xlabel('x')
ax.set_ylabel('f(x)')
ax.set_title('Punto Fijo')
plt.show()
