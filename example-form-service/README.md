# example-forms-service

_Example Form Runtime Service_ based on the [Alfresco Form Runtime Service](https://github.com/Alfresco/alfresco-form-service).

*To build and publish*:

```bash
export DOCKER_IMAGE_TAG=<branch>
./build.sh
./push.sh
```


*How to test the built image*

``` bash
docker run -it -p 127.0.0.1:8185:8185 \
  --env FORMCONFIGURATION_FORMSDEFINITIONSDIRECTORYPATH=file:/maven/forms/ \
  --env APPLICATION_VERSION=1 \
  --env KEYCLOAK_AUTHSERVERURL=https://identity.***/auth \
  --env SPRING_DATASOURCE_URL=jdbc:postgresql://***.us-east-1.rds.amazonaws.com:5432/external-db-app \
  --env SPRING_DATASOURCE_USERNAME=*** \
  --env SPRING_DATASOURCE_PASSWORD=*** \
  --env SPRING_RABBITMQ_HOST=*** \
  --env SPRING_RABBITMQ_USERNAME=*** \
  --env SPRING_RABBITMQ_PASSWORD=*** \
  --env SPRING_RABBITMQ_PORT=5672 \
    alfresco/example-form-service
```

Obtain a token on keycloak:
`https://identity.***/auth/realms/alfresco/protocol/openid-connect/token`

Hit the GET `http://localhost:8185/v1/forms` endpoint and get:
```json
[
    {
        "formRepresentation": {
            "id": "form-c32e4995-1590-4672-89ec-2de26050564d",
            "name": "testForm",
            "description": "",
            "version": 0,
            "standAlone": true
        }
    }
]
```
