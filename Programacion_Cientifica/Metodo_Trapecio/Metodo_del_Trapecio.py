#Equipo: Dante Alejandro Alegria Romero, Diego Alberto Aranda Gonzalez, Andrea Margarita Balandran Felix
#Proyecto: Metodos de Integracion Numerica

#librerias
import numpy as np
import matplotlib.pyplot as plt

#funcion principal
def main():
    print("Metodo del Trapecio")
    while True:
     funcion = input("Ingrese la funcion: ")
     a = float(input("Ingrese el intervalo a: "))
     b = float(input("Ingrese el intervalo b: "))
     #Validamos que la funcion tenga la sintaxis correcta y que se pueda evaluar en los intervalos
     try:
        x=a
        eval(funcion)
        x=b
        eval(funcion)
        x=(a+b)/2
        eval(funcion)
     except:
        print("Error en la funcion")
     else:
        break
    #Pedmiros el numero de tramos (trapecios)
    tramos = int(input("Ingrese el numero de tramos: "))
    #Llamamos la funcion del metodo del trapecio y la funcion para graficar
    trapecio(funcion,a,b,tramos)
    graficar(funcion,a,b,tramos)

#Funcion para evaluar la funcion
def fx(funcion,x):
    return eval(funcion)

def trapecio(funcion,a,b,tramos):
   #Calculamos el ancho de cada trapecio
   h = (b-a)/tramos 
   #El intervalo a es el primer valor de x
   xi = a
   #Calculamos la imagen del primer valor de x
   suma = fx(funcion,xi)
   #El ciclo for se repite tramos-1 veces a partir del segundo valor de x
   for i in range(0,tramos-1,1):
         #Calculamos el siguiente valor de x
         xi = xi + h
         #Calculamos la imagen del siguiente valor de x
         suma = suma + 2*fx(funcion,xi)
   #Calculamos la suma de las imagenes de los extremos
   suma = suma + fx(funcion,b)
   #Calculamos el area
   area = h*(suma/2)
   print("Tramos: ",tramos)
   print("Integral: ",area)

#Funcion para graficar
def graficar(funcion,a,b,tramos):
    muestras = tramos + 1
    xi = np.linspace(a,b,muestras)
    fi = fx(funcion,xi)

    muestraslinea = tramos*10 + 1
    xk = np.linspace(a,b,muestraslinea)
    fk = fx(funcion,xk)

    plt.plot(xk,fk,label='f(x)')
    plt.plot(xi,fi,marker='o',color = 'orange', label='muestras')
    plt.legend()

    plt.fill_between(xi,0,fi,color="g")
    for i in range(0,muestras,1):
        plt.axvline(xi[i],color='w')

    plt.show()

if __name__ == "__main__":
    main()