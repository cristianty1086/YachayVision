# YachayVision - Aplicación de Visión por Computadora

## Descripción
YachayVision es una aplicación desarrollada en Qt que implementa funcionalidades de visión por computadora para procesamiento y análisis de imágenes y video en tiempo real.

## Características Principales
- 🖼️ Procesamiento de imágenes en múltiples formatos
- 📹 Captura y procesamiento de video en tiempo real
- 🔍 Algoritmos de visión por computadora integrados
- 🎛️ Interfaz gráfica intuitiva y fácil de usar
- ⚡ Procesamiento eficiente y optimizado
- 🔄 Funcionalidades en tiempo real

## Requisitos del Sistema

### Dependencias
- Qt 5.15 o superior
- OpenCV 4.5 o superior
- Compilador C++ compatible (GCC, MSVC, Clang)

### Plataformas Soportadas
- Windows 10/11

## Instalación

### Prerrequisitos
1. Instalar Qt Framework desde [qt.io](https://www.qt.io/)
2. Instalar OpenCV:
   # Windows (vcpkg)
   vcpkg install opencv


## Compilación

### Clonar el repositorio:
git clone https://github.com/tuusuario/yachayvision.git
cd yachayvision

```bash
qmake yachayvision.pro
make
```
Ejecutar la aplicación:

```bash
./yachayvision
```

## Uso

### Funcionalidades Disponibles
- **Carga de Imágenes**: Soporte para formatos JPG, PNG, BMP, TIFF
- **Captura de Video**: Desde archivo o cámara web
- **Procesamiento**:
  - Filtros y transformaciones
  - Detección de características
  - Segmentación de imágenes
  - Análisis morfológico

### Interfaz de Usuario
- **Panel Principal**: Visualización de imágenes/video
- **Barra de Herramientas**: Acceso rápido a funciones comunes
- **Panel de Control**: Ajuste de parámetros y configuración
- **Panel de Resultados**: Visualización de análisis y métricas

## Estructura del Proyecto
text
yachayvision/
├── src/                 # Código fuente
│   ├── main.cpp
│   ├── mainwindow.cpp
│   └── processing/      # Módulos de procesamiento
├── include/             # Archivos de cabecera
├── resources/           # Recursos (iconos, imágenes)
├── docs/               # Documentación
└── tests/              # Pruebas unitarias

## Desarrollo

### Agregar Nuevas Funcionalidades
1. Crear nueva clase en `src/processing/`
2. Implementar interfaz en `include/`
3. Integrar en la interfaz principal
4. Agregar pruebas correspondientes

### Compilación para Desarrollo
```bash
qmake CONFIG+=debug yachayvision.pro
make debug
```

Licencia
Este proyecto está bajo la Licencia MIT. Ver el archivo LICENSE para más detalles.

Soporte
📧 Email: soporte@yachayvision.com

🐛 Issues: GitHub Issues

📚 Documentación: Wiki

Changelog
v1.0.0
Versión inicial con funcionalidades básicas de visión por computadora

Interfaz gráfica completa

Soporte para procesamiento de imágenes y video

YachayVision - Visión inteligente para el futuro