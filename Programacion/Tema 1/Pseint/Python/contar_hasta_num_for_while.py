def contar_hasta_un_numero_bucle_repetir_mientras():
    conta = 0
    num_user = int(input('Introduzca un número: '))

    while conta <= num_user:
        for i in range(conta, num_user + 1):
            print(i)
            conta += 1 # Es lo mismo que conta = conta + 1
            if conta > num_user:
                break

contar_hasta_un_numero_bucle_repetir_mientras()
