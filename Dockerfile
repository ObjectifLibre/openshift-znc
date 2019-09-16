FROM znc

USER root
EXPOSE 6697

LABEL io.k8s.description="ZNC in OpenShift" \
      io.k8s.display-name="ZNC" \
      io.openshift.expose-services="6697:http" \
      io.openshift.tags="znc"

# If we need to add files as part of every ZNC conf, they could go here
# COPY ./modules/ /znc-data/modules

USER znc
