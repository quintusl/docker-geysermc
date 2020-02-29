FROM openjdk:8-jdk
RUN mkdir /data
VOLUME /data
WORKDIR /data
ADD https://ci.nukkitx.com/job/Geyser/job/master/lastSuccessfulBuild/artifact/target/Geyser.jar server.jar
EXPOSE 19132
CMD ["java", "-Xms1024m", "-Xmx1024m", "-jar", "server.jar"]

