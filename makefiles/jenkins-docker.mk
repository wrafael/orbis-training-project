.PHONY: jenkins-docker

JENKIS_NAME = jenkins_name
JENKIS_NETWORK = jenkis_net
JENKIS_VOLUMEN = jenkins_volumen
PORT_NODE = 1042

docker.build:
	docker build -t ${USER_DOCKER}/jenkins-deploy:1.0.0 docker/jenkins


jenkins-workspace:
	echo "project workspace new"
	docker rm ${JENKIS_VOLUMEN}
	docker create -v /app --name ${JENKIS_VOLUMEN} alpine
	docker cp ./ ${JENKIS_VOLUMEN}:/app

jenkins-install:
	docker run -t --rm --volumes-from ${JENKIS_VOLUMEN} -w /app ${DOCKER_IMAGE} npm install

jenkins-start:
	docker network create ${JENKIS_NETWORK}
	docker run -d --net=${JENKIS_NETWORK} \
	--name ${JENKIS_NAME} -p 3030:${PORT_NODE} \
	--volumes-from ${JENKIS_VOLUMEN} -w /app ${DOCKER_IMAGE} npm start

jenkins-curl:
	echo "CURL"
	docker run -t  --rm --net=${JENKIS_NETWORK} \
	--volumes-from ${JENKIS_VOLUMEN} -w /app ${DOCKER_IMAGE} \
	curl ${JENKIS_NAME}:${PORT_NODE}
