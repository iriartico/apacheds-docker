# FROM openjdk:11.0.5-slim-buster
FROM openjdk:21-slim-buster

# Instalar VNC y Firefox
RUN apt-get update && apt-get install -y \
    x11vnc \
    xvfb \
    wget \
    libswt-gtk-4-java

# Establecer contraseña para VNC
RUN mkdir -p ~/.vnc && x11vnc -storepasswd toor ~/.vnc/passwd

WORKDIR /root/

RUN wget https://dlcdn.apache.org/directory/studio/2.0.0.v20210717-M17/ApacheDirectoryStudio-2.0.0.v20210717-M17-linux.gtk.x86_64.tar.gz -O apache-directory-studio.tar.gz

COPY entrypoint.sh .

RUN tar -xvf apache-directory-studio.tar.gz

# Exponer el puerto 5900 para VNC
EXPOSE 5900

# Definir el comando de inicio del contenedor
# CMD ["x11vnc", "-forever", "-usepw", "-create"]
ENTRYPOINT [ "./entrypoint.sh" ]

