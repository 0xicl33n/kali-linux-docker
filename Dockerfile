FROM kalilinux/kali-linux-docker
MAINTAINER steev@kali.org

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN apt -y update && apt -y dist-upgrade && apt-get clean
RUN apt install kali-linux-top10 screen nikto xprobe fish
CMD ["/bin/bash"]
