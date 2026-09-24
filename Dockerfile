#Imagen base con python 3.12.5
FROM python:3.12.5

#Carpeta de trabajo dentro del contenedor para nuestra aplicacion zoo
WORKDIR /app

#Copia archivos desde mi proyecto hacia la imagen que estoy construyendo
#El primer punto representa el directorio actual de mi proyecto, que es el origen
#El segundo punto representa el directorio actual dentro de la imagen que es el destino
#Se usa . porque ambos representan el directorio actual segun el contexto de cada lado

COPY . .

#Instalar dependencias de python

RUN pip install -r requirements.txt

#Comando que se ejecutara al inicar el contenedor

CMD ["python", "-u", "app.py"]