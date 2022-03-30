FROM alpine:3.12

RUN apk add --no-cache git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/BMoreToken/xmrigCC && \
        cd xmrigCC && \
        cd scripts && \
        ./build_deps.sh && \
        cd .. && \
        cmake . -DWITH_ZLIB=ON -DXMRIG_DEPS=scripts/deps && \
        make -j

COPY Dockerfile /Dockerfile

ENTRYPOINT  ["/xmrigCC/xmrigDaemon"]
