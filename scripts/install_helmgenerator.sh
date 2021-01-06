declare XDG_CONFIG_HOME=$HOME/.config
declare VERSION=0.1.0
declare PLATFORM=linux
declare ARCH=amd64

mkdir -p ${XDG_CONFIG_HOME}/kustomize/plugin/wolfs.io/v1beta1/helmchart
curl -L https://github.com/joshrwolf/kustomize-helmgenerator/releases/download/v${VERSION}/HelmChart_${VERSION}_${PLATFORM}_${ARCH} \
    -o ${XDG_CONFIG_HOME}/kustomize/plugin/wolfs.io/v1beta1/helmchart/HelmChart
chmod +x ${XDG_CONFIG_HOME}/kustomize/plugin/wolfs.io/v1beta1/helmchart/HelmChart
