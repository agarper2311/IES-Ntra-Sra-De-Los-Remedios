# SIINF

## Instalando debian con particionado LVM

### Objetivo

Instalar el sistema operativo linux (distribución debian) en una máquina
virtual KVM creada con las herramientas de `libvirt`, usando una consola
serie para interactuar con el instalador y configurando un particionado
LVM con el que comprobaremos que tenemos una gran flexibilidad en la
gestión del almacenamiento.

### Enunciado

Haz una grabación asciicast en la que se muestre cómo se llevan a cabo
las siguientes acciones y se responda a las preguntas propuestas:

Vamos a instalar un sistema mínimo debian en una máquina virtual con las
siguientes características:

- Dos discos duros de 6 y 4 Gigas respectivamente
- Memoria RAM: 1G
- Nombre de la máquina debian: deblvm
- Nombre de usuario: tres letras del primer apellido, tres letras del
  segundo apellido, dos letras del nombre si es simple y una de cada
  nombre si es compuesto

La instalación se hará a partir de la ISO de debian que hay en la
carpeta `/srv/SIINF` usando el primer disco duro completo (el de 6
Gigas) y configurando el LVM desde el instalador. Inicialmente no hay
que tocar nada del segundo disco duro.

Se usará particionado guiado y separaremos la partición `/home`. Le
daremos todo el espacio posible al Grupo de Volumen (VG) que crea el
instalador e instalaremos GRUB en el MBR del primer disco duro.

- Realizar una instalación usando LVM en la que expliques qué está
  ocurriendo en cada una de las pantallas correspondientes a la fase del
  particionado
- Analizar cuidadosamente las particiones físicas creadas, los grupos de
  volúmenes, así como los volúmenes lógicos, indicando claramente qué
  tamaño tienen y para qué se usan en cada caso
- El instalador crea una partición que monta en `/boot`. ¿Para qué sirve
  esa partición?
- ¿Existe algún motivo por el que lo haga de esa manera?
- Explica las diferencias que observas entre el particionado que ha
  hecho el instalador en la máquina virtual y el que hay en alguna de las
  máquinas físicas del aula, como por ejemplo la mostrada a continuación:

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

Posteriormente, y una vez esté instalado el sistema, graba también como
se llevan a cabo las siguientes acciones:

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

### Consejos

Antes de redimensionar cualquier cosa es bueno ver su tamaño actual, así
como comprobar el nuevo tamaño una vez se haya realizado el
redimensionado. Para ello se pueden usar los comandos `pvs`/`pvdisplay`
en caso de tratarse de un PE, `vgs`/`vgdisplay` en caso de tratarse de
un VG o `lvs`/`lvdisplay` en caso de tratarse de un LV.

Para añadir espacio adicional a los volúmenes `libvirt` se pueden usar
tanto el comando `qemu-img` como el comando `virsh vol-resize`.

Los comandos `lsblk` y `virsh domblklist` te pueden ser de ayuda.

Para añadir todo el espacio que queda en el VG a uno de sus LVs puedes
usar el comando `lvextend -l +100%FREE /dev/deblvm-vg/home`.

### A tener en cuenta



No redimensiones ni maximices bajo ningún pretexto la ventana en la que
estás haciendo la grabación, porque si lo haces es probable que sufras
de solapamiento de caracteres en la consola.

No olvides hacer un `reset` siempre que alguna de tus máquinas virtuales
finalice su uso de la consola serie.

Recuerda explicar con tus propias palabras lo que estás haciendo en todo
momento, así como mencionar las páginas que usaste para documentarte
sobre cualquier aspecto que no aparezca detallado en el enunciado.

Indica también qué modelos grandes de lenguaje o LLM has usado, o si no
has usado ninguno, así como las páginas web que has leído para
documentarte.

Usa el perfil de `Konsole` ElDeseo para hacer la grabación, verificando
que las dimensiones de la consola son 165x50 caracteres, usando para
ello el comando `stty size` justo antes de empezar a grabar.



Usa `tmux` para dividir la pantalla en dos paneles:

- Izquierda: para explicar lo que estás haciendo mediante el comando
  `nano -b0 deblvm.md`, lo que te permitirá guardar tus explicaciones en
  un fichero markdown
- Derecha: para llevar a cabo la actividad

### Número de horas a dedicar



Se dedicarán 6 horas a la realización de la actividad.



### Ficheros a entregar



- `instaldeb.cast`: fichero asciicast con grabación de la actividad (no
  olvides añadir el parámetro `-i 2`)



### Resultados de aprendizaje trabajados en la actividad

- :SIINF.2: Instala sistemas operativos planificando el proceso e
  interpretando documentación técnica
- :SIINF.3: Gestiona la información del sistema identificando las
  estructuras de almacenamiento y aplicando medidas para asegurar la
  integridad de los datos
- :SIINF.7: Elabora documentación valorando y utilizando aplicaciones
  informáticas de propósito general

### Criterios de evaluación utilizados en la calificación

- :SIINF.2.d: Se han instalado diferentes sistemas operativos
- :SIINF.2.f: Se han utilizado máquinas virtuales para instalar y probar
  sistemas operativos
- :SIINF.2.g: Se han documentado los procesos realizados
- :SIINF.3.c: Se han utilizado herramientas en entorno gráfico y
  comandos para localizar información en el sistema de archivos
- :SIINF.3.d: Se han creado diferentes tipos de particiones y unidades
  lógicas
- :SIINF.3.f: Se han instalado y evaluado utilidades relacionadas con la
  gestión de información
- :SIINF.7.f: Se han utilizado métodos de búsqueda de documentación
  técnica mediante el uso de servicios de Internet

### Más info

- <https://blog.inittab.org/administracion-sistemas/lvm-para-torpes-i/>
- <https://blog.inittab.org/administracion-sistemas/lvm-para-torpes-ii/>
- <https://blog.inittab.org/administracion-sistemas/lvm-para-torpes-iii-ampliando-espacio/>
- <https://linuxconfig.org/how-to-resize-a-qcow2-disk-image-on-linux>
