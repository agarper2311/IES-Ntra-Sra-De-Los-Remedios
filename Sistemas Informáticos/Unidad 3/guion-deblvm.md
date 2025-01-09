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
--location /srv/SIINF/debian-12.8.0-amd64-netinst.iso \
--graphics none \
--console pty,target.type=serial \
--extra-args "console=ttyS0 theme=dark" \
--osinfo detect=on
```

> [!IMPORTANT]
> La instalación se hará a partir de la ISO de debian que se encuentra en /srv/SIINF versión 12.7.0, usando el
> primer disco duro completo (el de 6 Gb) y configurando el LVM desde el instalador. Inicialmente NO HAY QUE TOCAR
> NADA DEL SEGUNDO DISCO DURO.

Usaremos el particionado guiado y separaremos la partición `/home`. Le daremos todo el espacio posible al Grupo de Volumen (VG) que crea el instalador e instalaremos GRUB en el MBR del primer disco duro.

> [!NOTE]
> - Realizar una instalación usando LVM en la que expliques qué está ocurriendo en cada una
>    de las pantallas correspondientes a la fase del particionado.
>
> - Analizar las particiones físicas creadas de los VG así como los LV, indicando claramente
>   que tamaño tienen y para qué se usan en cada caso.
>
> - El instalador crea una partición que monta en `/boot`. ¿Para que sirve esa partición?
>   _Esa partición sirve para iniciar el sistema ya que contiene el GRUB y los archivos necesarios
>   para iniciar el sistema con lo cuál es necesario que esté fuera del LVM_
> 
> - ¿Existe algún motivo por el que lo haga de esa manera?
> 
> - Explica las diferencias que observas entre el particionado que ha hecho
> el instalador en la máquina virtual y el que hay en alguna de las máquinas 
> físicas del aula. como por ejemplo la mostrada a continuación


      jcromero@daw1-1xx:~$ sudo fdisk -l
      Disco /dev/vda: 223,57 GiB, 240057409536 bytes, 468862128 sectores
      Modelo de disco: KINGSTON SA400S3
      Unidades: sectores de 1 \* 512 = 512 bytes
      Tamaño de sector (lógico/físico): 512 bytes / 512 bytes
      Tamaño de E/S (mínimo/óptimo): 512 bytes / 512 bytes
      Tipo de etiqueta de disco: gpt
      Identificador del disco: F7D56B56-3C5A-447B-8671-8CD63E21B58B

      Disposit. Comienzo Final Sectores Tamaño Tipo
      /dev/vda1 264192 1286143 1021952 499M Entorno de recuperación de Windows
      /dev/vda2 1286144 1490943 204800 100M Sistema EFI
      /dev/vda3 1490944 239744897 238253954 113,6G Datos básicos de Microsoft
      /dev/vda4 239745024 240893951 1148928 561M Entorno de recuperación de Windows
      /dev/vda5 240896000 466860031 225964032 107,7G Sistema de ficheros de Linux
      /dev/vda6 466860032 468860927 2000896 977M Linux swap

## Una vez hallamos realizado la instalación.

- Crea un PV que use el segundo disco duro en su totalidad
- Añade ese PV al único VG que hay creado ahora mismo.
- Extiende en 3G adicionales el tamaño del LV usado para la raíz del
  sistema de ficheros. No olvides redimensionar ese sistema de ficheros
  con el comando `resize2fs`.
- Apaga la máquina virtual creada, añade 2G al fichero imagen del
  segundo de los discos duros, vuelve a encender la máquina y comprueba
  con `fdisk` que el tamaño de ese disco ha crecido en consonancia.
  Redimensiona el PV asociado a este dispositivo y comprueba que el VG
  también crece en consonancia.
- Vuelve a apagar la máquina, y vuelve a añadir 2G, pero esta vez al
  fichero imagen del primero de los discos duros (el dispositivo en el
  que se hizo la instalación)
- Enciende de nuevo la máquina, y comprueba que el tamaño de ese primer
  disco ha crecido en consonancia. Crea una nueva partición física
  primaria que ocupe todo ese espacio nuevo (comando `fdisk`)
- Añade la partición recién creada al LVM, es decir, crea un nuevo PV en
  esa partición. Añade ese PV al VG con el que estamos trabajando y
  comprueba que su tamaño vuelve a crecer en consonancia.
- Añade todo el espacio que te queda en el VG al LV usado para `/home`
  (ya no es necesario recordar que tienes que redimensionar el sistema
  de ficheros correspondiente con `resize2fs`, ¿verdad?). ¿Hacer este
  último paso sería una buena práctica? ¿Por qué?


> [!TIP]
> Antes de redimensionar cualquier cosa es bueno ver su tamaño actual, así
> como comprobar el nuevo tamaño una vez se haya realizado el
> redimensionado. Para ello se pueden usar los comandos `pvs`/`pvdisplay`
> en caso de tratarse de un PE, `vgs`/`vgdisplay` en caso de tratarse de
> un VG o `lvs`/`lvdisplay` en caso de tratarse de un LV.
>
> Para añadir espacio adicional a los volúmenes `libvirt` se pueden usar
> tanto el comando `qemu-img` como el comando `virsh vol-resize`.
>
> Los comandos `lsblk` y `virsh domblklist` te pueden ser de ayuda.
>
> Para añadir todo el espacio que queda en el VG a uno de sus LVs puedes
> usar el comando `lvextend -l +100%FREE /dev/deblvm-vg/home`.
