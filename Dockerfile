FROM kalilinux/kali-linux-docker
MAINTAINER steev@kali.org

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN apt -y update && apt -y dist-upgrade && apt-get clean
RUN apt install -y metasploit nmap john sqlmap hydra screen nikto xprobe fish curl
RUN mkdir /root/.config
RUN mkdir /root/.config/fish
RUN curl -o /root/.config/fish/config.fish https://raw.githubusercontent.com/0xicl33n/dotfiles/master/config/fish/config.fish.root 
CMD ["/bin/bash"]
