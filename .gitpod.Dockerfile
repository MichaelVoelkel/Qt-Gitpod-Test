FROM icemichael/qt6.3:qt6.3-amd-built

ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "Running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apt-get -y update && apt-get install -y
RUN apt-get -y install g++-11 cmake git file g++-11 ninja-build build-essential libgl1-mesa-dev default-jre libglvnd-dev
RUN apt-get -y install netcat

# link system fonts to Qt
RUN ln -snf /usr/share/fonts/truetype/dejavu /usr/local/Qt-6.3.2/lib/fonts

ENV CMAKE_GENERATOR Ninja
ENV CXX g++-11
ENV QT_QPA_PLATFORM vnc:size=1280x1024