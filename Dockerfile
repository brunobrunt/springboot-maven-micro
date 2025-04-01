#FROM openjdk:21-jdk 
#COPY target/springboot-maven-micro-svc-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

FROM openjdk:21-jdk 

# Set the working directory
WORKDIR /app 

# Copy the JAR file into the container at /app/app.jar
#COPY target/springboot-maven-micro-svc-0.0.2-SNAPSHOT.jar app.jar 
COPY target/springboot-maven-micro-svc-0.0.2.jar app.jar 

# Expose the application's port
EXPOSE 8089 

# Run the application. This instruction is used to set the executeables that would always run when the container is initiated.
ENTRYPOINT ["java", "-jar", "app.jar"]

