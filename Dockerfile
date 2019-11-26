FROM quay.io/alfresco/alfresco-dmn-runtime-service:7.1.0.M5

COPY project/decision-tables /maven/decision-tables
COPY project/project.json /maven/project.json

