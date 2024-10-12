def funcion_par_impar():
    print('Vamos a comprobar si un número es par o no')
    print('')
    num = int(input('Introduzca un número: '))
    # Llamada a la función par_o_impar pasando como parámetro nuestra variable num
    tipo_numero = par_o_impar(num) 
    if tipo_numero == True: 
        print('El número introducido es par.')
    else:
        print('El número introducido es impar.')

def par_o_impar(num):
    if num % 2 == 0:
        return True
    else:
        return False

funcion_par_impar()
