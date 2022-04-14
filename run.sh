#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo docker run -d --restart always --name PKT -it --cpus="2.0" --cpu-shares="6000" nguyenduyphong/pkt_phong:tagname
