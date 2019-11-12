FROM quay.io/alfresco/alfresco-dmn-runtime-service:develop

COPY project/decision-tables /maven/decision-tables
COPY project/project.json /maven/project.json

