FROM icemichael/qt6.3:qt6.3-amd-built

ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "Running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apt-get -y update && apt-get install -y
RUN apt-get -y install g++-11 cmake git file g++-11 ninja-build build-essential libgl1-mesa-dev default-jre libglvnd-dev
RUN apt-get -y install netcat

ENV CMAKE_GENERATOR Ninja
ENV CXX g++-11