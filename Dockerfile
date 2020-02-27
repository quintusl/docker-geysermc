FROM openjdk:8-jdk
RUN mkdir /data
VOLUME /data
ADD https://ci.nukkitx.com/job/Geyser/job/master/lastSuccessfulBuild/artifact/target/Geyser.jar /data/server.jar
EXPOSE 19132
RUN cd /data
CMD java -Xms1024m -Xmx1024m -jar server.jar

