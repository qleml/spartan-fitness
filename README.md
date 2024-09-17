# The Spartan Fitness App

## Get started (as a developer)

### Docker (recommended)

1. For installation of Docker please refer to the [official documentation!](https://docs.docker.com/engine/install/)
 
2. Clone this repo:
   ```
    git clone git@github.com:qleml/spartan-fitness.git
    cd spartan-fitness
   ```
3. Build the docker image locally on your machine:
    ```
    docker build -t spartan-server:latest .
    ```
4. Run a docker container with our custom script
    ```
    ./run.sh (to be built)
    ```
      This script mounts all the necessary volumes and should run the application on `localhost:7050` in the docker container called `spartan-fitness`. You have the option to start the script with the `-s` flag, i.e. `./run.sh -s`. This will open a shell in the container and you can proceed with `./bin/rails server` to run the application. The shell is important, because external packages should always be installed from this shell inside the container (i.e. if you want to install further packages for the application) to keep your local machine clean and reduce conflicts with local packages. If you prefer, you can rebuild the Docker image afterwards following step 3.

