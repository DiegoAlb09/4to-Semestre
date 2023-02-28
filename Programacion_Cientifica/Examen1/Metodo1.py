#Decimal a binario
def decimalABinario(numero):
    binario = ''
    if numero < 0:
        numero = abs(numero)
    while numero > 0:
        binario = str(numero % 2) + binario
        numero = numero // 2
    #La diferencia es que ahora lo llenamos con ceros a
    #  la izquierda para que sea de 8 bits
    for i in range (8-len(binario)):
        binario = '0' + binario
    return binario

#1.- C2(N) = C1(N) + 1
def metodo1(numero):
    #Lo convertimos a binario
    binario = decimalABinario(numero)
    complemento1 = ''
    #Invertimos los bits
    if numero > 0:
        for i in range(len(binario)):
            if binario[i] == '0':
                complemento1 += '1'
            else:
                complemento1 += '0'
        #Sumamos uno para obtener el complemento a 2
        complemento2 = int(complemento1, 2) + 1
        #Lo pasamos de decimal a binario
        complemento2 = decimalABinario(complemento2)
    else:
        #Si es negativo, lo convertimos a positivo 
        numero = abs(numero-1)
        #lo convertimos a binario
        complemento1 = decimalABinario(numero)
        #Diferencia es que en vez de sumar le restamos uno
        complemento2 = int(complemento1, 2) - 1
        complemento2 = decimalABinario(complemento2)
    return complemento2