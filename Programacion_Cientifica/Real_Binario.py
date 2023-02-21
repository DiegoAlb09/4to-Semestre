#Pasar al formato IEEE 754 el numero real 32.0

#Paso 1: Convertir el numero a binario
def binario(n):
    if n == 0:
        return '0'
    else:
        return bin(n)[2:]
    
#Paso 2: Calcular el exponente
def exponente(n):
    if n == 0:
        return '00000000'
    else:
        return binario(len(binario(n)) - 1 + 127)

#Paso 3: Calcular el signo
def signo(n):
    if n >= 0:
        return '0'
    else:
        return '1'
        
#Paso 4: Calcular la mantisa
def mantisa(n):
    if n == 0:
        return '00000000000000000000000'
    else:
        if n > 0:
            return binario(n)[1:] + '00000000000000000000000'
        else:
            return binario(-n)[1:] + '00000000000000000000000'

#Paso 5: Imprimir el numero en formato IEEE 754
def imprimir(n):
    print(signo(n) + exponente(n) + mantisa(n))

#Paso 6: Imprimir el numero en formato IEEE 754
print("El numero 32.0 en formato IEEE 754 es:")
imprimir(32)
