#!/bin/sh

docker build -t xampp:latest .
docker tag xampp:latest  xampp:7.3.5
