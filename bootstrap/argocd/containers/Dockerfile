FROM argoproj/argocd:v1.6.1

ARG XDG_CONFIG_HOME=$HOME/.config
ARG VERSION=0.3.0
ARG PLATFORM=linux
ARG ARCH=amd64


USER root

RUN apt-get update && \
    apt-get install -y \
        curl \
        awscli \
        gpg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    curl -o /usr/local/bin/sops -L https://github.com/mozilla/sops/releases/download/3.2.0/sops-3.2.0.linux && \
    chmod +x /usr/local/bin/sops

# RUN curl -o ${XDG_CONFIG_HOME}/kustomize/plugin/wolfs.io/v1beta1/helmchart/HelmChart \
        # -L https://github.com/joshrwolf/kustomize-helmgenerator/releases/download/v${VERSION}/HelmChart_${VERSION}_${PLATFORM}_${ARCH}

RUN git clone -b ${VERSION} https://github.com/joshrwolf/kustomize-helmgenerator \
    ${XDG_CONFIG_HOME}/kustomize/plugin/wolfs.io/v1beta1/helmchart

USER argocd
