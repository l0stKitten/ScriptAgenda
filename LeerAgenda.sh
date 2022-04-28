# Leer Agenda Script
FILE=/home/d.lopez/SO/scripts/Agenda/asuntos.txt
if [ -f "$FILE" ]; then
	echo "$FILE existe"
else 
	echo "No exite el archivo"
	touch asuntos.txt
	echo "Se creó el archivo"
fi
