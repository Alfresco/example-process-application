FROM quay.io/alfresco/alfresco-process-runtime-bundle-service:2.0.0

COPY processes BOOT-INF/classes/processes

# take process files from activiti example and add them
RUN jar uvf /maven/*.jar BOOT-INF/classes/processes \
  && rm -rf BOOT-INF

