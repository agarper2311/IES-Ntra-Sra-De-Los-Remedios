# MBR VS GPT

Para la creación de las máquinas virtuales comenzaremos con el siguiente comando
seguido de sus respectivos parámetros.

## Máquina BIOS / MBR

virt-install \
 --name bios \
 --memery 1024 \
 --disk size=8 \
 --graphics none \
 --cdrom /ruta/a/la/iso \
 --boot bootmenu.enable=on,bios.useserial=on \
 --osinfo detect=on \

### Descripción de los parámetros

- virt-install -> Éste comando lo usaremos para todas las creaciones de las máquinas
virtuales. Es parte de las herramientas de libvirt y permite definir todas las
características de la máquina virtual en un único comando.

- --name bios -> Éste parámetro lo usaremos para asignar un nombre a la máquina virtual a
nivel de libvirt, lo que nos permitirá identificarla de las demás máquinas. En este caso
hemos llamado a la máquina bios.

- --memory 1024 -> En éste parámetro asignamos 1 GB de memoria RAM a la máquina virtual.
La cantidad de memoria se especifica en Megabytes, donde 1024 MB equivalen a 1GB.

- --disk size=8 -> En éste parámetro le asignamos 8 GB de almacenamiento a la máquina
virtual. En este caso, el tamaño del disco se especifica en Gigabytes

- --graphics none -> En éste parámetro le decimos al sistema que no queremos utilizar hardware
gráfico, lo que significa que la máquina será accesible únicamente desde la línea de comandos
o mediante una consola serie.

- --cdrom /ruta/a/la/iso -> En éste parámetro le indicamos la ruta al archivo ISO que contiene la
imagen del sistema operativo que vayamos a instalar. Es importante asegurarse de que la ruta sea
válida y que el archivo ISO sea compatible.

- --boot bootmenu.enable=on,bios,useserial=on -> En éste parámetro configuramos la máquina virtual
para habilitar el menú de selección de dispositivos de arranque en la BIOS. Además, la opción
bios.useserial=on permitye que la BIOS interactúe mediante la consola serie.

- --osinfo detect=on -> En éste parámetro le indicamos al sistema que intente detectar automáticamente
el tipo de sistema operativo que se instalará desde la ISO especificada. Esto facilita la configuración
inicial al ajustar algunos parámetros según el sistema operativo detectado.


> [!NOTE]
> El nombre de la máquina a nivel de sistema operativo será `debbios1`.

> [!TIP]
> Tenemos que añadir la opción `console=ttyS0` en el menú correspondiente
> pulsando `TAB` antes de pulsar `ENTER`, también podemos aprovechar para
> poner un tema de consola oscuro con `theme=dark`


## Máquina UEFI / GPT


virt-install \
 --name uefi \
 --memory 1024 \
 --disk size=8 \
 --graphics none \
 --cdrom /ruta/a/la/iso \
 --boot uefi \
 --osinfo detect=on \

### Descripción de los parámetros

Todos los parámetros hasta cdrom son los mismos que los anteriores inclyendo el parámetro de --osinfo.
Lo único que cambia aquí es el parámetro boot.

- --boot uefi -> En éste parámetro le decimos que arranque en modo UEFI, la UEFI ya "habla" por defecto
por la consola serie

> [!NOTE]
> El nombre de la máquina a nivel de sistema operativo será `debuefi1`


> [!TIP]
> Para tener soporte de la consola serie en el instalador tenemos que añadir 
> la opción `console=ttyS0` en el menú correspondiente pulsando la tecla `e`
> y luego continuar con el arranque pulsando `CTRL+X`, aprovacharemos también
> para poner un tema oscuro a la consola serie con `theme=dark`.


#### Redimensionado de particiones
