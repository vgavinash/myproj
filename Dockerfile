# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Install the OpenJDK 8 package
RUN apt-get update && apt-get install -y openjdk-8-jdk

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the java program
RUN javac HelloWorld.java

# Run the program when the container starts
CMD ["java", "HelloWorld"]
