# Use the official OpenJDK image with version 11 as the base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container at /usr/src/myapp
COPY . /usr/src/myapp/

# Compile the Java code
RUN javac Hello.java

# Specify the command to run on container startup
CMD ["java", "Hello"]
