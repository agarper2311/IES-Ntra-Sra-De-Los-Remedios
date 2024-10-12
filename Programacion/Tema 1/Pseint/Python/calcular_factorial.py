def calcular_factorial():
    factorial = 1
    n = int(input("Introduzca un número para calcular su factorial: "))
    print('La sucesión del factorial de ', n , ' es: ')

    for i in range(1, n + 1):  
        factorial = factorial * i
        print(i)  
        
    print('El factorial de ', n, ' es ', factorial)

calcular_factorial()
