#!/bin/bash
if [ $1 == "-k" ]; then
  echo dime tu nombre
  read nombre
  echo dime tu nota
  read nota
else
  nombre=$1
  nota=$2
fi
calificacion=""



if [ $nota == 0 ]; then
  calificacion="propia de un ni-ni, considera la idea de ir a un ciclo de jardineria"
else
  if [ $nota == 1 ]; then
    calificacion="insuficiente"
  else
    if [ $nota == 2 ]; then
      calificacion="insuficiente"
    else
      if [ $nota == 3 ]; then          
        calificacion="insuficiente"
      else
        if [ $nota == 4 ]; then
          calificacion="insuficiente"
        else
          if [ $nota == 5 ]; then
            calificacion="suficiente"
          else
            if [ $nota == 6 ]; then
              calificacion="bien"
            else
              if [ $nota == 7 ]; then
                calificacion="notable"
              else
                if [ $nota == 8 ]; then
                  calificacion="notable"
                else
                  if [ $nota == 9 ]; then
                    calificacion="sobresaliente"
                  else                         
                    if [ $nota == 10 ]; then
                      calificacion="sobresaliente"
                    else
                      calificacion="una nota erronea"

                    fi
                  fi
                fi
              fi
            fi
          fi
        fi
      fi
    fi
  fi
fi
mensaje="$nombre, tu calificacion es $calificacion"
echo $mensaje
