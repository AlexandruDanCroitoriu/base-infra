export DOCKER_SOCK_GROUP_ID=$(stat -c '%g' /var/run/docker.sock)
./scripts/0-build_start_all.sh



docker login -u maxuli -p PASSWORD

docker image tag wt-code-server maxuli/wt-code-server:latest
docker push maxuli/wt-code-server:latest

docker image tag wt_builder maxuli/wt-builder:latest
docker push maxuli/wt-builder:latest

docker image tag jenkins-docker maxuli/jenkins-docker:latest
docker push maxuli/jenkins-docker:latest

docker image tag django-code-server maxuli/django-code-server:latest
docker push maxuli/django-code-server:latest


git config --global user.email "partyentertainers93@gmail.com"
git config --global user.name "Alexandru Dan Croitoriu"
