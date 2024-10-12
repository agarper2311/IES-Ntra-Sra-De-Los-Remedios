def calcular_anio_bisiesto():
    print("Bienvenido al programa para calcular si un año es bisiesto o no.")

    anio = int(input("Introduzca el año a calcular: "))

    if (anio % 4 == 0 and anio % 100 != 0) or (anio % 400 == 0):
        print ('El año ' , anio , ' es bisiesto ' )
    else:
        print ('El año ' , anio , ' no es bisiesto')

calcular_anio_bisiesto()