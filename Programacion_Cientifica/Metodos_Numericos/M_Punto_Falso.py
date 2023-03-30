
def punto_falso(fun,a,b,e,N):
    while N > 0:
        #Evaluamos la funcion en los limites
        fa = fun(a)
        fb = fun(b)
        #Calculamos el punto medio
        x1 = (a*fb - b*fa)/(fb - fa)
        #Obtenemos el valor de la funcion en el punto medio
        fx1 = fun(x1)
        #Determinamos el nuevo intervalo
        if fx1 < 0:
            a = x1
        else:
            b = x1
        N = N - 1
        if abs(fx1) < e:
            break
    print ("El numero de iteraciones es: ", N)
    print ("El intervolo es: ", "(",a,",",b,")")
    print ("El error es: ", (b-a)/2)
    print("La raiz es: ", x1)
    return x1


    