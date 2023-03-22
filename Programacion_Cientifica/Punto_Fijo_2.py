import math

#fx = input("Ingrese la funcion: ")
x0 = float(input("Ingrese el valor inicial: "))
tol = float(input("Ingrese la tolerancia: "))
n = int(input("Ingrese el numero maximo de iteraciones: "))

def f(x):
    return 2*math.e**x**2 - 5*x

def g(x):
    return 1/math.sqrt(1+x)

def Punto_FijoIte(x0, e, N):
    print("\n\n*** METODO DE PUNTO FIJO ***")
    step = 1
    flag = 1
    condition = True
    while condition:
        x1 = g(x0)
        print('Iteracion-%d, x1 = %0.6f y f(x1) = %0.6f' % (step, x1, f(x1)))
        x0 = x1

        step = step + 1

        if step > N:
            flag = 0
            break

        condition = abs(f(x1)) > e
    if flag == 1:
        print('\nLa raiz es: %0.8f' % x1)
    else:
        print('\nNo converge')

Punto_FijoIte(x0, tol, n)