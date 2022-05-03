# CloudCompare-Docker
A dockerized version of CloudCompare based on ubuntu 20.04, and compiled with the PDAL plugin

# Build instructions
(Note this has only been tested on a centos stream 8 host os)
To build, simply run the build.sh script

# Useage
To use the docker image once is has been built, use the cloudcompare.sh script.
This script will start the docker container, mount the indicated input filt to the
container, and start CloudCompare with the input file
useage: cloudcompare.sh <input_file_path>
