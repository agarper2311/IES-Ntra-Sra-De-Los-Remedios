# MBR VS GPT

Para la creación de las máquinas virtuales comenzaremos con el siguiente comando
seguido de sus respectivos parámetros.

## Máquina BIOS / MBR

```bash
virt-install \
 --name bios \
 --memery 1024 \
 --disk size=8 \
 --graphics none \
 --cdrom /ruta/a/la/iso \
 --boot bootmenu.enable=on,bios.useserial=on \
 --osinfo detect=on \
```

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

```bash 
virt-install \
 --name uefi \
 --memory 1024 \
 --disk size=8 \
 --graphics none \
 --cdrom /ruta/a/la/iso \
 --boot uefi \
 --osinfo detect=on \
```

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

Ahora debemos hacer un "hueco" en el disco, para ello tenemos que reducir la partición raíz
de la instalación de cada máquina (debbios1 y debuefi1) a 4 GB cada una.

> [!TIP]
> Para realizar el redimensionado, debemos editar la siguiente línea del archivo XML de dichas 
> máquinas con el siguiente comando ->
> ```bash
> virsh edit <dominio>
> ```
> , reemplazamos <dominio> por el 
> nombre de nuestra máquina virtual.

Una vez dentro del XML localizaremos el elemento `<disk type=’file’ device=’cdrom’>` y dentro
de ese elemento agregamos la siguiente línea:
`<source=file='/srv/SIINF/debian-12.2.0-amd64-netinst.iso/>'`


> [!NOTE]
> Se hace de la misma manera tanto en BIOS como en UEFI.

Con este paso habilitaremos el modo rescate o Rescue Mode desde el CD/DVD para podfer hacer el
redimensionado.

> [!TIP]
> Para acceder a este modo deberemos de iniciar nuestra máquina escribiendo el siguiente comando
> ```bash
> virsh start --console <dominio>
> ```


##### Máquina BIOS

Escribiremos ´virsh start --console <dominio>´.

En cuanto cargue la máquina virtual deberemos de pulsar la tecla `ESC` repetidamente hasta que
nos salga un menú. En este menú deberemos de escoger la tercera opción `Advanced Options`


Una vez dentro de este menú nos situaremos encima de la opción `Rescue Mode` o `Modo Rescate` y
pulsaremos la tecla `TAB` para poder decirle a la máquina que tenga soporte para la consola serie 
y le asignamos un tema oscuro.

> [!TIP]
> Aquí es donde escribiremos el siguiente parámetro para dar soporte a la consola serie
> `console=ttyS0 theme=dark`


Una vez escrito el parámetro para obtener soporte por la consola serie y asignado el tema oscuro
es hora de pulsar la tecla `ENTER` y después pulsar la barra espaciadora o esperar 30 segundos.


##### Apartado Select a Languaje

En esta pantalla seleccionamos la Primera opción `C`. De momento los pasos a realizar serán iguales
a los pasos realizados en la instalación normal.

##### Apartado Enter rescue mode

En esta pantalla debemos elegir la "partición" donde se almacena el sistema raíz.

> [!TIP]
> En este caso debemos seleccionar la primera opción `/dev/sda1`

Después de seleccionar la partición donde se instalará, debemos seleccionar la segunda opción
´Execute a shell in the instaler enviroment´ o Ejecutar un entorno de shell en el instalador.

Una vez seleccionada dicha opción pulsaremos en continuar.

Ahora hay que ejecutar los siguientes comandos en este orden:

- ~# ```bash
      parted /dev/sda unit s print
      ```
  -> Con este comando podemos ver las propiedades del disco.

- ~# ```bash
      e2fsck -f /dev/sda1
      ```
  -> Con este comando verificamos y reparamos el sistema de archivos antes de redimensionarlo.

- ~# ```bash
      resize2fs /dev/sda1 4g
      ```
  -> Con este comando redimensionamos el sistema de archivos a 4 GB.

- ~# ```bash
      parted /dev/sda resizepart 1 $((2048+1048576*4*1024/512-1))s
      ```
  -> Este comando redimensiona la partición número 1 para extenderla hasta un tamaño calculado dinámicamente.


1. `parted /dev/sda` -> ejecuta el programa `parted` para manejar las particiones, le especificamos
que el dispositivo a manipular es /dev/sda.
2. `resizepart` -> Es un subcomando de `parted` que se utiliza para redimensionar una partición existente.
3. `1` -> Es el número de la partición que se va a redimensionar (dev/sda1).
4. `$((2048+1048576*4*1024/512-1))s` -> Aquí especificamos el nuevo final de la partición con un cálculo
dinámico mediante una expresión aritmética en shell.

> [!NOTE]
> Explicación del cálculo:
> - `2048` -> Marca inicial o sector de inicio.
> - `1048576` -> Tamaño en bytes de 1 MiB o mebibyte (1MiB = 1024 X 1024).
> - `4` -> Multiplica el tamaño de un bloque de 1 MiB por 4, con lo cual son 4 MiB.
> - `1024` -> Convierte el tamaño a KiB.
> - `/512` -> Divide el tamaño total en bytes entre 512 que es el tamaño típico de un sector.
> - `-1` -> Ajusta el cálculo para terminar en el sector correcto.

5. ~# `parted /dev/sda unit s print` -> Con éste comando ahora veremos los cambios realizados en el disco.


#### Instalaciones Adicionales

> [!IMPORTANT]
> Podemos obtener información detallada de todo lo que ocurre durante el arranque si editamos
> la entrada del menú de grub correspondiente, eliminamos `quiet` y añadimos `console=ttyS0`.
> Con esto tendremos un arranque más "elocuente".


##### Instalación Adicional BIOS

Para acceder al menú de selección de dispositivos de arranque, debemos pulsar la tecla `ESC` 
en cuanto se encienda la máquina.

Después de hacer la segunda instalación, no confguraremos una partición swap o área de intercambio
en el instalador y lo dejaremos para el primer arranque, añadiendo la entrada correspondiente en 
el fichero `/etc/fstab`. El nombre de máquina virtual a nivel de Sistema Operativo que usaremos
para la segunda instalación será de ´debbios2´.

Ahora una vez finalizada la instalación mostraremos por pantalla la tabla de particiones y la 
compararemos con la que teníamos antes de hacer la segunda instalación:

> [!TIP]
> Usaremos el comando 
> ```bash 
> sudo parted /dev/sda unit s print`
>```

##### Instalación Adicional UEFI

Para acceder al menú de selección de dispositivos de arranque, debemos pulsar también la tecla
`ESC` nada más encender la máquina o entrar a la UEFI mediante el menú del GRUB.

Después de hacer la segunda instalación vamos a reutilizar la partición swap o área de intercambio 
y dejaremos que el instalador la formatee de nuevo.

> [!NOTE]
> Es la opción por defecto, está marcada con una `F` en el resumen de la tabla de particiones.

Esto implica que habrá que cambiar el UUID de la partición swap en el fichero `/etc/fstab` de 
la primera instalacion que hicimos ´debuefi1´.

> [!TIP]
> Podemos saber el nuevo `UUID` de la partición `swap` con el siguiente comando:
> ```bash
> sudo blkid
> ```
> También podemos visualizar detalladamente el uso de la swap o área de intercambio que está haciendo
> el sistema operativo mediante el comando:
> ```bash
> sudo swapon --output-all
>```

Con este cambio de `UUID` elarranque no se ralentizará cuando llegue el momento de montar las particiones
según indica el fichero `/etc/fstab`.

> [!IMPORTANT]
> También es aconsejable actualizar la variable `RESUME` en el fichero `/etc/initramfs-tools/conf.d/resume`
> usando el nuevo `UUID` de la partición de intercambio o swap y generar el fichero `initrd` usando el comando:
> ``` bash
> sudo dpkg-reconfigure linux-image-6.1.0-17-amd64
>```

Con estos cambios de UUID el arranque no se verá ralentizado en la etapa inicial relacionada con el 
initial ramdisk.

Ahora también mostraremos por pantalla la tabla de particiones para compararla con la que teníamos
antes de hacer la segunda instalación.

```bash
sudo parted /dev/sda unit s print
```

#### Recuperación del bootloader (GRUB)

##### BIOS (tras el borrado del MBR)

Ahora arrancamos con alguna de nuestras instalaciones que hemos hecho en la máquina BIOS y vamos a comprobar el 
contenido de los primeros 446 bytes del disco:

``` bash
sudo xxd -l 446 /dev/sda
```

Los bytes que estamos viendo forman parte del MBR (Master Boot Record) y ahí es donde hemos instalado la primera 
etapa del bootloader (GRUB). Ahora vamos a destrozar el MBR usando el comando `dd`, poniendo a cero los primeros
446 bytes:

- $ ``` bash 
sudo dd if/dev/zero of=/dev/sda bs=446 count=1
```

> [!NOTE]
> Si ahora hacemos
> ``` bash
> sudo xxd -l 446 /dev/sda
> ```
> podremos ver que todos los bytes ahora están a 0.


> [!WARNING]
> Ahora nos hemos quedado sin poder arrancar ninguna de las 2 instalaciones.
> Veremos que ocurre y recuperaremos el bootloader usando otra vez el instalador
> en modo rescate


##### UEFI (tras instalar otro SO con bootloader propio)

Si observamos el contenido de los primeros 446 bytes del disco duro de la máquina `UEFI` 
veremos que todos los bytes están a 0.

``` bash
sudo xxd -l 446 /dev/sda
```

> [!QUESTION]
> ¿Por qué ocurre esto?
