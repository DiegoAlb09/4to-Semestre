import math

def newton_raphson(fun,der,x0, e, N):
    for n in range(N + 1):
        #Se revisa que la funcion no sea 0
        f_x = fun(x0)
        if f_x < e:
            print("La raiz es: ", x0)
            return x0
        #Se revisa que la derivada no sea 0
        d_f = der(x0)
        if d_f == 0:
            print("La derivada es 0")
            return None
        
        #Siguiente punto
        x0 = x0 - f_x / d_f
    print("El metodo fracaso despues de %d iteraciones" % N)
    return None