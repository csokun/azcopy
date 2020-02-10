FROM ubuntu:bionic

RUN apt update && apt install wget -yq && \
    wget -q -O azcopy_v10.tar.gz https://aka.ms/downloadazcopy-v10-linux && \
    tar -xf azcopy_v10.tar.gz --strip-components=1 && \
    chmod +x azcopy && mv azcopy /usr/local/bin

ENTRYPOINT [ "azcopy" ]
