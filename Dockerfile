FROM java:8

RUN mkdir /opt/maven
RUN curl -s -j -k -L "http://www.eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz" | tar xz --strip=1 -C "/opt/maven"
ENV PATH /opt/maven/bin:$PATH
WORKDIR /demo

entrypoint ["/demo/gradlew","bootRun"]