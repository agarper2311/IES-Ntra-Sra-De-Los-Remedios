user = input("Introduzca su nombre de usuario: ")
passwd = input("Introduzca su contraseña: ")

if user == "Angel" and passwd == "1234":
    print('Bienvenido {user}')

else:
    print(f"No existe el usuario {user}")