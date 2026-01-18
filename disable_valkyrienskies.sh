#!/bin/bash
# Script para deshabilitar Valkyrien Skies que causa conflictos

cd /workspaces/combitoo/servidor_minecraft/mods

# Deshabilitar valkyrienskies
if [ -f "valkyrienskies-120-2.4.8.1.jar" ]; then
    mv "valkyrienskies-120-2.4.8.1.jar" "valkyrienskies-120-2.4.8.1.jar.disabled"
    echo "✓ Valkyrien Skies deshabilitado correctamente"
else
    echo "✗ No se encontró valkyrienskies-120-2.4.8.1.jar"
fi

# Deshabilitar también los mods que dependen de VS2
if [ -f "clockwork-0.5.4.5.jar" ]; then
    mv "clockwork-0.5.4.5.jar" "clockwork-0.5.4.5.jar.disabled"
    echo "✓ Clockwork (depende de VS2) deshabilitado"
fi

echo "Reinicia tu servidor para que los cambios tomen efecto"
