# SIINF

## Particionado MBR vs GPT en arranques BIOS vs UEFI

### Objetivo

El objetivo de esta actividad es analizar las diferencias en el
particionado que realiza el instalador de debian cuando arranca en modo
BIOS o lo hace en modo UEFI. También se comprobarán las ventajas de UEFI
comparadas con BIOS a la hora de manipular instalaciones de varios
sistemas operativos en la misma máquina. Por último, se analizarán las
diferencias en el bootloader según la máquina arranque con BIOS o lo
haga con UEFI.

### Enunciado

Vamos a usar dos máquinas virtuales creadas con `virt-install` de 1GB de
RAM, 8GB de disco duro, sin hardware gráfico y con consola serie
conectadas al puerto `ttyS0`. Una máquina arrancará con una BIOS y la
otra lo hará con una UEFI.

Realizaremos las tareas que se describen a continuación:

#### Instalaciones iniciales

En primer lugar recuerda, como siempre, que al instalar no estamos
creando cuenta para el usuario `root`, hacemos un particionado "para
novatos", y configuramos el proxy de paquetes. Tampoco instalamos un
sistema gráfico de escritorio, pero sí el servidor SSH.

_IMPORTANTE_: Si tienes problemas al usar los cursores en el menú de
GRUB, desconecta el cable de la consola serie (`CTRL+]`), ejecuta el
comando `reset` y vuelve a conectarte a la consola de la máquina con
`virsh console <dominio>`. Para salir de la consola de GRUB tienes que
usar el comando `exit`.

##### Instalación BIOS

Haz una instalación de debian en una máquina virtual de nombre `bios` y
que arranque en modo BIOS (es el arranque por defecto).

    virt-install --name bios \
        --memory 1024 \
        --disk size=8 \
        --graphics none \
        --cdrom /srv/SIINF/debian-12.2.0-amd64-netinst.iso \
        --boot bootmenu.enable=on,bios.useserial=on \
        --osinfo detect=on

Para habilitar el menú de selección de dispositivo de arranque de la
BIOS (lo usaremos posteriormente) y que además la propia BIOS "hable"
por la consola serie hemos tenido que usar el siguiente parámetro:

    --boot bootmenu.enable=on,bios.useserial=on

Para tener soporte de consola serie en el instalador tienes que añadir
la opción `console=ttyS0` en el menú correspondiente pulsando `TAB`
antes de pulsar `ENTER` sobre la selección. También puedes aprovechar
para añadir un tema de consola oscuro con `theme=dark`. El nombre de
máquina a nivel de sistema operativo que usaremos para esta instalación
será `debbios1`.

##### Instalación UEFI

Haz una instalación de debian en una máquina virtual con nombre `uefi` y
que arranque en modo UEFI:

    virt-install --name uefi \
        --memory 1024 \
        --disk size=8 \
        --graphics none \
        --cdrom /srv/SIINF/debian-12.2.0-amd64-netinst.iso \
        --boot uefi \
        --osinfo detect=on

Para crear una máquina que arranque en modo UEFI hemos tenido que usar
el parámetro `--boot uefi`. La UEFI ya "habla" por defecto por la
consola serie.

Para tener soporte de consola serie en el instalador tienes que añadir
la opción `console=ttyS0` en el menú correspondiente pulsando la tecla
`e` y luego continuar con el arranque pulsando `CTRL+x`. También puedes
aprovechar para añadir un tema de consola oscuro con `theme=dark`. El
nombre de máquina a nivel de sistema operativo que usaremos para esta
instalación será `debuefi1`.

#### Redimensionado de particiones

Posteriormente, ingéniatelas para hacer un "hueco" en el disco,
reduciendo la partición raíz de la instalación de cada máquina a 4GB. La
idea es realizar una instalación debian adicional de las mismas
características en una nueva partición que ocupe todo el hueco
habilitado.

Para "hacer hueco" en un disco ocupado en su totalidad hay que
redimensionar alguna partición. Esto se debe hacer sólo cuando la
partición a dimensionar no está siendo utilizada (_montada_ en jerga
Linux), así que lo más conveniente es arrancar la máquina con un CD de
rescate. El propio instalador debian puede ser ejecutado en "modo
rescate", con lo que volveremos a usarlo para llevar a cabo esta parte
de la actividad. Para ello tendremos que editar la descripción del
dominio `libvirt` y añadir la siguiente línea al XML (dentro del
elemento `<disk type='file' device='cdrom'>`):

    <source file='/srv/SIINF/debian-12.2.0-amd64-netinst.iso'/>



Con esto podemos volver a arrancar la máquina y ahora podremos elegir en
el menú de selección de dispositivo de arranque que queremos usar el
CD/DVD. La manera de acceder a dicho menú será diferente dependiendo del
tipo de arranque que estemos usando: BIOS versus UEFI (ver el siguiente
apartado de instalaciones adicionales).

Ahora tendremos que seleccionar el modo rescate (no olvides volver a
pasar al kernel del instalador los parámetros `console=ttyS0` y
`theme=dark`) y tras responder a las preguntas del asistente, debemos
acabar teniendo acceso a una consola de comandos que nos ha de permitir
redimensionar la partición que nos interesa. Para ello básicamente
tendremos que usar (y por ese orden) los comandos `e2fsck`, `resize2fs`
y `parted`.

En el caso de este último comando es aconsejable usar los sectores como
unidad de medida con el subcomando `unit`. Observa que manejaremos
discos con bloques de 4K, y que el tamaño de cada sector es 512 bytes,
con lo que habrá que multiplicar y dividir usando esos números a la hora
de calcular el nuevo sector final de nuestra partición (que ahora
ocupará 4GB). Observa también que hay que restar 1 cuando necesites
calcular el sector final que ocupará la partición, pues el primer sector
de la misma también ocupa espacio y se está contando. En definitiva,
tendrás que ser capaz de calcular cuántos sectores ocupará la nueva
partición, y la pista te la va a dar la salida del comando `resize2fs`.

##### Redimensionado BIOS

    ~ # parted /dev/sda unit s print
    Model: Virtio Block Device (virtblk)
    Disk /dev/sda: 16777216s
    Sector size (logical/physical): 512B/512B
    Partition Table: msdos
    Disk Flags:

    Number  Start      End        Size       Type      File system     Flags
     1      2048s      14776319s  14774272s  primary   ext4            boot
     2      14778366s  16775167s  1996802s   extended
     5      14778368s  16775167s  1996800s   logical   linux-swap(v1)

    ~ # e2fsck -f /dev/sda1
    e2fsck 1.46.2 (28-Feb-2021)
    Pass 1: Checking inodes, blocks, and sizes
    Pass 2: Checking directory structure
    Pass 3: Checking directory connectivity
    Pass 4: Checking reference counts
    Pass 5: Checking group summary information
    /dev/sda1: 32244/462384 files (0.2% non-contiguous), 309406/1846784 blocks

    ~ # resize2fs /dev/sda1 4G
    resize2fs 1.46.2 (28-Feb-2021)
    Resizing the filesystem on /dev/sda1 to 1048576 (4k) blocks.
    The filesystem on /dev/sda1 is now 1048576 (4k) blocks long.

    ~ # parted /dev/sda resizepart 1 $((2048+1048576*4*1024/512-1))s
    Warning: Shrinking a partition can cause data loss, are you sure you want to
    continue?
    Yes/No? yes
    yes
    Information: You may need to update /etc/fstab.

    ~ # parted /dev/sda unit s print
    Model: Virtio Block Device (virtblk)
    Disk /dev/sda: 16777216s
    Sector size (logical/physical): 512B/512B
    Partition Table: msdos
    Disk Flags:

    Number  Start      End        Size       Type      File system     Flags
     1      2048s      8390655s   8388608s  primary   ext4            boot
     2      14778366s  16775167s  1996802s   extended
     5      14778368s  16775167s  1996800s   logical   linux-swap(v1)

##### Redimensionado UEFI

    ~ # parted /dev/sda unit s print
    Model: Virtio Block Device (virtblk)
    Disk /dev/sda: 16777216s
    Sector size (logical/physical): 512B/512B
    Partition Table: gpt
    Disk Flags:

    Number  Start      End        Size       File system     Name  Flags
     1      2048s      1050623s   1048576s   fat32                 boot, esp
     2      1050624s   14774271s  13723648s  ext4
     3      14774272s  16775167s  2000896s   linux-swap(v1)        swap

    ~ # e2fsck -f /dev/sda2
    e2fsck 1.46.2 (28-Feb-2021)
    Pass 1: Checking inodes, blocks, and sizes
    Pass 2: Checking directory structure
    Pass 3: Checking directory connectivity
    Pass 4: Checking reference counts
    Pass 5: Checking group summary information
    /dev/sda2: 32285/429088 files (0.2% non-contiguous), 310579/1715456 blocks

    ~ # resize2fs /dev/sda2 4G
    resize2fs 1.46.2 (28-Feb-2021)
    Resizing the filesystem on /dev/sda2 to 1048576 (4k) blocks.
    The filesystem on /dev/sda2 is now 1048576 (4k) blocks long.

    ~ # parted /dev/sda resizepart 2 $((1050624+1048576*4*1024/512-1))s
    Warning: Shrinking a partition can cause data loss, are you sure you want to
    continue?
    Yes/No? yes
    yes
    Information: You may need to update /etc/fstab.

    ~ # parted /dev/sda unit s print
    Model: Virtio Block Device (virtblk)
    Disk /dev/sda: 16777216s
    Sector size (logical/physical): 512B/512B
    Partition Table: gpt
    Disk Flags:

    Number  Start      End        Size      File system     Name  Flags
     1      2048s      1050623s   1048576s  fat32                 boot, esp
     2      1050624s   9439231s   8388608s  ext4
     3      14774272s  16775167s  2000896s  linux-swap(v1)        swap

Tienes que explicar en qué consisten los comandos anteriores,
relacionados todos con el sistema de ficheros. ¿Por qué la expresión que
aparece como último parámetro del subcomando `resizepart` es de esa
forma. ¿Qué quieren decir todos esos números?

También tienes que comprobar para cada máquina que tras el
redimensionado todo sigue funcionando correctamente, así que deberías
reiniciar y comprobar que puedes seguir accediendo a las instalaciones.

#### Instalaciones adicionales

_IMPORTANTE_: Puedes obtener información detallada de todo lo que ocurre
durante el arranque si editas la entrada de menú de grub
correspondiente, eliminas `quiet` y añades `console=ttyS0`. Con esto
tendrás un arranque más "elocuente", necesario para analizar algunas de
las cuestiones que se proponen a continuación.

##### Instalación adicional BIOS

Para acceder al menú de selección de dispositivo de arranque hay que
pulsar la tecla `ESC` nada más encender la máquina.

Tras hacer la segunda instalación no configuraremos una partición de
swap en el instalador y lo dejaremos para el primer arranque, añadiendo
la entrada correspondiente en el fichero `/etc/fstab` que será igual a
la existente en la primera instalación que realizamos. El nombre de
máquina a nivel de sistema operativo que usaremos para esta segunda
instalación será `debbios2`.

Deberías sacar por pantalla la tabla de particiones para compararla con
la que teníamos antes de hacer esta segunda instalación:

    sudo parted /dev/sda unit s print

##### Instalación adicional UEFI

Para acceder al menú de selección de dispositivo de arranque tendrás que
pulsar la tecla `ESC` nada más encender la máquina o entrar a la UEFI,
usando el menú correspondiente de GRUB.

Tras hacer la segunda instalación, en esta ocasión reutilizaremos la
partición swap y dejaremos que el instalador la formatee de nuevo (esa
es la opción por defecto, marcada con `F` en el resumen de la tabla de
particiones). Esto implica que habrá que cambiar el UUID de la partición
swap en el fichero `/etc/fstab` de la primera instalación que hicimos
`debuefi1`.

Podemos saber el nuevo UUID de la partición swap haciendo:

    sudo blkid

Podemos visualizar detalladamente el uso de la swap que está haciendo el
sistema mediante el comando:

    sudo swapon --output-all

Con este cambio de UUID el arranque no se ralentizará cuando llegue el
momento de montar las particiones según indica el fichero `/etc/fstab`.

También es aconsejable actualizar la variable `RESUME` en el fichero
`/etc/initramfs-tools/conf.d/resume` usando el nuevo UUID de la
partición de intercambio y regenerar el fichero `initrd` usando el
comando:

    sudo dpkg-reconfigure linux-image-6.1.0-17-amd64

Con este cambio de UUID el arranque no se ralentizará en la etapa
inicial relacionada con el initial ramdisk.

No olvides tampoco sacar por pantalla de nuevo la tabla de particiones
para compararla con la que teníamos antes de hacer esta segunda
instalación:

    sudo parted /dev/sda unit s print

#### Recuperación del bootloader (GRUB)

##### BIOS (tras el borrado del MBR)

Arranca con alguna de las instalaciones que hiciste en la máquina `bios`
y comprueba el contenido de los primeros 446 bytes del disco:

    sudo xxd -l 446 /dev/sda

Estos bytes forman parte del MBR (Master Boot Record) y ahí es donde
hemos instalado la primera etapa del bootloader (GRUB). A continuación
destroza ese MBR usando el comando `dd`, poniendo a cero esos primeros
446 bytes:

    $ sudo dd if=/dev/zero of=/dev/sda bs=446 count=1
    1+0 records in
    1+0 records out
    446 bytes copied, 0.000209366 s, 2.1 MB/s

Si ahora vuelves a hacer `sudo xxd -l 446 /dev/sda`, observarás que
efectivamente todos esos bytes ahora son cero.

Prueba a arrancar de nuevo y observa que nos quedamos sin poder iniciar
ninguna de las dos instalaciones. Documenta lo que ocurre y finalmente
recupera el bootloader usando otra vez más el instalador en modo
rescate.

##### UEFI (tras instalar otro SO con bootloader propio)

Si observas el contenido de los primeros 446 bytes del disco duro de la
máquina `uefi` verás que todos los bytes ya son cero:

    sudo xxd -l 446 /dev/sda

¿Por qué ocurre esto? ¿Dónde se encuentra instalada la primera etapa de
GRUB en una máquina UEFI? Si instalases un nuevo sistema operativo que
añadiese su propio bootloader sin soporte para arrancar linux,
¿necesitarías usar un disco de rescate para recuperar el GRUB? En caso
negativo, ¿cómo lo harías entonces? Documenta la utilidad del comando
`efibootmgr` y explica qué alternativa tendrías a su uso.

##### SYSLINUX versus GRUB

Comenta las diferencias que observas en ambas máquinas a nivel de
"bootloader". ¿Por qué el menú que aparece justo después de arrancar el
instalador es ligeramente diferente si arrancamos con BIOS o lo hacemos
con UEFI?

#### Cambio del orden de arranque por defecto

Documéntate lo que necesites para cambiar el orden de arranque por
defecto de ambas instalaciones en sendas máquinas.

De igual forma, habilita la consola serie en el kernel que se ha
instalado en el disco para que al arrancar veamos todo lo que está
haciendo el kernel y el proceso `init` (systemd). Para ello no sólo
tienes que añadir `console=ttyS0` en `/etc/default/grub`, sino que
también tienes que eliminar la configuración de arranque silencioso
(`quiet`).

Observa que, de todos modos, siempre se puede acceder a esa información
una vez arrancada la máquina mediante el comando `dmesg` y las opciones
adecuadas.

Explica la relación que existe entre el fichero `/etc/default/grub`, y
los comandos `update-grub` y `grub-install` con la realización de estas
tareas, tanto para la máquina con BIOS como para la máquina con UEFI y
verifica tus explicaciones de un modo práctico.

#### Utilidad del initial ramdisk

Documéntate acerca de la utilidad de un "initial ramdisk" en linux y
explica qué papel juega en el arranque del sistema operativo.

#### Diferencias entre MBR/GPT

Por último, compara el particionado final de ambas máquinas mostrando
las diferencias y similitudes que encuentres. Explica las ventajas de
usar un particionado GPT, para lo cual deberás documentarte. Atento a la
explicación que das de la partición EFI y para qué se usa.

¿Dónde se encuentra la tabla de particiones MBR? ¿Cuánto ocupa? ¿Cuál es
su estructura? Responde a esas mismas preguntas para la tabla de
particiones GPT. Utiliza el comando `xxd` para mostrar algunos de los
valores más importantes de ambas tablas.

### A tener en cuenta



No redimensiones ni maximices bajo ningún pretexto la ventana en la que
estás haciendo la grabación, porque si lo haces es probable que sufras
de solapamiento de caracteres en la consola.

Recuerda explicar con tus propias palabras lo que estás haciendo en todo
momento, así como mencionar las páginas que usaste para documentarte
sobre cualquier aspecto que no aparezca detallado en el enunciado.

Indica también qué modelos grandes de lenguaje o LLM has usado, o si no
has usado ninguno, así como las páginas web que has leído para
documentarte.

Usa el perfil de `Konsole` ElDeseoHD para hacer la grabación, verificando
que las dimensiones de la consola son 235x50 caracteres, usando para
ello el comando `stty size` justo antes de empezar a grabar.



Usa `tmux` para dividir la pantalla horizontalmente en tres paneles de
tamaños 70, 82 y 81.

Puedes hacerlo mediante `C-b :` y luego usando el comando `tmux` para
divivir la ventana en paneles horizontales `split-window -h -l 164`,
volviendo posteriormente a dividir con `C-b %`

Acabarás con tres paneles:

- Izquierda: para explicar lo que estás haciendo mediante el comando
  `nano -b0 mbrvsgpt.md`, lo que te permitirá guardar tus explicaciones
  en un fichero markdown
- Centro: para las instalaciones de las máquinas BIOS
- Derecha: para las instalaciones de las máquinas UEFI

Para borrar máquinas virtuales con arranque UEFI no olvides añadir el
parámetro `--nvram`, del que deberías informarte sobre su utilidad:

    virsh undefine <dominio> --remove-all-storage --nvram

### Número de horas a dedicar



Se dedicarán 12 horas a la realización de la actividad.



### Ficheros a entregar



- `mbrvsgpt.cast`: fichero asciicast con grabación de la actividad (no
  olvides añadir el parámetro `-i 2`)



### Resultados de aprendizaje trabajados en la actividad

- :SIINF.2: Instala sistemas operativos planificando el proceso e
  interpretando documentación técnica.
- :SIINF.3: Gestiona la información del sistema identificando las
  estructuras de almacenamiento y aplicando medidas para asegurar la
  integridad de los datos.

### Criterios de evaluación utilizados en la calificación

- :SIINF.2.d: Se ha planificado el proceso de la instalación de sistemas
  operativos.
- :SIINF.2.e: Se han instalado y actualizado sistemas operativos libres
  y propietarios.
- :SIINF.2.f: Se han aplicado técnicas de actualización y recuperación
  del sistema.
- :SIINF.2.g: Se han utilizado tecnologías de virtualización para
  instalar y probar sistemas operativos.
- :SIINF.3.a: Se han comparado sistemas de archivos.
- :SIINF.3.b: Se ha identificado la estructura y función de los
  directorios del sistema operativo.
- :SIINF.3.c: Se han utilizado herramientas en entorno gráfico y
  comandos para localizar información en el sistema de archivos.
- :SIINF.3.d: Se han creado diferentes tipos de particiones y unidades
  lógicas.

### Más info

- <https://wiki.debian.org/Grub2>
- <https://newbedev.com/what-is-the-difference-between-grub-and-syslinux>
- <https://en.wikipedia.org/wiki/Initial_ramdisk>
- <https://archive.ph/20130104033427/http://www.linuxfordevices.com/c/a/Linux-For-Devices-Articles/Introducing-initramfs-a-new-model-for-initial-RAM-disks/>
- <https://www.cyberciti.biz/faq/howto-copy-mbr/>
- <https://en.wikipedia.org/wiki/Master_boot_record>
- <https://en.wikipedia.org/wiki/GUID_Partition_Table>
- <https://wiki.manjaro.org/index.php/Some_basics_of_MBR_v/s_GPT_and_BIOS_v/s_UEFI>
