FROM frolvlad/alpine-java:jre8-slim
VOLUME /tmp
ADD target/customer-service-0.0.1-SNAPSHOT.jar test-customer.jar
RUN sh -c 'touch /test-customer.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/bank-customer-service.jar"]
EXPOSE 3333
