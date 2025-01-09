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


El comando a usar para la creación de la máquina virtual es el siguiente:

```bash
virt-install --name deblvm \
--memory 1024 \
--disk size=6 --disk size=4 \
--location /srv/SIINF/debian-12.2.0-amd64-netinst.iso \
--graphics none \
--console pty,target.type=serial \
--extra-args "console=ttyS0 theme=dark" \
--osinfo detect=on
```

> [!IMPORTANT]
> La instalación se hará a partir de la ISO de debian que se encuentra en /srv/SIINF versión 12.7.0, usando el
> primer disco duro completo (el de 6 Gb) y configurando el LVM desde el instalador. Inicialmente NO HAY QUE TOCAR
> NADA DEL SEGUNDO DISCO DURO.

Usaremos el particionado guiado y separaremos la partición /home. Le daremos todo el espacio posible al Grupo de Volumen (VG) que crea el instalador e instalaremos GRUB en el MBR del primer disco duro.

> [!NOTE]
> - Realizar una instalación usando LVM en la que expliques qué está ocurriendo en cada una de las pantallas correspondientes a la fase del particionado.
