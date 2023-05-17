FROM alpine:latest
WORKDIR /tmp

ARG CLASSPATH_DIRECTORY_NAME
ARG VERSION
USER alfresco

COPY project/ /tmp/
COPY copy-files-to-volume.sh /usr/local/bin/copy-files-to-volume.sh
RUN chmod o=rx /usr/local/bin/copy-files-to-volume.sh

ENV VOLUME_MOUNT=$CLASSPATH_DIRECTORY_NAME/$VERSION
CMD /usr/local/bin/copy-files-to-volume.sh $VOLUME_MOUNT
