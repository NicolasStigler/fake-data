#!/bin/bash

DELAY=5

echo "Installing required Python packages..."
pip install faker
sleep $DELAY
pip install boto3
sleep $DELAY

echo "Running Python scripts..."
scripts=("usuarios.py" "productos.py" "inventarios.py" "inventarioprod.py" "ordenes.py" "pagos.py" "comentarios.py")

for script in "${scripts[@]}"; do
    echo "Running $script..."
    python "$script"
    sleep $DELAY
done

echo "GO FUNCIONA!!!"
