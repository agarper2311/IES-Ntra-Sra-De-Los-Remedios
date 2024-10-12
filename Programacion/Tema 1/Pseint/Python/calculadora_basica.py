def calculadora_basica():
    

    num1 = int(input("Introduzca el primer número: "))
    num2 = int(input("Introduzca el segundo número: "))

    print ("Menú de selección: ")
    print ("1. suma")
    print ("2. resta")
    print ("3. Multiplicación")
    print ("4. División")
    opcion=int(input("introduzca el número de su opción: "))

    if opcion == 1:
        print('El resultado es: ' , num1 + num2)

    elif opcion == 2:
        print('El resultado es: ' , num1 - num2)
    
    elif opcion == 3:
        print('El resultado es: ' , num1 * num2)
    
    elif opcion == 4:
        print('El resultado es: ' , num1 / num2)
        print ('El resto de la operación es ' , num1 % num2)
    
    else:
        print("Opción incorrecta")

calculadora_basica()