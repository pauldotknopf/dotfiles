function docker-rm-all-containers() {
    docker kill $(docker ps -a -q)
    docker rm $(docker ps -a -q)
}

function docker-rm-all-images() {
    docker-rm-all-containers
    docker rmi --force $(docker images -q)
}