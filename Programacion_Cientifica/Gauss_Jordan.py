#Alumno: Diego Alberto Aranda Gonzalez

#Programa que resuelve un sistema de ecuaciones lineales por el metodo de Gauss-Jordan
import numpy as np
import sys

def main():
    print("----Metodo Gauss-Jordan----")
    print("Introduce el numero de variables: ")
    n = int(input())

    #Creamos la matriz de coeficientes
    a = np.zeros((n,n+1))
    #Creamos la matriz de soluciones
    x = np.zeros(n)

    #Pedimos los coeficientes
    print("Introduce los coeficientes de la matriz de coeficientes: ")
    for i in range(n):
        for j in range(n+1):
            a[i][j] = float(input("a["+str(i)+"]["+str(j)+"]= "))
    
    #Mostramos la matriz de coeficientes
    print("La matriz de coeficientes es: ")
    for i in range(n):
        for j in range(n):
            print(a[i][j], end=" ")
        print("|",a[i][n])
        
    #Aplicamos el metodo de Gauss-Jordan
    for i in range(n):
        if a[i][i] == 0.0:
            sys.exit("No se puede dividir entre 0")
        for j in range(n):
            if i != j:
                ratio = a[j][i]/a[i][i]
                for k in range(n+1):
                    a[j][k] = a[j][k] - ratio * a[i][k]
    
    #Mostramos la matriz triangular superior
    print("La matriz triangular superior es: ")
    for i in range(n):
        for j in range(n):
            print(a[i][j], end=" ")
        print("|",a[i][n])
    
    #Obtenemos las soluciones
    for i in range(n):
        x[i] = a[i][n]/a[i][i]

    #Mostramos las soluciones
    print("Las soluciones son: ")
    for i in range(n):
        print("x[",i,"] = ",x[i], end="\t")


main()