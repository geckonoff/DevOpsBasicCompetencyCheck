# DevOps Basic Competency Check

## Technologies

Bash, Ansible, Docker, SSH.

## Tasks

Any file generated should be shipped back as part of your response. Any script should account for the directory structure shipped back. That is, any script provided as part of your response is expected to run without requiring any changes.

* Generate a file `hello.txt` with content `Hello, `.
* Generate a file `world.txt` with content `World!`.
* Write a Dockerfile that builds an image based on Ubuntu 22.04 and includes `hello.txt` under `/hello.txt`. Any container running this image should stay up indefinitely.
* Write an executable script `build-docker-image.sh` that builds the docker image and returns 1 on error. Image name should be `devops-test-image`. Any container running it should be called `devops-test-container`.
* Write an executable script `run-docker-container.sh` that runs a Docker container based on the resulting image.
* Write an Ansible script that achieves the following:
  * Copy local file `world.txt` to `devops-test-container:/world.txt`.
  * Within `devops-test-container`, concatenate contents of `/hello.txt` and `/world.txt` into new file `/hello_world.txt`.
  * Copy `devops-test-container:/world.txt` back to local file system.
* *Bonus*: Amend Dockerfile and scripts to allow for SSH connections to the container using some SSH key pair. Include the key files in your response for us to check connectivity. Specify any changes to any files on the host system, as well.