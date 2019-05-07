## xampp-docker

Docker image containg Debian/buster and the latest XAMPP 7.3.5.

Note: This image was built for development purposes.


## Running the image:

For convience, an startup script is provided : xampp-docker.sh

```
xampp-docker 
    without arguments will launch xampp-docker and drop a bash shell

xampp-docker stop
    stops the running docker container

xampp-docker commands
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

[cswl/docker-xampp](https://github.com/cswl/docker-xampp) unlicenced and [tomsik68/docker-xampp](https://github.com/tomsik68/docker-xampp) unlicensed and [fuyuanli/Dockerfile-XAMPP](https://github.com/fuyuanli/Dockerfile-XAMPP) which is licensed under GPL v3.0.
