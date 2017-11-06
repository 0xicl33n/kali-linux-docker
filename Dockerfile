FROM kalilinux/kali-linux-docker
MAINTAINER steev@kali.org

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
RUN apt -y update && apt -y dist-upgrade && apt-get clean
RUN apt install -y metasploit-framework nmap john sqlmap hydra screen nikto xprobe fish curl python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential
RUN mkdir /root/.config
RUN mkdir /root/.config/fish
RUN curl -o /root/.config/fish/config.fish https://raw.githubusercontent.com/0xicl33n/dotfiles/master/config/fish/config.fish.root 
RUN pip install --upgrade pip
RUN pip install --upgrade pwntools
#GUI
#RUN apt install tightvncserver xfce4 xfce4-goodies
CMD ["/bin/bash"]
