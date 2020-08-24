# example-application-project

*To build and publish*:

Update values for variables in **build.properties** for registry url.

```
CLASSPATH_DIRECTORY_NAME=${CLASSPATH_DIRECTORY_NAME:-example-app}
VERSION=${VERSION:-1}
```

```
export DOCKER_REGISTRY="quay.io"
```


***To build and push image***
```bash
./build.sh
./push.sh
```

To test this image you need to have Job with volumemount to copy project files from the image.

example job yaml:

```
apiVersion: batch/v1
kind: Job
metadata:
  name: volume-init
spec:
  template:
    spec:
      imagePullSecrets:
        - name: registry-secret
      volumes:
        - name: example-app
          persistentVolumeClaim:
            claimName: example-app
      containers:
        - name: volume-init
          image: #image location
          volumeMounts:
            - name: example-app
              mountPath: /root/example-app/
              readOnly: false
```
