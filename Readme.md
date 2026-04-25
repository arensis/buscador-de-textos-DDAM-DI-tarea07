# <img src="icon.svg" width="45" height="45" align="center"> Buscador de Texto App

Este proyecto consiste en una aplicación Java diseñada para la búsqueda de términos dentro de archivos de texto.

## ⬇️ Descarga y Uso

### 💻 Requisitos mínimos

- **Sistema operativo**:  🪟 *Windows 7* o superior
- **Software requerido**: ☕ *Java (JRE) 8* o superior
    - **¿No tienes Java instalado?** Puedes descargar e instalar la versión gratuita desde la web oficial **[Java.com (Descarga de Java)](https://www.java.com/es/download/)**

### 💿 Instalación de la aplicación

1. Diríjase a la sección de **[RELEASES](https://github.com/arensis/buscado-de-textos-DDAM-DI-tarea07/releases)** y descargue el archivo `BuscadorTextoApp.exe`.

2. Ejecute el instalador. Este creará automáticamente accesos directos en su Escritorio y Menú Inicio.

###  💡Solución de problemas

#### La aplicación no arranca

Si es la primera vez que instalas Java y no has reiniciado el ordenador puede que la aplicación no funcione al intentar abrirla. De ser así reinicia el ordenador y prueba de nuevo 

## 🛠️ Información técnica

### ⚙️ Entorno de desarrollo
- **JDK 22** o superior
    - **Descarga**: [JDK 22](https://www.google.com/url?sa=E&source=gmail&q=https://www.oracle.com/java/technologies/downloads/#java22)
- **NetBeans IDE 8.2** o superior
    - **Descarga**: [Netbeans 29](https://netbeans.apache.org/front/main/download/)
- **NSIS** (para generar el instaldor `.exe`)
    - **Descarga**: [NSIS 3.12](https://sourceforge.net/projects/nsis/)

### 📦 Compilación

#### 1. Generar el archivo JAR (NetBeans)
1. Abra el proyecto en NetBeans IDE.
2. Haga clic derecho en el proyecto y seleccione **"Clean & Build"**.
3. Esto generará la carpeta `/dist` con el archivo `Fuentes_Tarea_U07.jar`.

#### 2. Generar el Instalador ejecutable (NSIS)
1. Asegúrese de que el archivo `Fuentes_Tarea_U07.jar` esté en la carpeta `/dist`.
2. Haga clic derecho sobre `script.nsi` en la raíz del proyecto.
3. Seleccione **"Compile NSIS Script"**.
4. El archivo `BuscadorTextoApp.exe` aparecerá en la raíz, listo para su distribución.

### 📂 Estructura del Proyecto
- `/src`: Código fuente Java.
- `/lib`: Dependencias del proyecto.
- `nbproject`
- `script.nsi`: Configuración del instalador profesional (gestión de rutas con espacios, accesos directos y desinstalador limpio).
- `icono.svg` / `.ico`: Iconos de aplicación
    - SVG: Icono en formato vectorial creado con **Inkscape**
    - ICO: Icono convertido para la interfaz de windows
- `.gitignore`: Configurado para excluir archivos generados (`/build`, `/dist` y configuraciones de netbeans personalizadas).
