def diagrama_a_pseudocodigo():
    a = int(input('Introduzca el primer número: '))
    b = int(input('Introduzca el segundo número: '))

    while b != 0:
        if a > b:
            a = a - b
        else:
            b = b - a

    print(a)

diagrama_a_pseudocodigo()
