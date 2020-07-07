FROM java:8
COPY src /home/javahello/src
WORKDIR /home/javahello
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
