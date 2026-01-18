#!/bin/bash
# Deshabilitar Valkyrien Skies que causa conflictos irresolubles

cd /workspaces/combitoo/servidor_minecraft/mods

# Verificar y deshabilitar
if [ -f "valkyrienskies-120-2.4.8.1.jar" ]; then
    mv "valkyrienskies-120-2.4.8.1.jar" "valkyrienskies-120-2.4.8.1.jar.disabled"
    echo "✓ Valkyrien Skies deshabilitado"
    ls -lh valkyrienskies-120-2.4.8.1.jar.disabled
else
    echo "✗ Archivo no encontrado"
fi
