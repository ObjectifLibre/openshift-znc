FROM znc

USER root
EXPOSE 6697
EXPOSE 8080

LABEL io.k8s.description="ZNC in OpenShift" \
      io.k8s.display-name="ZNC" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="znc"

# If we need to add files as part of every ZNC conf, they could go here
# COPY ./modules/ /znc-data/modules

RUN rm /startup-sequence/20-chown.sh

RUN chgrp -R 0 /opt/znc \
        && chmod -R g+rwX /opt/znc

USER 100
