kind create cluster --config cluster.yaml

helm repo update

helm upgrade --install --namespace kube-system --repo https://helm.cilium.io cilium cilium --values value.yaml