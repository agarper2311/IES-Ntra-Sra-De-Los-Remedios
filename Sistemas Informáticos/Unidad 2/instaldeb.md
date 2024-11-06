## Ángel García Pérez

Aquí pondré el proceso de la creación de la máquina virtual


Empezamos con el primer comando:

virt-install -> Este comando lo usamos para la creación de la máquina 
virtual.

1º Parámetro:

--name bookworm -> Le asignamos el nombre a la máquina a nivel de libvirt 
para poder diferenciarla de las demás.

2º Parámetro:

--memory 1024 -> Le asignamos un 1gb de RAM en megabytes

3º Parámetro:

--disk size=4 -> Aquí le indicamos que tendrá 4 Gb de almacenamiento.

4º Parámetro:

--graphics none -> Aquí le decimos que no queremos una interfaz gráfica o 
harware gráfico.

5º Parámetro:

--location /ruta/a la/iso -> Aquí le pasamos la ruta donde se encuentra 
nuestra ISO.

6º Parámetro:

--extra-args "console=ttyS0 theme=dark languaje=C country=ES 
locale=es_ES.UTF-8" -> Le asignamos una consola en el ttyS0 que será donde 
nos conectemos, también le pasamos por parámetros que queremos un tema 
oscuro, lenguaje español y codificación UTF-8.

Y pulsamos Enter para iniciar la instalación.

## Configure the network

En hostname pondremos bookworm, este será el nombre de nuestra máquina 
virtual a nivel de sistema operativo para poder identificarla dentro de 
una red. El nombre de dominio lo dejamos en blanco.

## Set up users and passwords

Aquí la contraseña de root la dejaremos en blanco ya que queremos que 
nuestro usuario tenga privilegios de administrador.

Ahora debemos introducir nuestro nombre completo, en mi caso Ángel García 
Pérez

En esta parte pondremos nuestro "lorzaman" el mio sería garperan

Como contraseña pondré el mismo nombre de usuario para evitar olvidarla

## Configure the clock

Aquí elegiremos Madrid para la zona horaria


## Partition Disk

Aquí usaremos la primera opción, el modo guiado en el cuál usaremos el 
disco entero.

Seleccionamos la primera opción, todos los ficheros en una sola partición 
(para novatos).

Finalizamos los cambios en el disco

## Configure the package manager

Aquí le indicamos que no queremos escanear ningún dispositivo para 
continuar con la instalación ya que descargaremos los paquetes que nos 
hará falta.


Ahora seleccionamos nuestro país para descargar desde un espejo/servidor

Seleccionamos el mirror de deb.debian.org

Ahora como proxy pondremos lo siguiente: 

http://10.0.2.2:3142 -> 10.0.2.2 es la ip de la conexión que tiene nuestra 
máquina virtual con nuestra máquina física, y usaremos el puerto 3142 
mediante el cual se conectará al servidor.

Mediante este proxy los paquetes los descargo directamente desde mi 
máquina física ya que anteriormente he realizado otras instalaciones.

Como le hemos indicado a la máquina que no queremos interaz gráfica no 
seleccionaremos ningún tipo de escritorio.

Solo seleccionaremos en caso de que no estén seleccionadas las siguientes 
opciones: SSH Server y Utilidades estandar del sistema

## Configuring grub-pc

En ésta parte le indicamos que sí, que queremos instalar el grub de 
arranque en nuestra unidad principal, ya que sin el no podríamos arrancar 
la máquina

Seleccionamos /dev/vda o sda dependiendo en cada caso

Aquí seleccionamos que sí, reiniciaremos nuestra máquina virtual para 
finalizar la partición

Ahora solo ponemos nuestro nombre de login o nombre corto el "lorzaman" y 
nuestra contraseña para iniciar sesión

Y ya estaría todo.

Ahora haré un sudo poweroff para hacer un apagado limpio
