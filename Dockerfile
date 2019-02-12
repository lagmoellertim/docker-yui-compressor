FROM java
WORKDIR /tmp
ADD newestRelease.sh newestRelease.sh
RUN sh newestRelease.sh
RUN unzip yuicompressor-*.zip
RUN ls
RUN mkdir /compressor
RUN mv yuicompressor-*.jar /compressor/yuicompressor.jar
RUN rm -rf /tmp
WORKDIR /usr/bin
COPY compress compress
RUN chmod +x compress
WORKDIR /workdir