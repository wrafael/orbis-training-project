.PHONY: jenkins-docker


docker.build:
	docker build -t ${USER_DOCKER}/jenkins-deploy:1.0.0 docker/jenkins


jenkins-workspace:
	echo "project workspace new"
	docker create -v /app --name new_volumen alpine
	docker cp ./ new_volumen:/app

jenkins-install:
	docker run -t --rm --volumes-from new_volumen -w /app ${DOCKER_IMAGE} npm install

jenkins-start:
	docker network create orbis_net
	docker run -d --net=orbis_net --name node_jenkins_start -p 3030:1042 --volumes-from new_volumen -w /app ${DOCKER_IMAGE} npm start

 