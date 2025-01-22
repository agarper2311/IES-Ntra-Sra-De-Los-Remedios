# SIINF

## Conversando con ChatGPT sobre `borgbackup`

### Objetivo

El objetivo de esta actividad es aprender a manejar una herramienta de
copias de seguridad sencilla en su uso, pero al mismo tiempo avanzada en
su funcionalidad como es `borgbackup`

### Enunciado



Haz una grabación asciicast en la que se muestre cómo se lleva a cabo
la siguiente actividad propuesta por ChatGPT:

````text

          /\          /\          /\          /\          /\
       /\//\\/\    /\//\\/\    /\//\\/\    /\//\\/\    /\//\\/\
    /\//\\\///\\/\//\\\///\\/\//\\\///\\/\//\\\///\\/\//\\\///\\/\
   //\\\//\/\\///\\\//\/\\///\\\//\/\\///\\\//\/\\///\\\//\/\\///\\
   \\//\/                                                    \/\\//
    \/                                                          \/
    /\                                                          /\
   //\\     Copias de seguridad avanzadas con BorgBackup       //\\
   \\//         por Juan Carlos Romero y ChatGPT               \\//
    \/                                                          \/
    /\                                                          /\
   //\\/\                                                    /\//\\
   \\///\\/\//\\\///\\/\//\\\///\\/\//\\\///\\/\//\\\///\\/\//\\\//
    \/\\///\\\//\/\\///\\\//\/\\///\\\//\/\\///\\\//\/\\///\\\//\/
       \/\\//\/    \/\\//\/    \/\\//\/    \/\\//\/    \/\\//\/
          \/          \/          \/          \/     jgs  \/


,---- [ jcromero ]
|
| Buenas noches.
|
`----

 ______________________________ChatGPT ____
/\                                         \
\_| Buenas noches! ¿En qué puedo ayudarte? |
  |   _____________________________________|_
   \_/_______________________________________/


,---- [ jcromero ]
|
| ¿Me puedes hacer un resumen para mis alumnos de las principales
| características del software de copias de seguridad BorgBackup?
|
`----

 _______________________________________________________ ChatGPT ____
/\                                                                   \
\_| ¡Por supuesto! A continuación te presento un resumen de las      |
  | principales características del software de copias de seguridad  |
  | BorgBackup:                                                      |
  |                                                                  |
  | - BorgBackup es un software libre y de código abierto que se     |
  |   utiliza para realizar copias de seguridad de datos en sistemas |
  |   Unix-like.                                                     |
  | - Es muy eficiente en términos de velocidad y consumo de         |
  |   recursos, lo que lo hace ideal para copias de seguridad de     |
  |   grandes cantidades de datos.                                   |
  | - Utiliza un algoritmo de deduplicación para reducir el tamaño   |
  |   de las copias de seguridad y ahorrar espacio de                |
  |   almacenamiento.                                                |
  | - Ofrece cifrado de datos y autenticación para proteger la       |
  |   privacidad y la integridad de las copias de seguridad.         |
  | - Es altamente configurable y permite ajustar diversos aspectos  |
  |   del proceso de copia de seguridad, como la frecuencia, el      |
  |   nivel de compresión, el número de versiones de respaldo, entre |
  |   otros.                                                         |
  | - Soporta copias de seguridad incrementales y diferenciales, lo  |
  |   que significa que solo se copian los cambios realizados desde  |
  |   la última copia de seguridad completa o incremental.           |
  | - BorgBackup es compatible con varios sistemas de almacenamiento |
  |   remoto, incluyendo SSH, SFTP, FTP, WebDAV, entre otros.        |
  | - Incluye herramientas para verificar la integridad de las       |
  |   copias de seguridad, restaurar archivos o carpetas             |
  |   individuales y listar el contenido de las copias de seguridad. |
  |                                                                  |
  | En resumen, BorgBackup es una herramienta potente y eficiente    |
  | para realizar copias de seguridad en sistemas Unix-like, con     |
  | múltiples características de seguridad y configuración.          |
  |   _______________________________________________________________|_
   \_/_________________________________________________________________/


,---- [ jcromero ]
|
| Si ya tienen instalado el software, ¿qué es lo primero que tendrían
| que hacer para empezar a utilizarlo?
|
`----

 _______________________________________________________ ChatGPT ____
/\                                                                   \
\_| Una vez que tienes instalado el software de copias de seguridad  |
  | BorgBackup, el primer paso para empezar a utilizarlo es crear un |
  | repositorio de copias de seguridad. Un repositorio es un         |
  | directorio que BorgBackup utiliza para almacenar las copias de   |
  | seguridad.                                                       |
  |                                                                  |
  | Para crear un repositorio, debes seguir estos pasos:             |
  |                                                                  |
  | Decide dónde quieres almacenar tus copias de seguridad. Puede    |
  | ser una ubicación local en tu sistema o un almacenamiento        |
  | remoto.                                                          |
  |                                                                  |
  | Crea un directorio en la ubicación que hayas elegido para el     |
  | almacenamiento. Este será el repositorio.                        |
  |                                                                  |
  | Abre una terminal y ejecuta el siguiente comando para            |
  | inicializar el repositorio:                                      |
  |                                                                  |
  | ```                                                              |
  | borg init --encryption=<...> /ruta/al/repositorio                |
  | ```                                                              |
  |                                                                  |
  | Donde /ruta/al/repositorio es la ruta al directorio que creaste  |
  | en el paso anterior.                                             |
  |                                                                  |
  | BorgBackup te pedirá que ingreses una contraseña para cifrar las |
  | copias de seguridad. Ingresa una contraseña segura y recuerda    |
  | guardarla en un lugar seguro.                                    |
  |                                                                  |
  | Una vez que hayas creado el repositorio, puedes empezar a crear  |
  | copias de seguridad utilizando BorgBackup. Para ello, debes      |
  | especificar qué archivos o carpetas quieres respaldar y utilizar |
  | el comando borg create seguido de la ruta del repositorio y una  |
  | etiqueta para identificar la copia de seguridad.                 |
  |                                                                  |
  | Por ejemplo:                                                     |
  |                                                                  |
  | ```                                                              |
  | borg create /ruta/al/repositorio::etiqueta /ruta/a/respaldar     |
  | ```                                                              |
  |                                                                  |
  | Donde /ruta/al/repositorio es la ruta al directorio del          |
  | repositorio, etiqueta es el nombre que le das a la copia de      |
  | seguridad y /ruta/a/respaldar es la ruta al directorio o archivo |
  | que deseas respaldar.                                            |
  |                                                                  |
  | Es importante tener en cuenta que BorgBackup es una herramienta  |
  | potente pero compleja, por lo que es recomendable leer la        |
  | documentación y familiarizarse con su funcionamiento antes de    |
  | utilizarla en un entorno de producción.                          |
  |   _______________________________________________________________|_
   \_/_________________________________________________________________/


,---- [ jcromero ]
|
| Y si no quiero que las copias de seguridad se guarden cifradas?
|
`----

 _______________________________________________________ ChatGPT ____
/\                                                                   \
\_| Si no deseas cifrar las copias de seguridad que realiza          |
  | BorgBackup, puedes deshabilitar la opción de cifrado al crear el |
  | repositorio o al crear las copias de seguridad.                  |
  |                                                                  |
  | Para deshabilitar el cifrado al crear el repositorio, debes      |
  | agregar el parámetro --encryption=none al comando borg init, de  |
  | esta manera:                                                     |
  |                                                                  |
  | ```                                                              |
  | borg init --encryption=none /ruta/al/repositorio                 |
  | ```                                                              |
  |                                                                  |
  | De esta forma, el repositorio se creará sin cifrado, y las       |
  | copias de seguridad que se guarden en él tampoco se cifrarán.    |
  |                                                                  |
  | Si ya has creado un repositorio con cifrado y deseas             |
  | deshabilitarlo, debes crear un nuevo repositorio sin cifrado y   |
  | luego transferir las copias de seguridad existentes al nuevo     |
  | repositorio sin cifrado.                                         |
  |                                                                  |
  | Por otro lado, si deseas deshabilitar el cifrado solo para una   |
  | copia de seguridad en particular, puedes agregar el parámetro    |
  | --encryption=none al comando borg create, de esta manera:        |
  |                                                                  |
  | ```                                                              |
  | borg create --encryption=none                                    |
  |       /ruta/al/repositorio::etiqueta /ruta/a/respaldar           |
  | ```                                                              |
  |                                                                  |
  | De esta manera, la copia de seguridad se creará sin cifrado y se |
  | almacenará en el repositorio existente.                          |
  |                                                                  |
  | Es importante tener en cuenta que el cifrado de las copias de    |
  | seguridad proporciona una capa adicional de seguridad y          |
  | privacidad, por lo que es recomendable usarlo siempre que sea    |
  | posible. Si no se cifran las copias de seguridad, cualquier      |
  | persona que tenga acceso al repositorio también tendrá acceso a  |
  | los datos respaldados, lo que puede ser un riesgo de seguridad.  |
  |   _______________________________________________________________|_
   \_/_________________________________________________________________/


,---- [ jcromero ]
|
| Y cómo listaría todas las copias de seguridad que hay en mi
| repositorio?
|
`----

 _______________________________________________________ ChatGPT ____
/\                                                                   \
\_| Para listar todas las copias de seguridad que hay en tu          |
  | repositorio de BorgBackup, debes utilizar el comando borg list   |
  | seguido de la ruta al repositorio. Por ejemplo:                  |
  |                                                                  |
  | ```                                                              |
  | borg list /ruta/al/repositorio                                   |
  | ```                                                              |
  |                                                                  |
  | Este comando mostrará una lista de todas las copias de seguridad |
  | que se han creado en el repositorio, con su etiqueta             |
  | correspondiente, fecha y hora de creación, tamaño y otros        |
  | detalles.                                                        |
  |                                                                  |
  | Si deseas ver información adicional sobre una copia de seguridad |
  | en particular, como los archivos y carpetas incluidos en ella,   |
  | puedes utilizar el comando borg list seguido de la ruta al       |
  | repositorio y la etiqueta de la copia de seguridad que deseas    |
  | inspeccionar. Por ejemplo:                                       |
  |                                                                  |
  | ```                                                              |
  | borg list /ruta/al/repositorio::etiqueta                         |
  | ```                                                              |
  |                                                                  |
  | Este comando mostrará información detallada sobre la copia de    |
  | seguridad identificada por la etiqueta etiqueta, incluyendo una  |
  | lista completa de los archivos y carpetas respaldados en la      |
  | copia de seguridad.                                              |
  |                                                                  |
  | Recuerda que BorgBackup es una herramienta muy flexible y        |
  | configurable, y ofrece una gran cantidad de opciones y           |
  | parámetros para personalizar la forma en que se realizan las     |
  | copias de seguridad y cómo se muestran los resultados. Te        |
  | recomiendo revisar la documentación de BorgBackup para obtener   |
  | más información sobre las opciones disponibles en el comando     |
  | borg list.                                                       |
  |   _______________________________________________________________|_
   \_/_________________________________________________________________/


,---- [ jcromero ]
|
| Podría obtener información detallada acerca de las copias que hay
| creadas en mi repositorio?
|
`----

 _______________________________________________________ ChatGPT ____
/\                                                                   \
\_| Sí, puedes obtener información detallada acerca de las copias de |
  | seguridad creadas en tu repositorio de BorgBackup utilizando el  |
  | comando borg info.                                               |
  |                                                                  |
  | Para obtener información detallada sobre una copia de seguridad  |
  | en particular, debes ejecutar el siguiente comando:              |
  |                                                                  |
  | ```                                                              |
  | borg info /ruta/al/repositorio::etiqueta                         |
  | ```                                                              |
  |                                                                  |
  | Donde /ruta/al/repositorio es la ruta al directorio del          |
  | repositorio y etiqueta es el nombre de la copia de seguridad de  |
  | la que deseas obtener información.                               |
  |                                                                  |
  | Este comando mostrará información detallada sobre la copia de    |
  | seguridad, incluyendo:                                           |
  |                                                                  |
  | - Nombre y versión de BorgBackup utilizado para crear la copia   |
  |   de seguridad.                                                  |
  | - Fecha y hora de creación de la copia de seguridad.             |
  | - Tamaño total de la copia de seguridad y de cada uno de los     |
  |   archivos y carpetas incluidos en ella.                         |
  | - Información sobre el cifrado utilizado (si lo hay) y la        |
  |   contraseña utilizada para cifrar la copia de seguridad.        |
  | - Lista de los archivos y carpetas incluidos en la copia de      |
  |   seguridad, junto con su tamaño y los permisos de acceso.       |
  |                                                                  |
  | También puedes obtener información general sobre el repositorio, |
  | incluyendo el número total de copias de seguridad y el espacio   |
  | total utilizado, utilizando el siguiente comando:                |
  |                                                                  |
  | ```                                                              |
  | borg info /ruta/al/repositorio                                   |
  | ```                                                              |
  |                                                                  |
  | Este comando mostrará información detallada sobre el             |
  | repositorio, incluyendo:                                         |
  |                                                                  |
  | - Nombre y versión de BorgBackup utilizado para crear el         |
  |   repositorio.                                                   |
  | - Información sobre el cifrado utilizado (si lo hay) y la        |
  |   contraseña utilizada para cifrar las copias de seguridad.      |
  | - Número total de copias de seguridad en el repositorio y        |
  |   espacio total utilizado.                                       |
  | - Lista de etiquetas de copias de seguridad disponibles en el    |
  |   repositorio.                                                   |
  | - Recuerda que BorgBackup es una herramienta muy potente y       |
  |   flexible, y ofrece una gran cantidad de opciones y parámetros  |
  |   para personalizar la forma en que se realizan las copias de    |
  |   seguridad y cómo se muestran los resultados. Te recomiendo     |
  |   revisar la documentación de BorgBackup para obtener más        |
  |   información sobre las opciones disponibles en el comando borg  |
  |   info.                                                          |
  |   _______________________________________________________________|_
   \_/_________________________________________________________________/


,---- [ jcromero ]
|
| Una vez creadas varias copias de seguridad, cómo podría restaurar
| alguna de ellas?
|
`----

 _______________________________________________________ ChatGPT ____
/\                                                                   \
\_| Para restaurar una copia de seguridad específica de tu           |
  | repositorio de BorgBackup, sigue los siguientes pasos:           |
  |                                                                  |
  | Verifica que BorgBackup está instalado en el sistema donde       |
  | deseas restaurar la copia de seguridad.                          |
  |                                                                  |
  | Identifica la etiqueta de la copia de seguridad que deseas       |
  | restaurar. Para esto, puedes usar el comando borg list para      |
  | obtener una lista de todas las copias de seguridad disponibles   |
  | en el repositorio:                                               |
  |                                                                  |
  | ```                                                              |
  | borg list /ruta/al/repositorio                                   |
  | ```                                                              |
  |                                                                  |
  | Este comando mostrará todas las etiquetas de las copias de       |
  | seguridad que se han creado en el repositorio, junto con su      |
  | fecha y hora de creación.                                        |
  |                                                                  |
  | Utiliza el comando borg extract para restaurar los archivos y    |
  | carpetas incluidos en la copia de seguridad. Por ejemplo, si     |
  | deseas restaurar la copia de seguridad identificada por la       |
  | etiqueta etiqueta, ejecuta el siguiente comando:                 |
  |                                                                  |
  | ```                                                              |
  | borg extract /ruta/al/repositorio::etiqueta                      |
  | ```                                                              |
  |                                                                  |
  | Este comando extraerá todos los archivos y carpetas incluidos en |
  | la copia de seguridad y los restaurará en la carpeta actual. Si  |
  | la copia de seguridad está cifrada, se te pedirá que             |
  | proporciones la contraseña de cifrado para descifrarla.          |
  |                                                                  |
  | Recuerda que BorgBackup es una herramienta muy flexible y        |
  | configurable, y ofrece una gran cantidad de opciones y           |
  | parámetros para personalizar la forma en que se restauran las    |
  | copias de seguridad. Te recomiendo revisar la documentación de   |
  | BorgBackup para obtener más información sobre las opciones       |
  | disponibles en el comando borg extract.                          |
  |   _______________________________________________________________|_
   \_/_________________________________________________________________/

,---- [ jcromero ]
|
| Podrías decirme para qué sirven los comandos avanzados `borg diff` y
| `borg mount`?
|
`----

 _______________________________________________________ ChatGPT ____
/\                                                                   \
\_| Sí, con gusto.                                                   |
  |                                                                  |
  | borg diff: Este comando permite comparar dos copias de seguridad |
  | y mostrar las diferencias entre ellas. Puedes utilizar este      |
  | comando para verificar qué archivos o carpetas han cambiado      |
  | entre dos copias de seguridad, o para verificar si una copia de  |
  | seguridad incremental se ha realizado correctamente. Por         |
  | ejemplo, si deseas comparar dos copias de seguridad              |
  | identificadas por las etiquetas etiqueta1 y etiqueta2, puedes    |
  | ejecutar el siguiente comando:                                   |
  |                                                                  |
  | ```                                                              |
  | borg diff /ruta/al/repositorio::etiqueta1 etiqueta2              |
  | ```                                                              |
  |                                                                  |
  | Este comando mostrará una lista de los archivos y carpetas que   |
  | han cambiado entre las dos copias de seguridad, incluyendo los   |
  | cambios de contenido, permisos y propietario.                    |
  |                                                                  |
  | borg mount: Este comando te permite montar una copia de          |
  | seguridad de BorgBackup como un sistema de archivos virtual en   |
  | tu sistema. Esto te permite acceder a los archivos y carpetas    |
  | incluidos en la copia de seguridad como si estuvieran en una     |
  | unidad de disco local. Por ejemplo, si deseas montar una copia   |
  | de seguridad identificada por la etiqueta etiqueta en el         |
  | directorio /mnt/respaldo, puedes ejecutar el siguiente comando:  |
  |                                                                  |
  | ```                                                              |
  | borg mount /ruta/al/repositorio::etiqueta /mnt/respaldo          |
  | ```                                                              |
  |                                                                  |
  | Este comando montará la copia de seguridad en el directorio      |
  | /mnt/respaldo. Puedes acceder a los archivos y carpetas          |
  | incluidos en la copia de seguridad utilizando cualquier          |
  | aplicación o comando que utilices normalmente para acceder a los |
  | archivos y carpetas locales.                                     |
  |                                                                  |
  | Recuerda que BorgBackup es una herramienta muy potente y         |
  | flexible, y ofrece una gran cantidad de opciones y parámetros    |
  | para personalizar la forma en que se realizan las copias de      |
  | seguridad y cómo se muestran los resultados. Te recomiendo       |
  | revisar la documentación de BorgBackup para obtener más          |
  | información sobre las opciones disponibles en los comandos borg  |
  | diff y borg mount.                                               |
  |   _______________________________________________________________|_
   \_/_________________________________________________________________/


,---- [ jcromero ]
|
| Podrías inventarte un ejercicio para que realicen mis alumnos sobre
| todo lo que hemos hablado en esta conversación sobre BorgBackup? Ellos
| tienen instalada una máquina virtual con debian y me gustaría que
| usasen un repositorio creado en la carpeta `/tmp`
|
`----

 _______________________________________________________ ChatGPT ____
/\                                                                   \
\_| De acuerdo, aquí está un ejercicio que podrías asignar a tus     |
  | alumnos para que apliquen lo que hemos hablado sobre BorgBackup  |
  | en Debian:                                                       |
  |                                                                  |
  | - Instalar BorgBackup en un sistema operativo Debian reciente.   |
  | - Crear un repositorio de copias de seguridad cifrado en la      |
  |   carpeta `/tmp` llamado `repobackup`.                           |
  | - Crear una primera copia de seguridad de un directorio en el    |
  |   sistema (por ejemplo, el directorio personal del usuario).     |
  | - Verificar que la copia de seguridad se ha creado correctamente |
  |   utilizando los comandos `borg list` y `borg info`.             |
  | - Modificar algunos archivos en el directorio original (por      |
  |   ejemplo, agregando y eliminando archivos).                     |
  | - Crear una segunda copia de seguridad del directorio original.  |
  | - Verificar que la segunda copia de seguridad se ha creado       |
  |   correctamente usando los comandos `borg list` y `borg info`.   |
  | - Usar el comando "borg diff" para comparar las dos copias de    |
  |   seguridad y ver las diferencias entre ellas.                   |
  | - Restaurar la primera copia de seguridad en un directorio       |
  |   diferente (por ejemplo, en un directorio llamado "restored").  |
  | - Verificar que la restauración se ha realizado correctamente    |
  |   utilizando los comandos `ls/tree` y `diff`.                    |
  |                                                                  |
  | Este ejercicio cubre los conceptos básicos de BorgBackup,        |
  | incluyendo la instalación, la creación de un repositorio de      |
  | copias de seguridad, la creación de copias de seguridad, la      |
  | verificación de las copias de seguridad, la comparación de       |
  | copias de seguridad, la restauración de copias de seguridad y la |
  | verificación de la restauración, pero en un sistema operativo    |
  | Debian y en la carpeta `/tmp` en lugar de un dispositivo externo |
  |                                                                  |
  | Espero que sea útil para tus alumnos y les brinde una            |
  | comprensión profunda de cómo funciona BorgBackup en Debian.      |
  |   _______________________________________________________________|_
   \_/_________________________________________________________________/


,---- [ jcromero ]
|
| Seguro que les es útil. Muchas gracias y buenas noches
|
`----

 ___________________________________________________ ChatGPT ____
/\                                                               \
\_| De nada, ha sido un placer ayudarte. Si tienes alguna otra   |
  | pregunta o necesitas más información, no dudes en preguntar. |
  | ¡Buenas noches!                                              |
  |   ___________________________________________________________|_
   \_/_____________________________________________________________/

                              _ ._  _ , _ ._
                            (_ ' ( `  )_  .__)
                          ( (  (    )   `)  ) _)
                         (__ (_   (_ . _) _) ,__)
                             `~~`\ ' . /`~~`
                             ,::: ;   ; :::,
                            ':::::::::::::::'
 _______________________jgs______/_ __ \_______________________________
|                                                                      |
| ¡¡ATENCIÓN!! ChatGPT también se equivoca, y lo hace constantemente   |
|                                                                      |
| Errores de ChatGPT que ha habido que corregir:                       |
|                                                                      |
| - Cuando se inicia un repositorio con `borg init` hay que            |
|   suministrar siempre el parámetro `--encryption` aunque sea con un  |
|   valor de `none` si no queremos cifrado. ChatGPT prescindía de este |
|   parámetro.                                                         |
| - Al restaurar una copia de seguridad no podemos especificar un      |
|   directorio destino, siempre se extrae en la carpeta en la que nos  |
|   encontramos. ChatGPT especificaba ese directorio.                  |
| - Para ver la diferencia entre dos copias de seguridad sólo hay que  |
|   especificar el repositorio una vez: `borg diff repo::copy1 copy2`. |
|   ChatGPT establecía el nombre del repositorio en ambos parámetros.  |
|______________________________________________________________________|

````

### A tener en cuenta

Tendrás que usar `virt-clone` para crear una máquina virtual nueva
llamada `madrox` a partir de nuestra máquina virtual de referencia
`bookworm`:

```sh
    daw1-1xx$ virt-clone \
        --auto-clone \
        --original bookworm \
        --name madrox
```

Como posteriormente usaremos `madrox` como máquina para alojar un
repositorio remoto y poder hacer en ella copias de seguridad de tu
máquina física, necesitarás poder conectarte desde la máquina física a
`madrox`, con lo que puedes usar la red `reme` en `virbr0`. Edita para
ello el XML de configuración del dominio `madrox` como ya sabes

No olvides usar también `virt-sysprep` para cambiar el nombre de la
máquina

```sh
    daw1-1xx$ virt-sysprep \
        --hostname madrox \
        --edit '/etc/hostname:s/bookworm/madrox/' \
        --write '/etc/apt/apt.conf:Acquire::http::proxy "http://192.168.122.1:3142";' \
        --add .local/share/libvirt/images/madrox.qcow2
```

NOTA: El comando `virt-sysprep` borra las claves del servidor SSH, por
lo que es necesario regenerarlas. Para ello basta con ejecutar una vez
el siguiente comando, nada más acceder por consola serie a la nueva
máquina clonada:

```sh
    sudo dpkg-reconfigure openssh-server
```

Recuerda que también tendrás que instalar el paquete `borgbackup` en esa
misma máquina

Evidentemente no es buena idea crear copias de seguridad en la carpeta
`/tmp`. Explica en la grabación cuál es el motivo

Es buena práctica llamar a las copias de seguridad con un nombre en el
que aparezca la fecha o el día de la semana

No redimensiones ni maximices bajo ningún pretexto la ventana en la que
estás haciendo la grabación, porque si lo haces es probable que sufras
de solapamiento de caracteres en la consola

Recuerda explicar con tus propias palabras lo que estás haciendo en todo
momento, así como mencionar las páginas que usaste para documentarte
sobre cualquier aspecto que no aparezca detallado en el enunciado

Usa el perfil de `Konsole` _ElDeseo_ para hacer la grabación,
verificando que las dimensiones de la consola son 165x35 mediante el
comando `stty size` justo antes de empezar a grabar

Usa `tmux` para dividir la pantalla en dos paneles:

- Izquierda: para comentar lo que haces usando el comando `nano -b0`
- Derecha: para llevar a cabo la actividad

### Copias de seguridad remotas (modo pull)

Averigua cómo se usaría `borgbackup` para hacer copias de seguridad en
un repositorio remoto, explicando en detalle cómo sería el procedimiento
a medida que lo realizas. Los gráficos de más abajo muestran los dos
modos de copia remota que puedes llevar a cabo, cuyos nombres dependen
de dónde se encuentra ubicado el comando que realiza las copias

Utiliza `madrox` como máquina para alojar el repositorio remoto y haz
una copia de alguna carpeta que tengas en tu máquina física. Recuerda
que para poder conectar tu máquina física a `madrox` necesitarás que la
red que comparten ambas máquinas se encuentre en modo `bridge`
Finalmente, prueba a restaurar una de esas copias en la carpeta `/tmp`
de tu máquina física

Usa `tmux` para dividir ahora la pantalla en tres paneles:

- Izquierda: para explicar lo que estás haciendo mediante el comando
  `nano -b0 borgbackup.md`, lo que te permitirá guardar tus explicaciones
  en un fichero markdown
- Derecha arriba: para la máquina de cuyos datos se quieren hacer copias
- Derecha abajo: para la máquina en la que se quieren guardar las copias

#### Push Backup / Pull Restore

```asciiart
              ┌────────────┐
              │            │
              │   madrox   │ repositorio
              │            │
              └───o──┬──▲──┘
                  │  │  │
                  │  │  │
──────────────────┴──┼──┼────────────────o─────────────── virbr0
                     │  │                │
                     │  │  backup   ┌────┴────┐
                     │  └───────────┤         │
                     │              │   M.F.  │ datos a copiar/restaurar
                     └─────────────►│         │ comando borg
                       restore      └─────────┘
```

#### Pull Backup / Push Restore

```asciiart
              ┌────────────┐
              │            │ repositorio
              │   madrox   │ comando borg
              │            │
              └───o──┬──▲──┘
                  │  │  │
                  │  │  │
──────────────────┴──┼──┼────────────────o─────────────── virbr0
                     │  │                │
                     │  │  backup   ┌────┴────┐
                     │  └───────────┤         │
                     │              │   M.F.  │ datos a copiar/restaurar
                     └─────────────►│         │
                       restore      └─────────┘
```

### Número de horas a dedicar

Se dedicarán 6 horas a la realización de la actividad

### Ficheros a entregar

- `borgbackup.cast`: fichero asciicast con grabación de la actividad (no
  olvides añadir el parámetro `-i 2`)

### Resultados de aprendizaje trabajados en la actividad

- :SIINF.3: Gestiona la información del sistema identificando las
  estructuras de almacenamiento y aplicando medidas para asegurar la
  integridad de los datos

### Criterios de evaluación utilizados en la calificación

- :SIINF.3.e: Se han realizado copias de seguridad
- :SIINF.3.f: Se han instalado y evaluado utilidades relacionadas con la
  gestión de información

## Más info

- <https://www.acronis.com/en-eu/blog/posts/incremental-differential-backups/>
- <https://borgbackup.readthedocs.io/en/stable/deployment/pull-backup.html>
