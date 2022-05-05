FROM ubuntu:20.04
RUN apt update -y && \
    apt install -y software-properties-common && \
    apt update -y && \
    add-apt-repository -y ppa:kisak/kisak-mesa && \
    apt update -y && \
    apt full-upgrade -y
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    qtbase5-dev \
    qtchooser \
    qt5-qmake \
    qtbase5-dev-tools \
    libqt5svg5-dev \
    libqt5opengl5-dev \
    qttools5-dev \
    qttools5-dev-tools \
    libqt5websockets5-dev \
    cmake \
    xauth \
    g++ \
    pdal \
    libpdal-dev \
    git && \
    mkdir /cloudcompare
WORKDIR /cloudcompare
RUN git clone -b v2.12.0 --single-branch --recursive \
    https://github.com/cloudcompare/CloudCompare.git .
RUN mkdir build && \
    cd build && \
    cmake -DPLUGIN_IO_QPDAL=ON .. && \
    cmake --build . && \
    cmake --install .
CMD ["/cloudcompare/build/qCC/CloudCompare"]
