#!/bin/bash
ip4=$(ifconfig | grep -P "inet:" | cut -d " " -f12 | cut -d ":" -f2)
ip6=$(ifconfig | grep -P "inet6:" | cut -c29- | cut -d " " -f1)

if [ $1 == -4 ]; then
  echo "$ip4"
else
  if [ $1 == -6 ]; then
    echo "$ip6"
  else
      echo "Usa los parametros -4 (para mostrar IPv4) o -6 (para mostrar IPv6)"
  fi
fi

