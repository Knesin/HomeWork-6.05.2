FROM alpine:latest
    LABEL desc="HomeWork-6.04.1"
    RUN apk add --no-cache g++ clang git bash
    WORKDIR ./homework
    RUN git clone https://github.com/Knesin/HomeWork-6.01.2 test
    RUN g++ -std=c++17 ./test/HomeWork-6.01.2.cpp -o testgcc
    RUN clang++ -std=c++17 -stdlib=libstdc++ ./test/HomeWork-6.01.2.cpp -o testclang
    CMD ["/bin/bash", "-c", "./testgcc; ./testclang;"]