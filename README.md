# CloudCompare-Docker
A dockerized version of CloudCompare based on ubuntu 20.04, and compiled with the PDAL plugin

# Build instructions
(Note this has only been tested on a centos stream 8 host os)
To build, simply run the build.sh script

# Useage
To use the docker image once is has been built, use the cloudcompare.sh script.
This script will start the docker container, mount the indicated directory to the
container in the /data directory, and then run any further commands passed to
it in CloudCompare
useage: cloudcompare.sh <input_dir_path> <optional additional commands>...

for example, to open a point cloud called abc.las in directory def, do this:
`cloudcompare.sh path/to/def /data/abc.sf`

or to open multiple point clouds do this:
`cloudcompare.sh path/to/def /data/abc.las /data/cba.las`

or, to just open cloud compare do:
`cloudcompare.sh /path/to/def`
