# Guión para la práctica deblvm: Ángel García Pérez 1º DAW.

Instalaremos el sistema operativo Debian en una máquina virtual KVM creada con libvirt.

> [!TIP]
> Usaremos una consola serie para interactuar con el instalador y configuraremos un particionado LVM
> con el que comprobaremos que tenemos una gran flexibilidad en la gestión del almacenamiento.

Vamos a realizar una instalación mínima de una máquina debian con las siguientes características:

- Disco duro: Uno de 6 Gb y otro de 4 Gb.
- RAM: 1 Gb.
- Nombre máquina: deblvm. -> A nivel de libvirt.
- Nombre de usuario: garperan.

> [!IMPORTANT]
> La instalación se hará a partir de la ISO de debian que se encuentra en /srv/SIINF versión 12.7.0, usando el
> primer disco duro completo (el de 6 Gb) y configurando el LVM desde el instalador. Inicialmente NO HAY QUE TOCAR
> NADA DEL SEGUNDO DISCO DURO.

