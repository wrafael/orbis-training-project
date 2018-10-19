build:
	docker build -t ${DOCKER_IMAGE} .

push:
	make login
	docker push ${DOCKER_IMAGE} . 

up:
	docker-compose up

login: 
	docker login
