FROM quay.io/alfresco/alfresco-process-runtime-bundle-service:2.2.0

COPY processes /maven/processes

# add processes to classpath
ENV JAVA_OPTS="-cp . $JAVA_OPTS"
