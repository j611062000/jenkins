**What is this repo**
- For those who is struggling in setting docker socket in Jenkins container

**How to use this repo**

```
sh launch_jenkins.sh
```

1. Make sure the UID of ${dir_jenkins_home} in your host the same as the UID of user in your container
2. Mount /var/run/docker.sock into the container from the host.
3. Install Docker client in your service container (e.g. container of Jenkins)
4. Add the user in your container into the group which GID is the same as the one of docker group in the host