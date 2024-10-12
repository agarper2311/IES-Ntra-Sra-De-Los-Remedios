def calcular_maximo_comun_divisor():
    num1 = int(input("Introduzca el primer número: "))
    num2 = int(input("Introduzca el segundo número: "))
    
    # Los bucles for empiezan en 1 para evitar la división por 0
    
    print('Divisores de', num1, ':')
    for i in range(1, num1 + 1):
        if num1 % i == 0:
            print(i)
    
    print('Divisores de', num2, ':')
    for i in range(1, num2 + 1): 
        if num2 % i == 0:
            print(i)

    # Algoritmo de Euclides para calcular el MCD
    while num2 != 0:
        temp = num2
        num2 = num1 % num2
        num1 = temp

    print('El máximo común divisor es', num1)

calcular_maximo_comun_divisor()
