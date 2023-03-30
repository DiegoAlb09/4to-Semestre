#Alumno: Diego Alberto Aranda Gonzalez

import math
from M_Biseccion import biseccion
from M_Newton_Raphson import newton_raphson
from M_Punto_Falso import punto_falso


def main():
    print("----Metodos Numericos----")
    print("1. Metodo de Biseccion")
    print("2. Metodo de Newton-Raphson")
    print("3. Metodo del Punto Falso")
    print("4. Salir")
    opcion = int(input("Opcion: "))
    while opcion != 4:
        if opcion == 1:
            print("Metodo de Biseccion")
            print("f(x) = 4*x**2 - 5*x")
            fun = lambda x: 4*x**2 - 5*x
            a = float(input("Limite inferior: "))
            b = float(input("Limite superior: "))
            e = float(input("Tolerancia: "))
            N = int(input("Numero de iteraciones: "))
            biseccion(fun,a,b,e,N)
        elif opcion == 2:
            print("Metodo de Newton-Raphson")
            print("f(x) = e^(-x) - x")
            fun = lambda x: math.e**(-x)-x
            der = lambda x: -math.e**(-x)-1
            x = float(input("Valor inicial: "))
            e = float(input("Tolerancia: "))
            N = int(input("Numero de iteraciones: "))
            newton_raphson(fun,der,x, e, N)
        elif opcion == 3:
            print("Metodo del Punto Falso")
            print("f(x) = e**(3*x)-4")
            fun = lambda x: math.e**(3*x)-4
            a = float(input("Limite inferior: "))
            b = float(input("Limite superior: "))
            e = float(input("Tolerancia: "))
            N = int(input("Numero de iteraciones: "))
            punto_falso(fun,a,b,e,N)
        else:
            print("Opcion incorrecta")
        print("----Metodos Numericos----")
        print("1. Metodo de Biseccion")
        print("2. Metodo de Newton-Raphson")
        print("3. Metodo del Punto Falso")
        print("4. Salir")
        opcion = int(input("Opcion: "))
    
main()
