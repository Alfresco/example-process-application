# example-script-runtime-service

_Example Script Runtime Service_ based on the [Alfresco Script Runtime Service](https://github.com/Alfresco/alfresco-script-runtime-service/tree/develop/alfresco-script-app-runtime).

*To build and publish*:

```bash
export DOCKER_IMAGE_TAG=<branch>
./build.sh
./push.sh
```


*How to test the built image*

``` bash
docker run -it -p 127.0.0.1:8080:8080 \
  --env SCRIPTCONFIGURATION_SCRIPTSDEFINITIONSDIRECTORYPATH=file:/maven/scripts/ \
  --env KEYCLOAK_AUTHSERVERURL=https://identity.***/auth \
  --env SPRING_DATASOURCE_URL=jdbc:postgresql://***.us-east-1.rds.amazonaws.com:5432/external-db-app \
  --env SPRING_DATASOURCE_USERNAME=*** \
  --env SPRING_DATASOURCE_PASSWORD=*** \
  --env SPRING_RABBITMQ_HOST=*** \
  --env SPRING_RABBITMQ_USERNAME=*** \
  --env SPRING_RABBITMQ_PASSWORD=*** \
  --env SPRING_RABBITMQ_PORT=5672 \
    alfresco/example-script-runtime-service
```

Hit the `http://localhost:8080/actuator/info` endpoint successfully.

Note: The above assumes that the running container has access to a valid license reachable at this location:
`/root/.activiti/enterprise-license/activiti.lic`

Otherwise for testing purpose, please add the following line to the Dockerfile:
```bash
COPY activiti.lic /root/.activiti/enterprise-license/activiti.lic
```
and the `activiti.lic` license file to the project repository root.

Messaging rabbitmq variables are optional.


