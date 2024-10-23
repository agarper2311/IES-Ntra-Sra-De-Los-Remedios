Comando loginctl 
Sirve para listar las sesiones abiertas en el ordenador

alumno@daw1-101:~$  loginctl
SESSION  UID USER 	SEAT  TTY
	292 1001 alumno   seat0
	299 1001 alumno   seat0 tty2
	307 1000 jcromero  	 

3 sessions listed.

El apartado de SEAT es para saber cuantos periféricos hay conectados.

loginctl activate <número de SESSION>

Programa por lotes: se ejecuta y termina en el momento.

Programa interactivo: se ejecuta y espera a que tu lo cierres. Ejemplo -> passwd pide la contraseña, la vuelve a pedir para confirmar y después se cierra cuando ya has cambiado la contraseña.

Parámetro -h para abrir la página help de ayuda en los comandos


loginctl lock-session <número de session> bloquea la sesión
loginctl unlock-session <número de session> desbloquea la sesión
loginctl terminate-session <número de session> termina con la sesión

loginctl list-users

alumno@daw1-101:~$ loginctl list-users
UID USER     LINGER
1000 jcromero no
1001 alumno   no






¿Qué es un Sistema Operativo?

Un sistema operativo es un programa que se encuentra entre el sistema informático y el usuario para que pueda interactuar con la máquina mediante programas.

El sistema operativo gestiona los recursos del sistema informático, el hardware: la CPU y la memoria (tanto RAM como Disco Duro).

Ejemplos de sistemas operativos: Windows, Linux, MacOS, Android, iOS…



Procesos: son programas que se están ejecutando

La CPU no entiende de procesos, el concepto de proceso lo introduce el sistema operativo

El sistema operativo hace uso de los driver para que el usuario pueda interactuar con cada uno del hardware agregado a la máquina.

¿Por qué existen los driver?

Los driver existen para  que la máquina pueda interactuar con el hardware del fabricante que sea. Dicho de otra manera, es un traductor entre el hardware y el sistema operativo.

Concepto de SHELL: Tipo de Interfaz ya sea GUI o CLI

Tipos de SHELL GUI: Plasma, GNOME, XFCE

Tipos de SHELL CLI: BASH


Otra cosa es el Emulador de terminal (ej: konsole en Debian) o una tty (si pulsamos ctrl+alt+F2)



Definición de máquina virtual
Es una máquina virtual que simula una máquina física, es decir, también hace uso de un procesador, RAM y disco duro, los recursos los consume de la máquina física.

Ventajas: No hay que hacer particiones de disco, si haces algún cambio en la máquina virtual no afecta en absoluto a la máquina física, con lo cuál esto es más seguro ya que no comprometemos la seguridad de la máquina física.

VPS: Virtual Private Server -> Servidor Privado Virtual.



Software de virtualización:

VirtualBox: 


Libvirt


En la creación de una máquina virtual no asignamos contraseña de root (administrador) porque queremos que el 
siguiente usuario que se cree pueda tener permisos de administrador

La partición swap o área de intercambio sirve como área de extensión para la RAM por si nos quedásemos sin recursos
en una máquina virtual con tan pocos recursos

El proxy de paquetes es un actor intermedio entre el instalador y el repositorio donde descargaremos los paquetes.

De esta manera los paquetes se quedarán guardados en nuestras máquinas para no generar un tráfico innecesario
cada vez que vallamos a realizar una instalación de una máquina virtual.

Como proxy configuraremos el siguiente: http://10.0.2.3:3142

Al tener pocos recursos (1gb de RAM y 4gb de Disco) por defecto no nos marcará ningún tipo de sistema gráfico
La opción del servidor SSH (Secure Shell) siempre deberemos marcarla.

# Crear máquinas virtuales con libvirt

Comandos principales que usaremos

- virsh -> Nos permitirá gestionar las máquinas virtuales (con sus respectivos parámetros ya que "virsh" es un 
  comando)

- virt-install -> comando de libvirt para crear una máquina virtual


## Creación de máquina virtual

virt-install --name bookworm \ -> asignamos un nombre a nivel de máquina
--memory 1024 \ -> Asignamos la RAM en mb
--disk size=4 \ -> Asignamos el almacenamiento en Gb
--graphics none \ -> Aquí le indicamos que no va a tener una controladora gráfica
--location /srv/SIINF/debian-12.2.0-amd64-netinst.iso \ -> ruta de la imagen de disco
--extra-args "console=ttyS0 theme=dark" \ -> Le asignamos una consola en el ttyS0 con un tema oscuro


Con ctrl + alt gr + ] salimos de la consola
Con virsh destroy <nombre_dominio> apagamos la máquina
