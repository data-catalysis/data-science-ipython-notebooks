DATA_SCIENCE_DOCKER = jupyter/datascience-notebook:latest
DATA_SCIENCE_DOCKER_NETWORK = data_science_docker_network

init:
	docker pull ${DATA_SCIENCE_DOCKER}

run:
	docker run --rm -e JUPYTER_ENABLE_LAB=yes -w /home/jovyan/work -u root -p 8888:8888 -v ${PWD}:/home/jovyan/work ${DATA_SCIENCE_DOCKER}