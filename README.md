0. Make sure the UID of ${dir_jenkins_home} in your host the same as the UID of user in your container
1. Mount /var/run/docker.sock into the container from the host.
2. Install Docker client in your service container (e.g. container of Jenkins)
3. Add the user in your container into the group which GID is the same as the one of docker group in the host