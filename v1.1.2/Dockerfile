FROM busybox
MAINTAINER PoeZhang <bozhang@thoughtworks.com>

ADD https://storage.googleapis.com/kubernetes-release/release/v1.1.2/bin/linux/amd64/kubelet /opt/stores/kubelet

RUN chmod +x /opt/stores/kubelet

ADD https://storage.googleapis.com/kubernetes-release/release/v1.1.2/bin/linux/amd64/kubectl /opt/stores/kubectl

RUN chmod +x /opt/stores/kubectl

VOLUME /stores

CMD cp -fr /opt/stores/* /stores
