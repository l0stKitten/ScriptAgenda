# Leer Agenda Script
FILE=/home/d.lopez/SO/scripts/Agenda/asuntos.txt

now=$(date '+%F')
if [ -f "$FILE" ]; then
	while IFS= read -r line
	do
		if [ "$line" != "" ]; then
			fecha=$(echo "$line" | cut -c1-10)
			fec=$(date -d "$fecha" '+%F')
			if [[ $fec > $now ]]; then
				echo "$line"
			fi
		else
			echo "No hay más asuntos asuntos"
		fi
	done < "$FILE"
else 
	echo "No exite el archivo asuntos.txt"
	touch asuntos.txt
	echo "Se creó el archivo asuntos.txt"
fi
