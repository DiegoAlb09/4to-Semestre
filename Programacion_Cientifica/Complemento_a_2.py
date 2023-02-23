#Realizar un programa que pase numeros decimales positivos y negativos a complemento a 2
#Diego Alberto Aranda Gonzalez ID 262021
import sys

#Primer metodo para convertir a complemento a 2
print("            Primer metodo")
print("Obtener el complemento a 1 y sumarle 1")
print("---------------------------------------")

#Solicitamos el numero a convertir
num = int(input("Introduce un numero entero: "))

#Verificamos que el numero sea valido
if num > 2147483647:
    print("El numero es demasiado grande")
elif num < -2147483648:
    print("El numero es demasiado pequeño")
else:
    #Comprobamos si el numero es positivo o negativo
    if num >= 0:
        #Convertimos el numero a binario de 3 bytes
        binario = bin(num)[2:].zfill(3)
        print("El numero en binario es: ", binario)
        #Pasar el numero a complemento a 1
        complemento1 = ""
        for i in binario:
            if i == "0":
                complemento1 += "1"
            else:
                complemento1 += "0"
        print("El numero en complemento a 1 es: ", complemento1)
        #Para tener el complemento a 2 sumamos 1 al complemento a 1
        complemento2 = int(complemento1, 2) + 1
        bincomp2 = bin(complemento2)[2:].zfill(3)
        print("El numero en complemento a 2 es: ", bincomp2)
    else:
        print("Solo positivos")
        #Volvemos a llamar al programa

#Segundo metodo para convertir a complemento a 2
print("           Segundo metodo")
print("2^n - numero")
print("---------------------------------------")

#Solicitamos el numero a convertir
num = int(input("Introduce un numero entero: "))
#Verificamos que el numero sea valido
if num > 2147483647:
    print("El numero es demasiado grande")
elif num < -2147483648:
    print("El numero es demasiado pequeño")
else:
    #Comprobamos si el numero es positivo o negativo
    if num >= 0:
        #Convertimos el numero a binario de 3 bytes
        binario = bin(num)[2:].zfill(3)
        print("El numero en binario es: ", binario)
        #Pasar el numero a complemento a 2
        bitn = 2**3
        complemento2 = bitn - num
        bincomp2 = bin(complemento2)[2:].zfill(3)
        print("El numero en complemento a 2 es: ", bincomp2)
    else:
        print("Solo positivos")
