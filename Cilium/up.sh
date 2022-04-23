kind delete cluster && kind create cluster --config cluster.yaml

helm repo update

helm upgrade --install --namespace kube-system --repo https://helm.cilium.io cilium cilium --values value.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.1/deploy/static/provider/kind/deploy.yaml