# Contenido

## Ángel García Pérez 1º DAW 24/25

## Contenido:

## Componentes de un sistema informático: [Respuesta de Phind](https://www.phind.com/search?cache=xuifrko1hka5to97vc196ff0)

### Hardware:
 
1. Se refiere a las partes físicas de un equipo informático. Ejemplo:
2. Procesador (CPU): Es el **Corazón** del sistema, es el responsable de ejecutar instrucciones y hacer cálculos
3. Memoria RAM: Almacena de **manera temporal** los datos y programas en ejecución.
4. Disco Duro o SSD: Almacena **permanentemente** los datos y programas del sistema.
5. Teclado y Ratón: Son los principales dispositivos de entrada para interactuar con el sistema
6. Monitor: Dispositivo de salida para ver la información.


### Software:

1. El software proporciona las instrucciones necesarias para que el hardware funcione correctamente.
2. Sistema Operativo: Gestiona los recursos del hardware y facilita el acceso a los programas.
3. Aplicaciones: Programas específicos diseñados para realizar tareas.

## Arquitectura hardware (elementos funcionales): [Respuesta de Phind](https://www.phind.com/search?cache=xuifrko1hka5to97vc196ff0)

La arquitectura hardware de un sistema informático se refiere al diseño y estructura de los componente físicos
que componen el sistema. Los elementos funcionales principales son:

### Unidad Central de Procesamiento (CPU): 
La CPU se compone de 2 partes principales:

1. Unidad  de Control (UC) Gestiona el flujo de control y coordina las operaciones.
2. Unidad Aritmético-Lógica (ALU): Realiza las operaciones aritméticas y lógicas.

### Memoria RAM (Memoria de Acceso Aleatorio): 
Es una memoria volátil que necesita energía para mantener sus datos.

### Sistema Operativo: 
Actúa de intermediario entre el usuario y el hardware del sistema, gestionando los recursos y facilitando el acceso a los programas. 

### Periféricos: 
Dispositivos externos que permiten la entrada y salida de información:

1. Periféricos de entrada: Teclado, ratón, micrófono, escáner, ...
2. Periféricos de salida: Monitor, impresora, altavoces, ...
3. Periféricos de almacenamiento: Discos duros, Unidades ópticas, dispositivos USB, ...

### Bus de Datos:
Es el canal de comunicación que permite la transferencia de datos entre los diferentes componenetes del sistema. Se divide en 3 tipos principales:

1. Bus de datos: Trannsmite los datos efectivamente procesados.
2. Bus de direcciones: Utilizado para acceder a la memoria y periféricos.
3. Bus de control: Coordina las operaciones de lectura y escritura.

### Reloj:
Genera pulsos eléctricos regulares que marcan el ritmo de las operaciones de la CPU y sincronizan todos los componentes del sistema.

### Almacenamiento Secundario:
Dispositivo permanente que almacena los programas y datos del sistema, como un disco duro o SSD.


## Estrucutras y componentes:

### Placas Base: [info-computer](https://www.info-computer.com/blog/que-tipos-de-placa-base-existen.html)
1. ATX: Su forma es más rectangular y son más fáciles de instalar y realizar el mantenimiento, también tienen  más ranuras de expansión y puertos.
2. BTX: Tiene mejor eficiencia térmica que su sucesora ATX. **Diferencias**: La CPU y la GPU se colocan en la parte frontal permitiendo una mejor refrigeración. **Desventajas**: No se volvieron populares y están desfasadas.
3. Micro-ATX: Son más pequeñas que las ATX pero mantreniendo la mayoría de sus características. Ofrecen un equilibrio entre tamaño y capacidad de expansión.
4. Mini-ITX: Es la más pequeña de todas las placas, su propósito principal es para ordenadores de SFF. Han sido creadas para sistemas compactos y de bajo consumo energético. Carecen de ranuras de expansión.
5. E-ATX: Es la versión más grande de las placas ATX estándar. Ofrecen mayor número de ranuras de expansión y puertos. Generalmente se utilizan en sistemas de alto rendimiento como servidores.

### Procesador (Set de Instrucciones, Registros, Contador, ALU, Interrupciones). [Respuesta de Phind](https://www.phind.com/search?cache=akq3zdkxfc3ns3ls8fj0jy26)

Un procesador es el componente central de un sistema informático que ejecuta las instrucciones de software y maneja los datos.
Es el corazón del ordenador, el responsable de realizar la operaciones necesarias para ejecutar programas

#### Componentes Principales del Procesador

#### Ciclo de Ejecución de Instrucciones

El proceso de ejecución de una instrucción en el procesador sigue estas fases principales:

1. Lectura de la instrucción.
2. Decodificación de la instrucción.
3. Actualización del contador de programa.
4. Lectura de los operandos fuente.
5. Ejecución de la instrucción y almacenamiento del operando de destino.
6. Comprobación de interrupciones.

#### Conjunto de Registros

El conjunto de registros es una parte fundamental del procesador. Almacena información temporal y datos en uso durante la ejecución del programa.
Los registros se clasifican en diferentes tipos:

- Registros de propósito general.
- Registros de instrucción.
- Registros de acceso a memoria.
- Registros de estado y control.

#### Unidad Aritmética Lógica

La **ALU** es el componente que realiza las operaciones aritméticas y lógicas básicas:

- Operaciones aritméticas: suma, resta, multiplicación y división.
- Operaciones lógicas: AND, OR, NOT, XOR, operaciones de desplazamiento y rotación de bits.

### Unidad de control

La unidad de control es crucial para el funcionamiento del procesador. Su función principal es:

- Dirigir el flujo de información entre los diferentes componentes del procesador.
- Coordinar las operaciones de la ALU.
- Manejar el ciclo de ejecución de las instrucciones.

#### Contador de Programa (PC)

El contador de programa contiene la dirección de la instrucción actual que se está ejecutando. Es un registro importante para realizar la operación.

#### Interrupciones

Las interrupciones son eventos externos que requieren la atención inmediata del sistema. El procesador puede ser interrumpido
en cualquier momento durante su ejecución normal. La fase de comprobación de interrupciones permite al procesador responder rápidamente a estos eventos.

En resumen, el procesador es un componente complejo compuesto por varios elementos especializados que trabajan juntos para ejecutar programas de manera eficiente.
Su diseño evolutivo ha llevado a mejorar constantemente su rendimiento y eficiencia.


## Memoria Interna, tipos y características (RAM, xPROM y otras) [Respuesta de Phind](https://www.phind.com/search?cache=oa80iv4lrmigdx6s1qwb051z)

#### Definición de Memoria

La memoria en el ámbito de la informática es el dispositivo que retiene, memoriza o almacena datos informáticos durante algún periodo de tiempo.
Es uno de los componentes fundamentales del ordenador, junto con la CPU y los dispositivos de entrada y salida.

#### Tipos de Memoria

Existen varios tipos de memoria, clasificados según su función y características:

#### 1. Memoria RAM (Random Access Memory)

- Almacenamiento temporal de datos e instrucciones de programas en ejecución.
- Los datos se pueden acceder rápidamente en cualquier orden.
- Su capacidad limitada significa que los datos se pierden al apagar el ordenador.
- Tipos de memoria: SIMM, DIMM, DDR, DDR2, DDR3, DDR4, DDR5.

##### Características

- Volátil (Pierde los datos al apagar el ordenador).
- Alta velocidad de acceso.
- Importante para el rendimiento del sistema.

#### 2. Memoria ROM (Read Only Memory)

- Contiene datos que se leen pero no se modifican.
- Permanece intacta incluso sin energía eléctrica.
- Contiene instrucciones básicas para iniciar el funcionamiento del ordenador.

##### Características

- No volátil (Conserva datos incluso sin energía).
- Baja velocidad de acceso.
- Usada principalmente para almacenar software del sistema.

#### 3. Memoria Flash

- Tipo de memoria no volátil.
- Creciente popularidad en dispositivos electrónicos.
- Usada comúnmente en memorias externas y dispositivos móviles.

##### Características

- No volátil (Conserva datos inlcuso sin energía).
- Alta capacidad de almacenamiento.
- Baja velocidad de acceso.

#### 4. Otros tipos de memoria

- Memoria de escritura lenta y lectura rápida (Ej: CD-RW).
- Memoria de escritura única lectura múltiple (Ej: WORM).
- Memoria inmutable (Ej: CD-ROM).

#### Características Importantes

- Velocidad: La RAM ofrece la mayor velocidad de acceso, mientras que las memorias ROM y Flash tienen velocidades
más bajas.

- Volatilidad: La RAM es voláti, mientras que la ROM y algunas memorias Flash son **no volátiles**
- Capacitad de almacenamiento: Varía ampliamente entre los diferentes tipos de memoria.
- Uso: La RAM se utiliza principalmente para el funcionamiento en tiempo real, mientras que la ROM contiene datos del sistema.

#### Resumen

La memoria interna es fundamental para el funcionamiento de los sistemas informáticos. La RAM es crucial para el rendimiento
en tiempo real, mientras que la ROM contiene instrucciones básicas del sistema. El desarrollo de tecnologías como la memoria Flash ha aumentado significativamente las capacidades de almacenamiento en dispositivos electrónicos.
La elección del tipo de memoria adecuada depende de las necesidades específicas del dispositivo y su propósito de uso.

 
### Interfaces de entrada/salida: [Wikipedia](https://es.wikipedia.org/wiki/Perif%C3%A9rico_de_entrada/salida)
- Componentes de una red informática.

En informática, un periférico de entrada/salida es aquel tipo de dispositivo periférico de un ordenador capaz de interactuar con los elementos externos a ese sistema de forma bidireccional,
es decir, que permite tanto que sea ingresada información desde un sistema externo, como emitir información a partir de ese sistema.

#### Tipos de periféricos: [Junta de Andalucía](https://www.juntadeandalucia.es/educacion/cga/mediawiki/index.php/Perif%C3%A9ricos)

1. Periféricos de entrada: Teclado, Ratón, Micrófono, Cámara, ...
2. Periféricos de salida: Altavoces, Monitor, auriculares...
3. Periféricos Mixtos: Impresora.


### Dispositivos de Almacenamiento (Discos Duros, Unidades de Estado Sólido y otros) [Respuesta de Phind](https://www.phind.com/search?cache=h008p1sxabdyibxyppivcjf4)

#### Discos Duros (HDD - Hard Disk Drive)
- Componentes de una red informática.

Los discos duros son dispositivos de almacenamiento mecánicos que utilizan discos magnéticos giratorios para almacenar datos.

##### Principales Características

- Almacenamiento en discos magnéticos giratorios.
- Partes mecánicas móviles (Brazo de lectura/escritura, cabezal)
- Menor velocidad de acceso y transferencia de datos.
- Mayor capacidad de almacenamiento (Hasta 10TB).
- Mayor consumo de energía y generación de ruido.
- Menor durabilidad debido a las partes mecánicas.

#### Unidades de Estado Sólido (SSD- Solid State Drive)

Los SSD son dispositivos de almacenamiento basados en tecnología flash que han reemplazado parcialmente a los discos duros.

##### Principales Características

- Almacenamiento en memoria flash NAND.
- Ausencia de partes mecánicas móviles.
- Mayor velocidad de acceso y transferencia de datos.
- Menor consumo de energía y menor generación de ruido.
- Mejor durabilidad debido a la ausencia de partes mecánicas.
- Capacidad de almacenamiento generalmente menor que los HDD (Hasta 4TB).
- Tiempos de arranque más rápidos del Sistema Operativo.

#### M.2 NVMe

El M.2 NVM2e es una versión más avanzada de las unidades SSD, diseñadas específicamente para tareas intensivas com edición de video o diseño gráfico.

##### Características Principales:

- Conexión M.2 con protocolo NVMe.
- Velocidad ultrarápida de transferenci de datos.
- Mejor rendimiento para tareas intensivas.
- Formato compacto y ligero.
- Ideal para sistemas que requieren de alta performance.

##### Comparación entre HDD y SSD

+------------------------+----------+-----------+
|     Característica     |   HDD    |    SSD    |
+------------------------+----------+-----------+
| Tecnología             | Mecánica | Flash     |
+------------------------+----------+-----------+
| Velocidad              | Lenta    | Rápida    |
+------------------------+----------+-----------+
| Capacidad              | Alta     | Baja      |
+------------------------+----------+-----------+
| Consumo energético     | Alto     | Bajo      |
+------------------------+----------+-----------+
| Ruido                  | Alto     | Bajo      |
+------------------------+----------+-----------+
| Durabilidad            | Baja     | Alta      |
+------------------------+----------+-----------+
| Tiempo de arranque     | Largo    | Corto     |
+------------------------+----------+-----------+
| Transferencia de datos | 50-150   | 200-550   |
|                        | MB/s     | MB/s      |
+------------------------+---------+------------+


#### Consideraciones Importantes

- La elección entre HDD y SSD depende principalmente de las necesidades específicas de almacenamiento y rendimiento.
- Los SSD son más costosos pero ofrecen mejores prestaciones y eficiencia energética.
- Los HDD siguen siendo una buena opción para almacenamiento masivo a bajo costo.
- Para tareas intensivas, los M.2 NVMe ofrecen el mejor rendimiento posible actualmente.


### Periféricos. Clasificación: [Respuesta de Phind](https://www.phind.com/search?cache=mdqg42b4pihfv13s8aua8dc6)

#### Definición de Dispositivos Periféricos

Los dispositivos periféricos son componentes de hardware que se conectan a la placa base de un ordenador para añadir funciones u operaciones al sistema,
pero que no forman parte permanente de éste. Son dispositivos que permiten la interacción entre el ordenador y el entorno exterior.

#### Clasificación de Periféricos.

Los dispositivos periféricos se pueden clasificar de varias maneras:

#### Por función:
1. Periféricos de entrada (input):
	- Captan y digitalizan los datos introducidos por el usuario o por otro dispositivo.
	- Ejemplos: teclado, ratón, cámara web.

2. Periféricos de salida (output):
	- Muestran o proyectan información hacia el exterior del ordenador.
	- Ejemplo: monitor, altavoces, auriculares...

3. Periféricos de entrada/salida (I/O):
	- Sirven para la comunicación bidireccional entre el ordenador y el entorno exterior.
	- Ejemplos: impresora.

### Adaptadores para la conexión de dispositivos. [Respuesta de Phind](https://www.phind.com/search?cache=ygiatzqmzdw2sm96dqdqc1ev)

#### Definición:

> Un adaptador es un dispositivo que permite conectar un hardware o un componente de software, convirtiendo los datos transmitidos de un formato a otro.

#### Tipos de adaptadores.

1. Adaptadores de red:
	- Permiten conectar dispositivos a una red.
	- Hay dos tipos principales: inalámbricos y por cable.

2. Adaptadores de video:
	- Usados para transmitir la señal al monitor.
	- Ejemplo: hdmi-vga, dvi-hdmi, dvi-vga, ...

3. Adaptadores USB:
	- Comúnmente usados para impresoras, teclados y ratones.
	- Ejemplos: USB/USB-C, lightning/USB-C, USB-C/micro-USB, ...

4. Adaptadores de host:
	- Para conectar discos duros u otros dispositivos de almacenamiento.

### Sistemas de Rack [MECALUX](https://www.mecalux.com.mx/blog/sistema-de-racks)

Un sistema de racks está compuesto por una serie de módulos formados por estantes que se destinan al almacenamiento de productos industriales u otro tipo de artículos, ya sea en tarimas, cajas o contenedores.

## Redes de computadores [Respuesta de Phind](https://www.phind.com/search?cache=zg9lgn73z5nd1cmwamtbrie5)

Una red de computadoras es un conjunto de dispositivos informáticos interconectados que comparten información y recursos a través de un medio de comunicación.


### Características de las redes. Ventajas e inconvenientes

#### Características:

1. Interconexión: Las redes conectan dispositivos informáticos para compartir recursos y facilitar la comunicación.
2. Diversidad: Pueden ser locales (LAN), de área amplia (WAN) o inalámbricas (Wi-Fi).
3. Infraestructuras: Requieren dispositivos físicos (cables, routers, switches) y lógicos (protocolos)
4. Escalabilidad: Se pueden expandir para adaptarse a las necesidades cambiantes.
5. Centralización: Permiten implementar medidas de seguridad centralizadas.

#### Ventajas: 

1. Compartir recursos.
2. Comunicación instantánea.
3. Acceso a internet.
4. Colaboración remota.
5. Productividad.

#### Inconvenientes:

1. Complejidad.
2. Seguridad.
3. Dependencia.
4. Rendimiento.
5. Sobrecarga de información.
6. Escalabilidad limitada.
7. Costos.

### Tipos de redes:

1. Red de Área Personal (PAN): Ej bluetooth.
2. Red de Área Local (LAN): Ej Internet en casa.
3. Red de Área Metropolitana (MAN): Ej Internet de un Campus Universitario.
4. Red de Área Amplia (WAN): Ej Internet.
5. Red de Área Global (GAN): Ej Redes de satélite.

### Topologías de red:

1. Topología de Bus.
2. Topología en Estrella.
3. Topología en Anillo.
4. Topología de Malla.
5. Topología de Punto a Punto.
6. Topología Híbrida.


## Componentes de una red informática [Respuesta de Phind](https://www.phind.com/search?cache=khhgoo1dxni5f17vg4teoic0)

1. Dispositivos de red (Nodos):
	- Ordenadores.
	- Servidores.
	- Impresoras.
	- Teléfonos móviles.

2. Enlaces:
	- Cables físicos (coaxiales, fibra óptica, ...)
	- Conexiones inalámbricas (Wi-Fi, Bluetooth, ...)

3. Hardware especializado:
	- Tarjetas de interfaz de red (NIC)-
	- Routers.
	- Conmutadores (Switches).
	- Puertas de enlace (Firewalls).

### Dispositivos de interconexión

1. Router:
	- Interconecta segmentos de red o redes enteras.
	- Adapta los paquetes de datos según la información de la capa de red final.
	- Calcular la mejor ruta de transmisión.
	- Puede filtrar paquetes (Función firewall)

2. Conmutador (Switch):
	- Opera en el nivel de enlace de datos (Capa 2 del modelo OSI).
	- Interconecta 2 o más segmentos de red.
	- Funciona similarmente a los puentes, pasando datos entre segmentos utilizando encaminamiento MAC.

3. Puente (Bridge):
	- Interconecta 2 segmentos de red para permitir el envío de paquetes entre ellos.
	- Utiliza direcciones MAC de destino para la transmisión.
	- Puede unir redes de diferentes tipologías y protocolos.

4. Hub:
	- Conecta componentes LAN con protocolos idénticos.
	- Simplemente reenvía todos los datos recibidos a todas las conexiones activas.

### Tipos de cableado y conectores

#### Tipos de cableado

1. UTP (Unlishield Twisted Pair):
	- Cable de par trenzado sin blindaje.
	- Comúnmente utilizado para redes domésticas.
	- Menos resistentes a interferencias electromagnéticas que el STP.

2. STP (Shielded Twisted Pair):
	- Cable de par tranzado con blindaje.
	- Más resistente a interferencias que el UTP.
	- Generalmente más utilizado en entornos industriales o donde se requiere mayor protección contra incidencias.


1. Conector RJ-11:
	- Se usa principalmente para teléfonos fijo, líneas ADSL/VDSL y cábles de módem.

2. Conector RJ-45:
	- Se usa principalmente en redes informáticas.


## Mapa físico y lógico de una red local [Respuesta de Phind](https://www.phind.com/search?cache=onuop5ykmgmmiaqoa6unqs8a)

### Mapas Físicos de Red

- Representan la infraestructura física de la red.
- Muestran la ubicación de dispositivos como routers, switches, servidores, ...
- Indican la conexión física entre dispositivos (cables, puertos)
- Son útiles para entender la topología física de la red.
- Pueden tomar la forma de planos de planta o mapas geográficos.

### Mapas Lógicos de Red

- Muestran la estructura abstracta de la red.
- Indican las relaciones entre dispositivos y subredes.
- Muestran la configuración de protocolos de enrutamiento relacionados con la capa 3 del modelo OSI.
- Pueden mostrar topologías lógicas diferentes de la topología física real.


## Seguridad en las redes de comunicaciones. [Respuesta de Phind](https://www.phind.com/search?cache=qyt8uk110qzj8zn7vk6317l1)

> La seguridad en las redes es el conjunto de medidas y tecnologías destinadas a proteger los recursos informáticos de una red contra accesos no autorizados, ciberataques y otras amenazas. Sus objetivos principales son:

- Impedir el acceso no autorizado a recursos de la red.
- Detectar y neutralizar ciberataques y violaciones de seguridad.
- Garantizar acceso seguro para usuarios autorizados.


## Proceso de puesta en marcha de un equipo (Pasos y comprobación de su funcionamiento) [Respuesta de Phind](https://www.phind.com/search?cache=ho6iu9o6t0mvrmjiaywm6ohl)

Estos son los siguientes pasos:

1. Inicialización de la fuente de alimentación.
	- Se aplica electricidad a la placa base.

2. Inicialización del procesador:
	- El procesador recibe energía y se activa.

3. Arranque de la placa base:
	- La BIOS (Basic Input Output System) se ejecuta automáticamente.

4. Comprobación de la memoria RAM:
	- La BIOS verifica la presencia y funcionamiento de la memoria RAM.

5. Arranque de los buses primarios y secundarios:
	- Se activan los diferentes buses del sistema.

6. Arranque de la tarjeta gráfica:
	- Se inicializa la tarjeta gráfica para conectar el monitor.

7. Comprobación de las unidades de almacenamiento:
	- Se verifica el funcionamiento de los discos duros o SSD conectados.

8. Arranque de las tarjetas de expansión:
	- Se comprueban todas las tarjetas adicionales conectadas a la placa base.

9. Finalización del POST (Power-On-Self-Test):
	- El sistema completa las comprobaciones de hardware.

10. Carga de la BIOS/UEFI:
	- Se muestra la interfaz gráfica de usuario de la BIOS.

11. Carga del sistema operativo:
	- La BIOS selecciona el disco de arranque y carga el sistema operativo.

## Instalación y configuración de dispositivos

1. Conexión física: Conectar el dispositivo correctamente.
2. Instalar los controladores necesarios.
3. Configuración del dispositivo: Una vez instales el dispositivo e instales los drivers puede que necesites configurarlo.
4. Pruebas de funcionamiento.
5. Actualizaciones.

## Normas de seguridad y prevención de riesgos laborales. [Respuesta de Phind](https://www.phind.com/search?cache=nrd67o9ow3qqdg92in52czhf)

### Medidas preventivas

- Tomar descansos regulares.
- Trabajar en un ambiente seguro.
- Adecuar el espacio de trabajo.
- Hacer un buen uso de los equipos electrónicos.
- Respetar las normas de seguridad.
- Monitor a la altura de los ojos.
- Brazos y mesa a 90 grados.
- Pantallas de visualización de datos (PVD).
