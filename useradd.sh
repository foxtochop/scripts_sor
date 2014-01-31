#!/bin/bash
if [ $1 == "" ]; then
    echo "Debes introducir un valor como nombre de usuario"

else
    echo "Creando nuevo usuario llamado $1..."
    useradd $1
    echo "Creando fichero /home/$1 para el usuario $1..."
    mkdir /home/$1
    echo "Creando permisos de /home/$1 para el usuario $1..."
    chown $1:$1 /home/$1
    passwd $1
    echo "Copiando datos desde /home/skel..."
    cp -r /etc/skel /home/$1
    echo "Presione ENTER para valor por defecto"
    echo -n "Nombre: "
    read
    echo -n "Numero de habitacion: "
    read
    echo -n "Numero de telefono: "
    read
    echo -n "Numero de telefono del trabajo: "
    read
    echo -n "Numero de telefono de casa: "
    read
    echo "Es correcta la información? S/n "
    read $respuesta
    
    if [ $respuesta == "n" ]; then
        userdel $1
        rm -f /home/$1

    else
        if [ $respuesta == "s" ]; then
            
        else
	    echo "Respuesta erronea"
        
        fi
    fi
fi
