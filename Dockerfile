FROM jenkins/jenkins:lts
MAINTAINER j611062000@gmail.com

USER root

RUN apt-get update && \
  apt-get -y --no-install-recommends install apt-transport-https \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common && \
  curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
  add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
  $(lsb_release -cs) \
  stable" && \
  apt-get update && \
  apt-get -y --no-install-recommends install docker-ce && \
  apt-get clean \

  USER jenkins

CMD sleep infinity
