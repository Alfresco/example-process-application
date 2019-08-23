FROM quay.io/alfresco/alfresco-dmn-runtime-service:2.3.0

COPY decision-tables /maven/decision-tables

# add forms to classpath
ENV JAVA_OPTS="-cp . $JAVA_OPTS"
