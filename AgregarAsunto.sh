#SH para agregar datos a un archivo
#Colocar datos con la fecha y el asunto
while getopts u:a: flag
do
	case "${flag}" in
		u) fecha=${OPTARG};;
		a) asunto=${OPTARG};;
	esac
done
echo "Día: $fecha - $asunto"; 
