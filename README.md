# <img src="icon.svg" width="45" height="45" align="center"> Buscador de Texto App
![GitHub Release](https://img.shields.io/github/v/release/arensis/buscador-de-textos-DDAM-DI-tarea07)&nbsp;&nbsp;&nbsp;![GitHub License](https://img.shields.io/github/license/arensis/buscador-de-textos-DDAM-DI-tarea07)&nbsp;&nbsp;&nbsp;![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/arensis/buscador-de-textos-DDAM-DI-tarea07/.github%2Fworkflows%2Fbuild.yml)
&nbsp;&nbsp;&nbsp;![GitHub top language](https://img.shields.io/github/languages/top/arensis/buscador-de-textos-DDAM-DI-tarea07)

Este proyecto consiste en una aplicación Java diseñada para la búsqueda de términos dentro de archivos de texto.

## 💻 Requisitos previos

- 🪟 *Windows 7* o superior
- ☕ *Java (JRE) 8* o superior
    - **¿No tienes Java instalado?** Puedes descargar e instalar la versión gratuita desde la web oficial **[Java.com (Descarga de Java)](https://www.java.com/es/download/)**

## 💿 Instalación de la aplicación

1. Diríjase a la sección de **[RELEASES](https://github.com/arensis/buscado-de-textos-DDAM-DI-tarea07/releases)** y descargue el archivo `BuscadorTextoApp.exe`.

2. Ejecute el instalador. Este creará automáticamente accesos directos en su Escritorio y Menú Inicio.

##  💡Solución de problemas

### La aplicación no arranca

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

```text
buscador-de-textos-DDAM-DI-tarea07/
├── .gitignore               # Archivos y carpetas ignorados por Git
├── LICENSE                  # Licencia MIT del proyecto
├── README.md                # Documentación del proyecto
├── build.xml                # Script de compilación de Ant (NetBeans)
├── manifest.mf              # Manifiesto para el archivo JAR
├── script.nsi               # Script de NSIS para generar el instalador .exe
├── icon.ico                 # Icono de la aplicación (formato ICO)
├── icon.svg                 # Icono de la aplicación (formato SVG) creado con Inkscape
├── lib/                     # Librerías externas
│   └── swing-layout-1.0.3.jar
├── nbproject/               # Configuración del proyecto NetBeans
│   ├── project.properties
│   └── project.xml
└── src/                     # Código fuente Java
    └── fuentes_tarea_u07/
        ├── Formulario.form
        └── Formulario.java
```

## 🤝 Cómo contribuir
- Haz un fork del repositorio
- Crea una rama: git switch -c feature/mi-mejora
- Abre un Pull Request describiendo los cambios

## 📄 Licencia
Distribuido bajo licencia **MIT**. Consulta LICENSE para más información.
