FROM quay.io/alfresco/alfresco-form-service:develop

COPY project/forms /maven/forms
COPY project/project.json /maven/project.json
