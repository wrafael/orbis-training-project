#Ejercicio 1 Capacitación: Git, bash y Docker Integrantes:

Pedro Vega Asto.
Manuela Flores Vilchez.
Jan Sanchez
:relaxed:


1. ¿Qué importancia tiene los tags en un proyecto?

 - Nos permite versionar nuestros commits.

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?

 - El tag normal es para un uso privado y temporal , mientras que el tag anotado está pensado para ser publicada.

3. ¿Cómo se sube todos los tags de git que hay en mi local?

 - Con el comando : 
 ```  
git push origin --tags
 ```
4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?

 - No

5. ¿Qué es y para qué sirve docker?

 - Docker es un encapsulador de entornos y sirve para hacer nuestro desarrollo más fácil y sencillo mediante entornos.

6. ¿Cuál es la diferencia entre docker y VirtualBox?

 - Docker consume menos recursos que el virtualBox.

 - El tiempo de arranque y apagado de Docker es mucho más rápido que en el virtualBox.

  - El virtualBox necesita de un sistema operativo entero para funcionar.

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?

 - Sí.

8. ¿Por qué debo anteponer el nombre de usuario en una imagen docker nueva?

 - Para saber a que usuario de hub subiría.

9. ¿Qué pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?

 - Se tomas como si fuera la última versión(lastest).

 -- -
 # Segundo Taller : 

1.- ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
 - Porque nos habilita el modo interactivo y la consola TTY del contenedor(es necesario los dos). Si no le ponemos el flag -it se el container se ejecuta y muere.
2.- ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
 - Para interactuar y ejecutar comandos de linux.

 3.-¿Cuál es la diferencia entre docker ps y docker ps -a?
 - Docker ps lista los contenedores que estan encendidos y docker ps -a lista todos los contenedores independientemente de si estén activos o no.
 
 ## PARTE 5 
 1. ¿Cuál es la diferencia entre una imagen y un contenedor?
  - La imagen es la base para construir un contenedor

2. ¿Cómo listo las imágenes que hay en mi computadora?
 - Docker images

3. ¿Cómo salgo de un contenedor de docker?
 - exit

4. ¿Se elimina el contenedor al salir de ella?
 - Sí
5. ¿Cómo elimino un contenedor?
 - docker kill + id del contenedor
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
 - -i : Activar el modo interactivo-
 - -t : Para que se active la consola del contenedor.
 - --rm : Para eliminar el contenedor.

7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
 - Podría escribir en el docker file que se liste el archivo ó podría entrar al contenedor y ejecutar los comandos de linux.
8. ¿Cómo se comenta una linea de código en Dockerfile?
- El simbolo se comenta con "#" 

## PARTE 6

1. ¿Qué es NGINX?
 - Un servidor web
2. ¿Cómo expongo puertos en docker?
 - En el dockerfile tenemos que agregar "EXPOSE" seguido del numero de puesto.
3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
 "<puerto a exponer>:<puerto del servicio>"
4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
 - Con el flag "-p"

 ## PARTE 7

1.- ¿Qué pasa si no especifico el directorio de trabajo?

 - Va a tomar la ruta del archivo dockerfile y al no encontrar nada, no se ejecutá el comando

2. ¿Es necesario especificar el `workdir` en docker?, ¿Porqué?
 - Sí , es necesario porque si no el proyecto no tendría una carpeta base.

3. ¿Que hacen los siguientes comandos? 
 -`docker ps`
  - Lista los contenedores que están levantados.

 -`docker pull`
  - Baja una imagen del dockerhub

 -`docker push`
  - Sube los cambios en la imagen al dockerhub

 -`docker rm`
  - Remueve los contenedores.

 -`docker rmi`
  - Remueve las imágenes.

 -`docker run`
  - Levanta un container.

 -`docker tag`
  - Cambia el tag.

 -`docker search`
  - Buscamos imágenes en el dockerhub. 

 -`docker login`
  - Iniciamos sesión en dockerhub.

 -`docker exec`
  - Ejecutamos comandos de un container encendido.

 -`docker build`
  - Construimos una imagen.

 -`docker inspect`
  - Inspeccionamos el contenido de un container.

 -`docker network`
  - Permite administrar una red dentro de docker.doc

  ## PARTE 8

1. ¿Qué es bash? ¿Qué significa?
 - Es un programa informático , significa que puede ejecutar lineas de comando en modo consola.

2. ¿Cómo ejecuto un archivo bash?
 - ./<path ó ruta>/<nombre del archivo.sh>

3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?
 - No se ejecuta.

4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?
 - Si se puede , pero también se debe cambiar la extensión del archivo.

5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?

 - En el docker CLI con el flag:
 ````
  -e <nombre de la variable>='valor asignado'
  ````

  - En docker-compose escribiendo : 
  ````
  services : 
   node:
    environment:
     - <nombre de la variable>: <valor asignado>
````

## PARTE 9 

1.- ¿Qué sucede si le quito el @?

 - Se observa la línea del comando que se está ejecutando.

2. ¿Para qué sirve el archivo `Makefile`?

 - Para ejecutar lineas de código a través de targets.

3. ¿Qué es un `target` en `Makefile`?

 - Un target es el nombre que le asignamos a una o varias líneas de comando. 

## PARTE 10 

1.-¿Qué significa el comando -d?
 - Especifica el directorio.

2.-¿Porqué la sentencia comienza con @?
 - Para que no se vea en consola el comando que se está ejecutando.

3.-¿Para qué sirve el comando mkdir?
 - Para crear un archivo.

4.-Explicar lo que hace la función mkdir_deploy_dir
 - Valida si una carpeta está creada, si no la crea.

5.- ¿Para qué sirve el uso de \?
 - Para hacer un salto de linea.

6.- ¿Para qué sirve el uso de &&?
 - Para ejecutar una instrucción después de otra.

7.- ¿Qué función cumple usar los argumentos -rf?
 - Es el recursivo forzado.

8.- Explicar lo que hace la función git_init (linea por linea)
- Se situa en la carpeta del proyecto , borra la carpeta .git e inicializa la carpeta.

9.- ¿Para qué sirve el uso de eval?
 - Sirve para ejecutar un comando de alamcenamiento en una variable 

10.- ¿Para qué sirve el uso de shell?
 - Para que se interprete como comando shell en el makefile
11.- ¿Para qué sirve el uso de git log --pretty=format:"%an"?
 - Git log lista el historial de los commits , el pretty format muestra campos especificos (el an nos muestra el nombre del autor).

12.- ¿Cuál es la diferencia en usar git config y git config --global?
- El git config es para un solo proyecto , y el git config global hace la configuración de git de manera global.

13.- Explicar lo que hace la función git_config (línea por línea)
- En las dos primeras líneas se estan declarando variables, luego se ingresa a la carpeta del proyecto pero no se muestra
el comando en ejecución en consola; finalmente se hace la configuracion de usuario y del email utilizando las variables declaradas arriba.

14.- ¿Para qué sirve el uso de awk?
- Es un lenguaje de programación diseñado para procesar datos basados en texto.

15.- ¿Para qué sirve el uso de sed?
- Hace un remplazo de lo que se encuentra dentro de las comillas, modifica el contenido.

16.- Explicar lo que hace la función git_add_remote_repository
- Primero guarda en una variable el nombre del repositorio remoto del push, luego busca y reemplaza , para entrara en la carpeta del proyecto y enlazar el local con el remoto.

17.- Explicar lo que hace la función create_branch_gh_pages
 - Primero entra en la carpeta del proyecto , luego crea y te posiciona en una rama con el nombre de la variable.

 18.- Explicar lo que hace la función copy_files_to_deploy
 -  Copia todos los archivos de la ruta del deploy hacia el directorio del proyecto.

 19.- Explicar lo que hace la función git_add
 - Esta función entra en el directorio del proyecto , luego agrega todos los archivos al staged area para despues hacer un git status.

 20.-¿Para qué sirve el uso de ifeq?
  - condicional
21.-¿Para qué sirve el uso de strip?
  strip - Discard symbols from object files.  
22.- Explicar lo que hace la función show_deploy_url (línea por línea)

