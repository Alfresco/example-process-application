FROM quay.io/alfresco/alfresco-form-service:2.3.0

COPY forms /maven/forms

# add forms to classpath
ENV JAVA_OPTS="-cp . $JAVA_OPTS"
