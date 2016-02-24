FROM busybox
MAINTAINER PoeZhang <bozhang@thoughtworks.com>

ADD https://storage.googleapis.com/kubernetes-release/release/v1.1.2/bin/linux/amd64/kubelet /opt/stores/kubelet

RUN chmod +x /opt/stores/kubelet

ADD https://storage.googleapis.com/kubernetes-release/release/v1.1.2/bin/linux/amd64/kubectl /opt/stores/kubectl

RUN chmod +x /opt/stores/kubectl

ADD https://storage.googleapis.com/kubernetes-release/release/v1.1.2/bin/linux/amd64/kube-proxy /opt/stores/kube-proxy

RUN chmod +x /opt/stores/kube-proxy

VOLUME /stores

CMD cp -fr /opt/stores/* /stores
