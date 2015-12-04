FROM ubuntu:trusty

ENV TZ="US/Pacific"
ENV HFILE_PATH=/usr/local/share/xtide/harmonics-dwf-20141224-free.tcd:/usr/local/share/xtide/harmonics-dwf-20100522-free.tcd

ADD ./xtide-2.14 /xtide/xtide-2.14
ADD ./harmonics-dwf-20141224/harmonics-dwf-20141224-free.tcd /usr/local/share/xtide/harmonics-dwf-20141224-free.tcd
ADD ./harmonics-dwf-20100522-free.tcd /usr/local/share/xtide/harmonics-dwf-20100522-free.tcd

RUN chmod 755 /usr/local/share/xtide
RUN chmod 644 /usr/local/share/xtide/harmonics-dwf-20141224-free.tcd
RUN chmod 644 /usr/local/share/xtide/harmonics-dwf-20100522-free.tcd

RUN apt-get update

RUN yes | apt-get install \
    gawk \
    g++ \
    libpng-dev \
    zlib1g-dev \
    libtcd-dev \
    build-essential





RUN cd /xtide/xtide-2.14; ./configure --without-x

RUN cd /xtide/xtide-2.14; make; make install

