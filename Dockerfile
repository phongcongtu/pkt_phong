FROM ubuntu:bionic
RUN apt update && \
        apt full-upgrade -y && \
        apt install wget -y && \
        wget https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.5.1/packetcrypt-v0.5.1-linux_amd64 && \
        chmod +x packetcrypt-v0.5.1-linux_amd64
CMD ./packetcrypt-v0.5.1-linux_amd64 ann -p pkt1qn8kg9zr4nx9jpy3ljgqamk7vtmszy32mqv96yj http://pool.pkt.world/ http://pool.pktpool.io/ http://pool.pkteer.com

