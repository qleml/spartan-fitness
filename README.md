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
    docker build -t spartan-fitness:latest .
    ```
4. if work with us directly, decrypt the encrypted `credentials.yml.enc` file with the secret key we gave you, otherwise fill in the boilerplate of the credentials with your own. 
5. Run a docker container with our custom script
    ```
    docker run /var/lib/spartan-fitness/db:/app/db -d -p 80:80 -p 443:443 -p 7050:7050 --name spartan-fitness -e RAILS_MASTER_KEY=<value from config/master.key> spartan-fitness

    docker run -d -p 80:80 -p 443:443 -p 7050:7050 --name spartan-fitness -e RAILS_MASTER_KEY=<value from config/master.key> spartan-fitness /bin/bash
    ```
      This script mounts all the necessary volumes and should run the application on `localhost:7050` in the docker container called `spartan-fitness`. You have the option to start the script with the `-s` flag, i.e. `./run.sh -s`. This will open a shell in the container and you can proceed with `./bin/rails server` to run the application. The shell is important, because external packages should always be installed from this shell inside the container (i.e. if you want to install further packages for the application) to keep your local machine clean and reduce conflicts with local packages. If you prefer, you can rebuild the Docker image afterwards following step 3.

