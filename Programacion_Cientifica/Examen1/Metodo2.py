from Metodo1 import decimalABinario
#2.- Buscar de izquierda a derecha el primer 1 y cambiarlo por 0 y los 0 por 1
def metodo2(numero):
    if numero >= 0:
        #Lo convertimos a binario
        binario = decimalABinario(numero)
        complemento1 = ''
        #Invertimos los bits
        for i in range(len(binario)):
            if binario[i] == '0':
                complemento1 += '1'
            else:
                complemento1 += '0'
        #Buscamos el primer 1
        for i in range(len(binario)):
            if binario[i] == '1':
                #Cambiamos el 1 por 0
                complemento1 = complemento1[:i] + '0' + complemento1[i+1:]
                break
        #Lo pasamos de decimal a binario
        complemento2 = decimalABinario(int(complemento1, 2))
    else:
        #Si es negativo, lo convertimos a positivo 
        numero = abs(numero-1)
        #lo convertimos a binario
        binario = decimalABinario(numero)
        complemento1 = ''
        #Invertimos los bits
        for i in range(len(binario)):
            if binario[i] == '0':
                complemento1 += '1'
            else:
                complemento1 += '0'
        #Buscamos el primer 1
        for i in range(len(binario)):
            if binario[i] == '1':
                #Cambiamos el 1 por 0
                complemento1 = complemento1[:i] + '0' + complemento1[i+1:]
                break
        #Lo pasamos de decimal a binario
        complemento2 = decimalABinario(int(complemento1, 2))
    return complemento2