; ================================
; CONFIGURACIÓN GENERAL
; ================================

; Interfaz moderna
!include "MUI2.nsh"

Name "Buscador de Texto"
OutFile "BuscadorTextoApp.exe"

; Icono para el archivo instalador .exe
!define MUI_ICON "icon.ico"
!define MUI_UNICON "icon.ico"
Icon "icon.ico"
UninstallIcon "icon.ico"

InstallDir "$PROGRAMFILES\BuscadorTextoApp"
RequestExecutionLevel admin

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "Spanish"

; ================================
; INSTALACIÓN
; ================================

Section "Instalar"

  SetOutPath $INSTDIR

  ; Copiar el JAR, librería Swing Layout Extension e icono de aplicación
  File "dist\Fuentes_Tarea_U07.jar"
  File "icon.ico"  
  
  ; Copiar la librería swing layout en carpeta lib
  SetOutPath "$INSTDIR\lib"  
  File "lib\swing-layout-1.0.3.jar"

  ; Volvemos a la raíz para el resto del script
  SetOutPath $INSTDIR

  ; Crear acceso directo en escritorio con icono
  CreateShortcut "$DESKTOP\BuscadorTextoApp.lnk" "javaw.exe" '-jar $\"$INSTDIR\Fuentes_Tarea_U07.jar$\"' "$INSTDIR\icon.ico"

  ; Crear acceso en menú inicio
  CreateDirectory "$SMPROGRAMS\BuscadorTextoApp"
  CreateShortcut "$SMPROGRAMS\BuscadorTextoApp\BuscadorTextoApp.lnk" "javaw.exe" '-jar $\"$INSTDIR\Fuentes_Tarea_U07.jar$\"' "$INSTDIR\icon.ico"

  ; Desinstalador
  WriteUninstaller "$INSTDIR\uninstall.exe"
  CreateShortcut "$SMPROGRAMS\BuscadorTextoApp\Desinstalar BuscadorTextoApp.lnk" "$INSTDIR\uninstall.exe" "$INSTDIR\icon.ico"

SectionEnd

; ================================
; DESINSTALACIÓN
; ================================

Section "Uninstall"

  Delete "$DESKTOP\BuscadorTextoApp.lnk"
  Delete "$INSTDIR\Fuentes_Tarea_U07.jar"
  Delete "$INSTDIR\icon.ico"
  Delete "$SMPROGRAMS\BuscadorTextoApp\BuscadorTextoApp.lnk"
  RMDir /r "$INSTDIR\lib"
  RMDir "$SMPROGRAMS\BuscadorTextoApp"
  Delete "$INSTDIR\uninstall.exe"
  RMDir "$INSTDIR"
SectionEnd