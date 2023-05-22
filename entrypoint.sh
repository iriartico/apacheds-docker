#!/bin/bash

# Configurar el servidor de visualización virtual (Xvfb)
Xvfb :1 -screen 0 1024x768x16 &

# Exportar la variable de entorno DISPLAY
export DISPLAY=:1

# Iniciar el servidor VNC
x11vnc -forever -nopw -display :1 &

# Esperar a que el servidor VNC se inicie completamente
sleep 5

# Iniciar Apache Directory Studio en la ventana principal
DISPLAY=:1 /root/ApacheDirectoryStudio/ApacheDirectoryStudio &

wait

# Mantener el contenedor en ejecución
tail -f /dev/null