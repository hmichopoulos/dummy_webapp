FROM java:7
MAINTAINER Haris Michopoulos <haris.michopoulos@nexusgroup.com>
COPY dummy-0.0.1-SNAPSHOT.jar /opt/
WORKDIR /opt
CMD ["java", "-jar", "dummy-0.0.1-SNAPSHOT.jar"]

