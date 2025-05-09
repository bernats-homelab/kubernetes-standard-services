#!/usr/bin/bash
set -xeuo pipefail

export KUBECONFIG="../kubernetes-hosts/output/kubeconfig.yaml"
readonly KUBERNETES_CONTEXT="default"

kubectl config use-context "${KUBERNETES_CONTEXT}"

# https://argo-cd.readthedocs.io/en/stable/getting_started/
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm upgrade argocd argo/argo-cd \
  --install \
  --namespace argocd \
  --create-namespace

kubectl apply --filename ./services-kubernetes-01.yaml --namespace argocd
