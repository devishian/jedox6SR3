FROM debian

RUN apt-get install libc6-i386
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install libfreetype6:i386
RUN apt-get install libfontconfig1:i386
RUN apt-get install libstdc++6:i386

RUN mkdir /usr/share/jedox
RUN curl http://www.jedox.com/downloads/software/6/sr3/jedox_6_0_sr3.tar | tar xvz -C /usr/share/jedox
RUN install.sh

CMD ["/user/share/jedox/jedox-suite.sh start"]
EXPOSE 80 7775 7777 4242
