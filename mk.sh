docker build -f Dockerfile -t demo/maven:3.3-jdk-8 .
docker run -it --rm -v "$PWD":/app -w /app demo/maven:3.3-jdk-8 mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -Dinte
cd  my-app
docker run -it --rm -v "$PWD":/app -w /app demo/maven:3.3-jdk-8 mvn package
docker run -it --rm -v "$PWD":/app -w /app demo/maven:3.3-jdk-8 java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App

