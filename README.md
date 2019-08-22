# alfresco-example-dmn-service

Example Decision Table Runtime service based on the Decision Table Runtime Service.

```bash
export DOCKER_IMAGE_TAG=<branch>
./build.sh
./push.sh

```

*How to test the built image*

```bash
docker run -p 127.0.0.1:8180:8180 --env  KEYCLOAK_AUTHSERVERURL=https://identity.${HOST}/auth  --env KEYCLOAK_REALM=alfresco alfresco/alfresco-dmn-service
```

hit the http://localhost:8180/actuator/info endpoint 
and get a 200.
