# Ángel García Pérez. Instalación VM BIOS / UEFI.

Comenzaremos creando 2 máquinas virtuales, 1 con BIOS y otra 
con UEFI.

Para la creación de la máquina BIOS comenzaremos con un 
comando, seguido de sus respectivos parámetros:

## Máquina BIOS.

- virt-install -> Este comando lo usaremos para todas las 
creaciones de las máquinas virtuales. Es parte de las 
herramientas de libvirt y permite definir todas las 
características de la máquina virtual en un único comando.

- --name -> Este parámetro lo usaremos para asignar un nombre 
a la máquina virtual (a nivel de libvirt para diferenciarla 
de las demás), en este caso la llamaremos bios.

- --memory -> Este parámetro lo usaremos para asignar la 
cantidad de memoria RAM que usará la máquina virtual. Se 
asigna en MB, en este caso le asignamos 1 GB = 1024 MB.

- --disk size -> Este parámetro lo usaremos para asignar el 
tamaño del disco que tendrá nuestra máquina. Aquí se le asigna 
en gigas. Yo usaré 8.

- --graphics none -> Este parámetro lo usaremos para decirle 
al sistema que no queremeos utilizar hardware gráfico, con lo 
cual la máquina será accesible únicamente desde la línea de 
comandos o mediante una consola serie.

- --cdrom -> Este parámetro lo usaremos para decirle donde se 
encuentra la ISO que usaremos.

- --boot -> Este parámetro lo usaremos para configurar la 
máquina virtual para habilitar el menú de selección de 
dispositivos de arranque en la BIOS. Además, la opción 
bios.useserial=on permite que la BIOS interactúe mediante la 
consola serie.

- --osinfo -> Este parámetro lo usaremos para decirle al 
sistema que detecte automáticamente el tipo de sistema 
operativo.


Hasta ahora la instalación y configuración será como en la 
anterior. 

El nombre de la máquina a nivel de sistema operativo será 
´debbios1´ ya que instalaremos una segunda máquina.

