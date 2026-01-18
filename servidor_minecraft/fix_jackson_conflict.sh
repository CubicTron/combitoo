#!/bin/bash
# Script para ejecutar el servidor con workaround para conflicto de Jackson
# Este script agrega argumentos de JVM para manejar el conflicto de módulos

cd "$(dirname "$0")" || exit

# Argumentos para resolver conflicto de Jackson entre playit-forge y kotlinforforge
JVM_ARGS="${JVM_ARGS} --add-modules ALL-SYSTEM"
JVM_ARGS="${JVM_ARGS} --add-opens java.base/java.lang.module=ALL-UNNAMED"

# Ejecutar el servidor con los argumentos
java $JVM_ARGS -Xms6G -Xmx16G @user_jvm_args.txt nogui
