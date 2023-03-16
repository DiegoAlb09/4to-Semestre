#Elaborar un programa que calcule la raiz de una funcion con el metodo de biseccion

#Variables
x = 0
#Funcion
print ("Problema 1")
print ("Funcion: 4*x**2 - 5*x")
fx = 4*x**2 - 5*x
#Intervalo
a = 1
b = 1.6
#Margen de error
e = 0.01

#Realizar iteraciones 
i = 0

while i < 200:
    x = (a + b)/2
    fx = 4*x**2 - 5*x
    if fx < 0:
        a = x
    else:
        b = x
    i = i + 1
    if abs(fx) < e:
        break
print ("El numero de iteraciones es: ", i)
print ("El intervolo es: ", a, b)
print ("El error es: ", (b-a)/2)
print("La raiz es: ", x)

#Problema 2
print("Problema 2")
print("Funcion: f(x) = -0.5x**2+2.5x+4.5")
print("a) Empleando la formula general")

#Formula General
a = -0.5
b = 2.5
c = 4.5

print ("Valor Positivo")
x1 = -b+((b**2-4*a*c)**0.5)/(2*a)
print("La raiz es: ", x1)

print ("Valor Negativo")
x1 = -b-((b**2-4*a*c)**0.5)/(2*a)
print("La raiz es: ", x1)

print("b) Metodo de biseccion")

a = 5
b = 10
i = 0
while i < 3:
    x = (a + b)/2
    fx = -0.5*x**2+2.5*x+4.5
    if fx < 0:
        a = x
    else:
        b = x
    i = i + 1
    if abs(fx) < e:
        break

print("El numero de iteraciones es: ", i)
print("El intervalo es: [",a,",",b,"]")
print("La raiz es: ", x)

print("c) Calcular el error estimado")
print("El error es: ", (b-a)/2)

print("d) Calcular el error verdadero")
print("El error verdadero es: ", x1 - x)

