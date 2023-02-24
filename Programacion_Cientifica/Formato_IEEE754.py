#Diego Alberto Aranda Gonzalez

#Programa que convierte un numero decimal a su representacion en IEEE754

#Decimal a binario
def bin(n):

    #Convertir a positivo

    if n < 0:
        n = n * -1

    #Separar parte entera y decimal

    parteEntera = int(n)
    parteDecimal = n - parteEntera

    #Convertir parte entera a binario
    binarioEntero = ""
    while parteEntera > 0:
        binarioEntero = str(parteEntera % 2) + binarioEntero
        parteEntera = parteEntera // 2

    #Convertir parte decimal a binario
    binarioDecimal = ""
    while parteDecimal > 0:
        parteDecimal = parteDecimal * 2
        if parteDecimal >= 1:
            binarioDecimal = binarioDecimal + "1"
            parteDecimal = parteDecimal - 1
        else:
            binarioDecimal = binarioDecimal + "0"
    binario = binarioEntero + "." + binarioDecimal
    return binario

#Fornato IEEE754
def IEEE754(n):
    binario2 = bin(n)
    binario3 = binario2
    print("binario", binario2)

    #Normalizar el numero
    punto = binario2.find(".")
    primer1 = binario2.find("1")
    binario2 = binario2.replace(".", "")
    binario2 = binario2[:primer1+1] + "." + binario2[primer1+1:]
    print("binario normalizado", binario2)

    #Encontrar exponente
    punto_inicio = binario3.find(".")
    punto_normal = binario2.find(".")
    exponente = punto_inicio - punto_normal
    print("exponente", exponente)
    Exponete_sesg = 127 + exponente
    Exponete_sesg_bin = bin(Exponete_sesg)
    Exponete_sesg_bin = Exponete_sesg_bin.replace(".", "")

    print("exponente sesgado", Exponete_sesg_bin)
    
    #signo
    signo = 0
    if n < 0:
        signo = 1
    print("signo", signo)

    #Encontrar mantisa
    matisa = binario2[2:]
    for i in range(23-len(matisa)):
        matisa = matisa + "0"
    print("mantisa", matisa)

    #IEEE754
    convert = str(signo) + Exponete_sesg_bin + matisa
    print("IEEE754", convert)
    return convert

#Main
n = float(input("Ingrese un numero decimal: "))
IEEE754(n)