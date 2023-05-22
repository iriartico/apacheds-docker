# Apache Directory Studio on Docker

This Docker image provides an [ApacheDS](https://directory.apache.org/apacheds/) LDAP client.
The project sources can be found on [GitHub](https://github.com/iriartico/apacheds-docker). The Docker image on [Docker Hub](https://registry.hub.docker.com/u/iriartico/apache-directory-studio/).

## Build

    git clone https://github.com/iriartico/apacheds-docker.git
    cd apacheds-docker
    docker build -t iriartico/apache-directory-studio


## Run

The container can be started issuing the following command:

    docker run --name ldap-client -d -p 5900:5900 iriartico/apache-directory-studio


## Usage

To use Apache Directory Studio, connect to localhost:5900 with VNC client.
