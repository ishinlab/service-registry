# Service Registry

Eureka is the Netflix Service Discovery Server and Client. The server can be configured and deployed to be highly available, with each server replicating state about the registered services to the others.

### Build the Project

```shell
./gradlew clean build
```

### Running the Application

```shell
./gradlew bootRun
```

### Testing

```shell
./gradlew --info check
```

### Usage

```yaml
services:
  service-registry:
    image: ishinvin/service-registry:latest
  environment:
    - SERVER_PORT=8761
    - SPRING_SECURITY_USER_NAME=admin
    - SPRING_SECURITY_USER_PASSWORD=admin
    - "JAVA_OPTS=-Xms512m -Xmx1024m -XX:+UseG1GC"
```
