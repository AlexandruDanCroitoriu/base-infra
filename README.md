export DOCKER_SOCK_GROUP_ID=$(stat -c '%g' /var/run/docker.sock)
./scripts/build_jenkins_image.sh
