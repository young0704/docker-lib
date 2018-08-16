#!/bin/bash
images="addon-resizer
etcd-amd64
exechealthz-amd64
flannel
heapster-amd64
heapster-grafana-amd64
heapster-influxdb-amd64
k8s-dns-dnsmasq-nanny-amd64
k8s-dns-kube-dns-amd64
k8s-dns-sidecar-amd64
kube-aggregator-amd64
kube-apiserver-amd64
kube-controller-manager-amd64
kube-discovery-amd64
kube-dnsmasq-amd64
kube-proxy-amd64
kube-scheduler-amd64
kubedns-amd64
kubernetes-dashboard-amd64
pause"
for imageName in ${images}; do
    docker pull registry.cn-shenzhen.aliyuncs.com/yangchao/$imageName
    docker tag registry.cn-shenzhen.aliyuncs.com/yangchao/$imageName gcr.io/google_containers/$imageName
    docker rmi registry.cn-shenzhen.aliyuncs.com/yangchao/$imageName
done
