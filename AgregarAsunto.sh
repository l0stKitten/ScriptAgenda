#SH para agregar datos a un archivo
#Colocar datos con la fecha y el asunto

FILE=/home/d.lopez/SO/scripts/Agenda/asuntos.txt
if [ -f "$FILE" ]; then
	while getopts u:a: flag
	do
		case "${flag}" in
			u) fecha=${OPTARG};;
			a) asunto=${OPTARG};;
		esac
	done
	printf "$fecha - $asunto\n" >> asuntos.txt;
	echo "Día: $fecha - Asunto: $asunto"; 
else
	echo "El archivo no existe :c"
fi
