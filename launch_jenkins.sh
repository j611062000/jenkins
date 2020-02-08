docker stop jenkins 2> /dev/null
docker rm jenkins 2> /dev/null

docker build -t jenkins/jenkins .

docker run -d \
-p 8080:8080 \
--name jenkins \
--group-add $(stat -c '%g' /var/run/docker.sock) \
-v ~/jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
jenkins/jenkins
