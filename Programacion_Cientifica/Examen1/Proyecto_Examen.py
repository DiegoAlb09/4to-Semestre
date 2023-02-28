#Nombre: Diego Alberto Aranda Gonzalez
#Fecha: 27/02/2023

#a) Convertir enteros a complemento a 2 y viceversa con los tres metodos
#b) Hacer un programa con los tres metodos de conversion de entero a complemento a 2 y un metodo para complemento a 2 a entero.
from Metodo1 import metodo1
from Metodo2 import metodo2
from Metodo3 import metodo3

#Pasar de complemento a 2 a entero
def complementoa2_a_entero(compl):
    #Contamos el numero de bits que tiene el numero en binario
    bits = len(compl)
    if compl[0] == '0':
        #Si el primer bit es 0, es positivo
        numero = int(compl, 2)
    else:
        numero = int(compl, 2) - 2**(bits)
    return numero
    
#Menu de Metodos
def main():
    print("-------------------- MENU --------------------")
    print("1.- Convertir de entero a complemento a 2")
    print(" 1.1 .- Metodo 1")
    print(" 1.2 .- Metodo 2")
    print(" 1.3 .- Metodo 3")
    print("2.- Convertir de complemento a 2 a entero")
    print("3.- Salir")
    opcion = float(input("Opcion: "))
    while opcion != 3:
        if opcion == 1.1:
            numero = int(input("Valor: "))
            print("El complemento a 2 del numero ",numero," por el metodo 1 es: ", metodo1(numero))
        elif opcion == 1.2:
            numero = int(input("Numero: "))
            print("El complemento a 2 del numero ",numero," por el metodo 2 es: ", metodo2(numero))
        elif opcion == 1.3:
            numero = int(input("Numero: "))
            print("El complemento a 2 del numero ",numero," por el metodo 3 es: ", metodo3(numero))
        elif opcion == 2:
            complementoa2 = input("Numero: ")
            print("El complemento ",complementoa2," en entero es: ", complementoa2_a_entero(complementoa2))
        else:
            print("Opcion incorrecta")
        print("-------------------- MENU --------------------")
        print("1.- Convertir de entero a complemento a 2")
        print(" 1.1 .- Metodo 1")
        print(" 1.2 .- Metodo 2")
        print(" 1.3 .- Metodo 3")
        print("2.- Convertir de complemento a 2 a entero")
        print("3.- Salir")
        opcion = int(input("Opcion: "))
main()