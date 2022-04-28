# Leer Agenda Script
FILE=/home/d.lopez/SO/scripts/Agenda/asuntos.txt
if [ -f "$FILE" ]; then
	while IFS= read -r line
	do
		if [ "$line" != "" ]; then
			echo "$line"
		else
			echo "No hay más asuntos asuntos"
		fi
	done < "$FILE"
else 
	echo "No exite el archivo asuntos.txt"
	touch asuntos.txt
	echo "Se creó el archivo asuntos.txt"
fi
