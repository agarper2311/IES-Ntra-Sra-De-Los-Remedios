1. Instalar BorgBackup
|-> sudo apt install borgbackup.
   
2. Crear un repo de copias de seguridad cifrado en /tmp llamado `repobackup`
|->  borg init encryption=contraseña /tmp/repobackup.

3. Crear una primera copia de seguridad de un directorio en el sistema (la carpeta personal del usuario).
|-> borg create /tmp/repobackup::copia1 /home/garperan.

4. Verificar que la copia de seguridad se ha creado correctamente
|-> borg list /tmp/repobackup::copia1 y borg info /tmp/repobackup::copia1.

5. Modificar archivos en el directorio original agregando y/o eliminando cosas
|-> touch archivo_ejemplo.md o mkdir carpeta_ejemplo o rm archivo_ejemplo.

6. Crear una segunda copia de seguridad del directorio original
|-> borg create /tmp/repobackup::copia2 /home/garperan.

7. Verificar que la segunda copia de seguridad se ha creado correctamente
|-> borg list /tmp/repobackup::copia2 o borg info /tmp/repobackup::copia2

8. Usar el comando `diff` para comparar las 2 copias de seguridad
|-> borg diff /tmp/repobackup::copia1::copia2

9. Restaurar la primera copia de seguridad en un directorio diferente llamado `restored`
|-> borg extract  /tmp/repobackup::copia1

> [!IMPORTANT]
> Debemos ejecutar el comando en el directorio restored ya que Borg nos extrae los archivos en el directorio
> donde nos encontramos
