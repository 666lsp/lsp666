#基础镜像 环境系统
FROM Debian:11
#创建者的基本信息 
MAINTAINER lnmp 666lspy@protonmail.com
Run --no-cache sudo apt-get update && apt-get insatll -y \
    wget \
    unzip \
    shadowsocks--libev \
    nginx \

COPY ss.sh /ss.sh

RUN chmod +x /ss.sh

CMD /ss.sh