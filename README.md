 ## **Para construir la imagen indicando el nombre de la imagen y la versión:**
 ```
docker build -t manuelaflores16/orbis-training-docker:0.1.0 .
```

## **Para subir la imagen a dockerhub**
```
docker push manuelaflores16/orbis-training-docker:0.1.0 
```

## **Para cambiar el tag :**
``` 
docker tag 2ed242f0459b manuelaflores16/orbis-training-docker:0.2.0  
```

## **Para exponer el contenedor a travéz del puerto 1080**

```
docker run -p "1080:80" manuelaflores16/orbis-training-docker:3.0.0
```
## **Para construir la imagen basada en un archivo docker-compose**

````
docker-compose build
````

## **Para levantar el contenedor basado en un archivo docker-compose**

````
docker-compose up
````

## Para llevar el contenido de mi proyecto al container

 ````
 docker run -it -v $PWD:/app manuelaflores16/orbis-training-docker:4.0.0 sh -c "npm install && ls"
````

## Para levantar el container y exponerlo en el puerto 3030

````
docker run -it -v $PWD:/app -p "3030:1042" manuelaflores16/orbis-training-docker:4.0.0 npm start   
````

## Ejecuta el realease 

````
docker run -it -v $PWD:/app -p "3030:1042" manuelaflores16/orbis-training-docker:4.0.0 npm run release 
````

## Para encontrar la IP del container y la red asignada por default

````
docker inspect a51 | grep "IPAdress"
docker inspect 051 | grep "Network"
````
## Para ejecutar un curl en el container

````
docker run --net=capacitacion-problema1_default -it node:10.10.0-slim curl http://172.18.0.2:1042
````

## Para ejecutar el archivo example.sh

````
docker run --entrypoint=/app/resources/example.sh -it -v $PWD:/app manuelaflores16/orbis-training-docker:4.0.0   
````

## Para ejecutar el archivo example.sh con un entorno de variable 

````
docker run --entrypoint=/app/resources/example.sh -it -v $PWD:/app -e NAME="Manuela" manuelaflores16/orbis-training-docker:4.0.0   
````










