# Creación de una máquina virtual 

$ virt-install \ -> Este comando lo usamos para la creación de la máquina virtual.

--name bookworm \ -> En este parámetro le asignamos el nombre a la máquina a nivel de libvirt para identificarla
de las demás que creemos posteriormente

--memory 1024 \ -> Con este parámetro asignamos la cantidad de memoria RAM en megabytes.

--disk size=4 \ -> En este comando estamos asignando 4 gigabytes de disco duro a nuestra máquina virtual.

--graphics none \ -> Con este parámetro le decimos que no queremos una interfaz gráfica.

--location /ruta/a la/imagen iso \ -> En este parámetro le decimos donde se encuentra la ruta de la imagen iso.

--extra-args "console=ttyS0 theme=dark" \ -> Con este parámetro le indicamos que queremos una consola serie para
poder interactuar con la máquina y teniendo el tema en oscuro.


# Comienzo de la configuración de la máquina virtual

## Apartado Select a languaje

Seleccionaremos la primera opción, es decir, "C".

## Apartado Select your location

Seleccionaremos Europe > Spain.

## Apartado Configure the keyboard

Seleccionaremos Spanish para la configuración del teclado en español.

## Apartado Configure the network

Hostname: pondremos bookworm -> Este nombre de nuestra máquina ya es a nivel de sistema operativo
para poder identificarla dentro de una red.
Domain name: lo dejamos en blanco

## Apartado Set up users and passwords

En la contraseña de root la dejaremos en blanco ya que queremos que nuestro usuario pueda tener
privilegios de administrador.

Full name for the new user:

Aquí pondremos nuestro nombre completo, en mi caso Ángel García Pérez

Username for you account:

Aquí pondremos nuestro "lorzaman", en mi caso garperan -> Este es nuestro nombre corto para el usuario

Choose a password for the new user:

Usaremos como contraseña nuestro lorzaman para evitar olvidar nuestra contraseña

## Apartado Configure the clock

Select a location in your time zone:

Elegiremos Madrid para la zona horaria si te encuentras en la península

## Apartado Partition disks

Usaremos la primera opción: Guided - use entire disk (guiado usar el disco entero)

Select disk to partition: seleccionamos el disco virtual que nos aparece en pantalla.

All files in one partition (recommended for new users): seleccionaremos esta opción para que ponga todos los 
archivos en una misma partición

Finish partitioning and write changes to disk: seleccionamos esta opción para finalizar los cambios del 
particionado

Seleccionamos que sí

## Apartado Configure the package manager

Seleccionamos que no.

Ahora seleccionamos el país de donde nos descargaremos los paquetes necesarios para la instalación.
Seleccionamos Spain.

El mirror que usaremos será el de: deb.debian.org

El proxy que usaremos será el siguiente: http://10.0.2.2:3142

La IP 10.0.2.2 es la ip de la conexión que tiene nuestra máquina virtual con nuestra máquina física.
Y usamos el puerto 3142 mediante el cuál se conectará al servidor o mirror.

## Apartado Configuring popularity-contest

Le decimos que no queremos participar en la encuesta de paquetes.

## Apartado Software selecction

Dejamos todo vacío y nos aseguramos de que está marcado la opción de SSH server y las utilidades estándar 
del sistema


## Configuring grub-pc

Aquí seleccionamos que sí, que queremos instalar el grub de arranque en nuestra unidad principal.

Sin él, no podríamos seleccionar el sistema operativo para poder interactuar con el.

Después seleccionamos en mi caso /dev/vda

## Apartado the installation

Seleccionamos Continue para reiniciar nuestra máquina
