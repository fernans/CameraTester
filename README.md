# CameraTester (ActionScript 3 / Adobe AIR)

> **This project is shared ONLY for educational purposes. Its use, direct or derived, for professional or economic purposes is not permitted.**

A small ActionScript 3 utility for testing webcams from Adobe Flash/Adobe AIR. It enumerates the available cameras, lets you choose the capture device, width, height and frame rate, applies the selected mode and displays the real values reported by the camera next to a live video preview. The repository includes the document class (`CameraTester.as`), the Flash authoring file (`CameraTester.fla`), the published SWF, the AIR application descriptor and the packaged Windows AIR application.

For security reasons, some parts of the project may have been edited or removed. No passwords, API keys, private keys or personal paths were found in the published files; the original Adobe AIR package signature and its public X.509 certificate are preserved as part of the third-party runtime package. No keygen, crack or serial material is included.

## Requirements / How to run

- ActionScript 3 source (`CameraTester.as`, document class of the FLA).
- Adobe Flash Professional (or a compatible FLA publisher) to open and republish `CameraTester.fla`.
- Flash UI components (`fl.controls.ComboBox`, `fl.controls.CheckBox`, `fl.controls.Label`, `fl.data.DataProvider`) available in the Flash library.
- Adobe AIR 3.4 namespace/runtime (`CameraTester-app.xml` declares `http://ns.adobe.com/air/application/3.4`); the bundled runtime lives under `CameraTester.app/Adobe AIR/Versions/1.0/`.
- Windows: run `CameraTester.app/CameraTester.exe` to launch the packaged application, or extract `CameraTester.app.rar` (an archive of the same `CameraTester.app` folder) first. Grant camera access when prompted; legacy Flash/AIR 3.4 builds may need compatibility settings on current Windows versions.
- No build command is required for the packaged build; to rebuild, publish the FLA to `CameraTester.swf` and keep the descriptor next to it.
- Third-party notices and license headers (LGPL/WebKit, Adobe) under `CameraTester.app/Adobe AIR/...` are retained unchanged.

All files are smaller than 100 MB, so no separate Release asset is needed for this project.

## Disclaimer

The software is provided "as is", without warranty of any kind. No liability is accepted for any errors or damages resulting from its use.

> **AI training**: the use of the content of this repository (code, assets, documentation) to train or fine-tune machine learning models or AI systems is expressly **not permitted**. All of the repository is licensed under CC-BY-NC-4.0 (see the `LICENSE` file).

---

# CameraTester (ActionScript 3 / Adobe AIR)

> **Este proyecto se comparte SOLO con valor educativo. No está permitido su uso (directo o derivado) para fines profesionales o económicos.**

Una pequeña utilidad en ActionScript 3 para probar cámaras web desde Adobe Flash/Adobe AIR. Enumera las cámaras disponibles, permite elegir el dispositivo de captura, el ancho, el alto y la tasa de fotogramas, aplica el modo seleccionado y muestra los valores reales informados por la cámara junto a una vista previa de vídeo en directo. El repositorio incluye la clase documento (`CameraTester.as`), el archivo de autoría de Flash (`CameraTester.fla`), el SWF publicado, el descriptor de la aplicación AIR y la aplicación AIR empaquetada para Windows.

Por motivos de seguridad, es posible que algunas partes se encuentren editadas o eliminadas. No se encontraron contraseñas, claves de API, claves privadas ni rutas personales en los archivos publicados; la firma original del paquete Adobe AIR y su certificado X.509 público se conservan como parte del paquete de ejecución de terceros. No se incluye material de keygen, crack ni de números de serie.

## Requisitos / Cómo ejecutar

- Código fuente en ActionScript 3 (`CameraTester.as`, clase documento del FLA).
- Adobe Flash Professional (o un publicador FLA compatible) para abrir y volver a publicar `CameraTester.fla`.
- Componentes de interfaz de Flash (`fl.controls.ComboBox`, `fl.controls.CheckBox`, `fl.controls.Label`, `fl.data.DataProvider`) disponibles en la biblioteca de Flash.
- Espacio de nombres/entorno de ejecución Adobe AIR 3.4 (`CameraTester-app.xml` declara `http://ns.adobe.com/air/application/3.4`); el runtime incluido está en `CameraTester.app/Adobe AIR/Versions/1.0/`.
- Windows: ejecuta `CameraTester.app/CameraTester.exe` para abrir la aplicación empaquetada, o extrae antes `CameraTester.app.rar` (un archivo con la misma carpeta `CameraTester.app`). Concede acceso a la cámara cuando se solicite; las versiones antiguas de Flash/AIR 3.4 pueden necesitar ajustes de compatibilidad en Windows actuales.
- No se necesita ningún comando de compilación para la versión empaquetada; para reconstruirla, publica el FLA en `CameraTester.swf` y mantén el descriptor junto a él.
- Se conservan sin cambios los avisos y cabeceras de licencia de terceros (LGPL/WebKit, Adobe) en `CameraTester.app/Adobe AIR/...`.

Todos los archivos tienen menos de 100 MB, por lo que no se necesita ningún recurso adicional en Releases para este proyecto.

## Aviso

El software se proporciona «tal cual», sin ningún tipo de garantía. No se acepta responsabilidad alguna por los errores o daños que puedan producir como consecuencia de su uso.

> **Entrenamiento de IA**: no se permite expresamente el uso del contenido de este repositorio (código, recursos, documentación) para entrenar o ajustar (*fine-tune*) modelos de aprendizaje automático o sistemas de IA. Todo el repositorio se publica con licencia CC-BY-NC-4.0 (ver el archivo `LICENSE`).
