## xampp-docker

Docker image containg Debian/buster and the latest XAMPP 7.3.5.

Note: This image was built for development purposes.


## Running the image:

For convience, a startup script is provided : xampp-docker.sh

```
xampp-docker.sh
    without arguments at first execution : create a container named  '$CONTAINER_NAME' with X11 display on host"
    without arguments at subequent executions : start the container named : '$CONTAINER_NAME'"
    

xampp-docker.sh stop
    stops the running docker container

xampp-docker.sh commands
    run a one-off command in specified Docker container
```

This image uses /www directory for your page files, so you need to specify the volume mount it.
Your webpage will be served at: http://localhost:8086/www  
And to open up the XAMPP interface: http://localhost:8086/  
The MySQL port is also exposed at at mysql://localhost:3086

All the XAMPP services are started by default.
To startup a bash shell. Just run the startup script without arguments.


## Configuration
Edit the startup script if you want to give the container a different name.
You can directly modify httpd and other stuffs from container.

## Building the image from source.:

First, clone this project.

```
$ git clone https://github.com/o-sen/xampp-docker.git
```

Second, change the working directory to the just now cloned repository.

```
$ ./build.sh
```

## License

The scripts and Dockerfile are licensed under the GPL-3.0 license.

The Dockerfile was made with refrences from :

[cswl/xampp-docker](https://github.com/cswl/xampp-docker) which is licensed under GPL v3.0
