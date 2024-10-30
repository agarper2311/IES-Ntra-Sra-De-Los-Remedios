# SIINF

## Instalación de debian bookworm con `libvirt`

### Objetivos

Instalar el sistema operativo linux (distribución debian) en una máquina
virtual KVM creada con las herramientas de `libvirt`, usando una consola
serie para interactuar con el instalador.

Manejar los comandos básicos de `virsh` para gestionar máquinas
virtuales.

Aprender a hacer grabaciones con `asciinema`.

Aprender un uso básico de un multiplexor de terminales como `tmux`.

### Enunciado

Haz una grabación asciicast en la que se muestre cómo se llevan a cabo
las siguientes acciones y se responda a las preguntas propuestas:

Instala debian bookworm en una máquina virtual creada con `virt-install`
de 1GB de RAM, 4GB de disco duro, sin hardware gráfico y con consola
serie conectada al puerto `ttyS0`. Llama `bookworm` a la máquina tanto a
nivel de `libvirt` como a nivel de sistema operativo.

    $ virt-install \
        --name bookworm \
        --memory 1024 \
        --disk size=4 \
        --graphics none \
        --location /srv/SIINF/debian-12.2.0-amd64-netinst.iso \
        --extra-args "console=ttyS0 theme=dark"



Observa que para hacer la grabación asciicast no vamos a tener hardware
gráfico, pero vamos a emplear una consola serie que hay que añadir al
hardware de la máquina virtual creada y cuyo uso hay que habilitar en el
kernel del instalador mediante el argumento extra correspondiente.

Explica las diferencias que hay en el nombre de máquina tanto a nivel de
dominio `libvirt` como a nivel de sistema operativo.

No usaremos cuenta para el usuario administrador `root`. Explica las
implicaciones que eso conlleva.

Como "Full Name" emplearemos nuestro nombre completo con ambos apellidos
y como "User Name" emplearemos las tres primeras letras de nuestro
primer apellido, seguidas de las tres primeras letras de nuestro segundo
apellido, seguidas de las dos primeras letras de nuestro nombre, si es
un nombre simple, o la primera letra de cada nombre si es un nombre
compuesto. En total tendremos 8 caracteres. Explica las diferencias
entre ambos nombres de usuario.

Usa tu nombre de usuario como contraseña para evitar que se te olvide.

Haremos un particionado guiado, usando todo el disco y con todo el
sistema de ficheros en la misma partición. Analiza qué otras opciones de
particionado puedes utilizar desde el instalador, y compara unas con
otras.

¿Qué consecuencias se te ocurre que puede tener la selección de un uso
horario concreto en el instalador?

Vamos a configurar un proxy/caché de paquetes. Debes explicar para qué
se utiliza y qué repercusión tiene su uso en el aula.

No instalaremos interfaz gráfica, pero sí instalaremos un servidor de
acceso remoto seguro SSH. ¿En qué contextos es útil este tipo de
instalaciones? ¿Por qué? También deberías dejar que se instalen las
utilidades estándar del sistema.

Uno de los últimos pasos que lleva a cabo el instalador está relacionado
con el gestor de arranque. ¿En qué consiste exactamente ese paso? ¿Qué
ocurriría si no lo ejecutásemos?

### Extra



Averigua el número total de paquetes que has acabado instalando, así
como el espacio total de disco que se está usando. ¿Cómo lo compararías
con las instalaciones de otros sistemas operativos a las que estés
habituado? ¿Qué ventajas e incovenientes encuentras en la instalación
realizada respecto a la de esos otros sistemas operativos?

### A tener en cuenta

No redimensiones ni maximices bajo ningún pretexto la ventana en la que
estás haciendo la grabación, porque si lo haces es probable que sufras
de solapamiento de caracteres en la consola.

Recuerda explicar con tus propias palabras lo que estás haciendo en todo
momento, así como mencionar las páginas que usaste para documentarte
sobre cualquier aspecto que no aparezca detallado en el enunciado.

Usa el perfil de `Konsole` _ElDeseo_ para hacer la grabación,
verificando que las dimensiones de la consola son 165x50 mediante el
comando `stty size` justo antes de empezar a grabar.

Usa `tmux` para dividir la pantalla en dos paneles:

- Izquierda: para explicar lo que estás haciendo mediante el comando
  `nano -b0 instaldeb.md`, lo que te permitirá guardar tus explicaciones
  en un fichero markdown.
- Derecha: para llevar a cabo la actividad.

Termina la instalación saliendo de la sesión "mediante tirón" del cable
serie y apagando el dominio `libvirt` mediante el uso del subcomando
`virsh` correspondiente.

### Número de horas a dedicar

Se dedicarán 4 horas a la realización de la actividad.

### Ficheros a entregar

- `instaldeb.cast`: fichero asciicast con grabación de la actividad (no
  olvides añadir el parámetro `-i 2`).

### Resultados de aprendizaje trabajados en la actividad

- :SIINF.1: Evalúa sistemas informáticos identificando sus componentes y
  características
- :SIINF.2: Instala sistemas operativos planificando el proceso e
  interpretando documentación técnica
- :SIINF.7: Elabora documentación valorando y utilizando aplicaciones
  informáticas de propósito general

### Criterios de evaluación utilizados en la calificación

- :SIINF.1.c: Se ha verificado el proceso de puesta en marcha de un
  equipo.
- :SIINF.2.d: Se ha planificado el proceso de la instalación de sistemas
  operativos.
- :SIINF.2.e: Se han instalado y actualizado sistemas operativos libres
  y propietarios.
- :SIINF.2.g: Se han utilizado tecnologías de virtualización para
  instalar y probar sistemas operativos.
- :SIINF.2.i: Se han documentado los procesos realizados.
- :SIINF.7.f: Se han utilizado métodos de búsqueda de documentación
  técnica mediante el uso de servicios de Internet
- :SIINF.7.g: Se han utilizado aplicaciones de propósito general
