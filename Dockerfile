FROM openjdk:16-jdk
VOLUME /data
WORKDIR /data
ADD https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/build/libs/Geyser-Standalone.jar /data
EXPOSE 19132
CMD ["java", "-Xms1024m", "-Xmx1024m", "-jar", "Geyser-Standalone.jar"]
