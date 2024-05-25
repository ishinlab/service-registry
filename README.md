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
