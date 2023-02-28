#3.- 2^n - N donde n es el numero de bits para la representacion del numero entero y N es el numero entero
#Convertir el resultante a binario
def metodo3(numero):
    if numero >= 0:
        #Definimos el numero de bits en 8
        N = 8
        n = numero
        resultado = 2**N - n
        binario = bin(resultado)
        binario = binario[2:]
        return binario
    else:
        #Si es negativo, lo convertimos a positivo
        numero = abs(numero-1)
        N = 8
        n = numero
        resultado = 2**N - n
        binario = bin(resultado)
        binario = binario[2:]
        return binario