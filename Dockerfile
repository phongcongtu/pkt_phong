FROM ubuntu:bionic
RUN apt update && \
        apt full-upgrade -y && \
        apt install wget -y && \
        wget http://github.com/SiemdeNijs/packetcrypt_rs_SNcomp/releases/download/release/packetcrypt_x8664_linux && \
        chmod +x packetcrypt_x8664_linux
CMD ./packetcrypt_x8664_linux ann -p pkt1qn8kg9zr4nx9jpy3ljgqamk7vtmszy32mqv96yj http://pool.pkt.world/ http://pool.pktpool.io/ https://pool.pkthash.com/ http://pool.k1m3r4.com/ http://oeuf2pool.xyz http://pool.pkteer.com
