
def biseccion(fun,a,b,e,N):
    while N > 0:
        x = (a + b)/2
        fx = fun(x)
        if fx < 0:
            a = x
        else:
            b = x
        N = N - 1
        if abs(fx) < e:
            break
    print ("El numero de iteraciones es: ", N)
    print ("El intervolo es: ", "(",a,",",b,")")
    print ("El error es: ", (b-a)/2)
    print("La raiz es: ", x)
    return x
