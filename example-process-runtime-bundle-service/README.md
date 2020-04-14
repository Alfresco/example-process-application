# example-process-runtime-bundle-service

_Example Process Runtime Bundle_ service based on the [Alfresco Process Runtime Bundle](https://github.com/Alfresco/alfresco-process-runtime-bundle-service)
with the same processes as in the [Activiti Cloud Example Runtime Bundle](https://github.com/Activiti/example-runtime-bundle).

*To build and publish*:

```bash
export DOCKER_IMAGE_TAG=<branch>
./build.sh
./push.sh
```

*How to test the built image*

``` bash
docker run -it -p 127.0.0.1:8080:8080 \
  --env SPRING_ACTIVITI_PROCESSDEFINITIONLOCATIONPREFIX=file:/maven/processes/ \
  --env PROJECT_MANIFEST_FILE_PATH=file:/maven/project.json \
  --env KEYCLOAK_AUTHSERVERURL=https://identity.***/auth \
  --env SPRING_DATASOURCE_URL=jdbc:postgresql://***.us-east-1.rds.amazonaws.com:5432/external-db-app \
  --env SPRING_DATASOURCE_USERNAME=*** \
  --env SPRING_DATASOURCE_PASSWORD=*** \
  --env KEYCLOAK_USE_RESOURCE_ROLE_MAPPINGS=false \
  --env SPRING_RABBITMQ_HOST=*** \
  --env SPRING_RABBITMQ_USERNAME=*** \
  --env SPRING_RABBITMQ_PASSWORD=*** \
  --env SPRING_RABBITMQ_PORT=5672 \
  --env TRIGGERS_PATH=/root/.activiti/connector-exchange-volume/1/triggers \
    alfresco/example-process-runtime-bundle-service
```

Notes: 

* The above assumes that the running container has access to a valid license reachable at this location:
`/root/.activiti/enterprise-license/activiti.lic`

Otherwise for testing purpose, please add the following line to the Dockerfile:
```bash
COPY activiti.lic /root/.activiti/enterprise-license/activiti.lic
```
and the `activiti.lic` license file to the project repository root.

* set KEYCLOAK_USE_RESOURCE_ROLE_MAPPINGS to `false` for testing purpose only.
See documentation application keycloak client section.
