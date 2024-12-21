#!/bin/bash

# Lista de interfaces "tun" a verificar
tun_interfaces=("tun0" "tun1" "tun2" "tun3" "tun4" "tun5")

# Bandera para saber si se encontró una interfaz activa
found=false

# Verificar interfaces tun
for interface in "${tun_interfaces[@]}"; do
    if ip addr show | grep -q "$interface"; then
        echo " 󰖂  $(ip addr show "$interface" | grep -oP 'inet \K[\d.]+')  "
        found=true
        break # Salir si se encuentra una interfaz tun activa
    fi
done

# Si no se encontró una interfaz tun activa, verificar eno1 y wlp3s0
if [ "$found" = false ]; then
    # Verifica la interfaz eno1
    if ip addr show eth0 | grep -q 'inet' ; then
              echo " 󰑩  $(ip addr show eth0 | awk '/inet /{print $2; exit}' | cut -d/ -f1)  "
        #echo "  $(ip addr show eth0 | grep -oP '\K[\d.]+')  "
        exit 0 # Salir si eno1 está activa
    
    elif ip addr show wlan0 | grep -q 'UP'; then
      echo "    $(ip addr show wlan0 | awk '/inet /{print $2; exit}' | cut -d/ -f1)  "
    
    else
      echo "  Disconect  "
    fi
fi

    

    
