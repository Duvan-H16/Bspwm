#!/bin/bash

# Función para reiniciar Polybar
restart_polybar() {
    polybar-msg cmd restart
}

# Monitorea cambios en la conexión de red y reinicia Polybar
nmcli monitor | while read -r; do
    restart_polybar
done

