FROM quay.io/alfresco/alfresco-process-runtime-bundle-service:develop

COPY --from=activiti/example-runtime-bundle:7.0.0.RC1 /opt/app.jar /

# take process files from activiti example and add them
RUN jar xvf /app.jar BOOT-INF/classes/processes \
  && jar uvf /maven/*.jar BOOT-INF/classes/processes \
  && rm /app.jar

