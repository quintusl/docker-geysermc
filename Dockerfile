FROM openjdk:16-jdk
VOLUME /data
WORKDIR /data
ENV REMOTE_ADDRESS 127.0.0.1
ADD https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/build/libs/Geyser-Standalone.jar /data
EXPOSE 19132
CMD ["java", "-Xms1024m", "-Xmx1024m", "-jar", "Geyser-Standalone.jar", "--remote.address=$REMOTE_ADDRESS"]
