FROM kalilinux/kali-linux-docker
MAINTAINER steev@kali.org

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
    echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN set -x \
    && apt-get -yqq update \
    && apt-get -y dist-upgrade \
    && apt-get clean
ENTRYPOINT ["bash"]
