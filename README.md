export DOCKER_SOCK_GROUP_ID=$(stat -c '%g' /var/run/docker.sock)
./scripts/0-build_start_all.sh



docker login -u maxuli -p PASSWORD

docker image tag wt-code-server maxuli/wt-code-server:latest
docker push maxuli/wt-code-server:latest

docker image tag wt_builder maxuli/wt-builder:latest
docker push maxuli/wt-builder:latest

docker image tag jenkins-docker maxuli/jenkins-docker:latest
docker push maxuli/jenkins-docker:latest