Descripción general
Este repositorio contiene un script Bash diseñado para automatizar la instalación de GrapheneOS en cualquier dispositivo Google Pixel. El script realiza las actualizaciones necesarias del sistema, instala los paquetes requeridos y guía al usuario durante el proceso de flasheo.

Requisitos previos
Antes de ejecutar el script, asegúrese de tener lo siguiente:

* Un ordenador con una distribución Linux basada en Debian (por ejemplo, Ubuntu).

* Un dispositivo Pixel.

* Un cable USB para conectar el dispositivo al ordenador.

* Conocimientos básicos del uso de la terminal.

Funciones del script:

1. Actualizar y mejorar los paquetes del sistema

2. Instalar los paquetes necesarios

3. Descargar la versión de GrapheneOS
* El script descarga la última versión de GrapheneOS para el dispositivo Pixel.

* Crea los directorios necesarios para almacenar los archivos descargados.

4. Verificar las firmas
* El script descarga y verifica los firmantes autorizados para GrapheneOS para garantizar la integridad de los archivos de instalación. 5. Descargar archivos de instalación

* El script descarga los archivos zip de instalación y las actualizaciones OTA para GrapheneOS.

6. Preparar el dispositivo

* Sigue las instrucciones en pantalla para desbloquear el gestor de arranque de tu dispositivo Pixel.

7. Instalar GrapheneOS

* El script descomprime los archivos de instalación y ejecuta el proceso de flasheo.

8. Bloquear el gestor de arranque

* Tras la instalación, el gestor de arranque se bloquea de nuevo por seguridad.

Uso
Para ejecutar el script, POR EJEMPLO, PARA UN PIXEL modelo 10:
(adapta el comando a tu modelo de PIXEL)

Ejecuta el siguiente comando en tu terminal:

-------------------------------------------------------------------------------

```bash
bash /home/$USER/Downloads/PIXEL10.sh
```

Sigue las indicaciones del script para completar el proceso de instalación.

-------------------------------------------------------------------------------

Notas importantes

* Haz una copia de seguridad de tus datos: Flashear un nuevo sistema operativo borrará todos los datos de tu dispositivo. Asegúrate de haber hecho una copia de seguridad de cualquier información importante.
* Verificar el arranque: Tras la instalación, utilice las funciones de certificación que ofrece GrapheneOS para verificar la integridad de la instalación.

Conclusión: Este script simplifica la instalación de GrapheneOS en su dispositivo Pixel. Siguiendo los pasos descritos anteriormente, podrá garantizar una instalación sin problemas. Si tiene algún problema o pregunta, consulte la documentación oficial de GrapheneOS o busque ayuda en la comunidad.
