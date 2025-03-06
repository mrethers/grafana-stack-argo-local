#!/bin/bash

# replace repo with your own
REPO_URL=$1

if [ -z "$REPO_URL" ]; then
    echo "Usage: $0 <repo-url>"
    exit 1
fi

find .. -type f -exec sed -i '' "s|https://github.com/mrethers/grafana-stack-argo-local.git|$REPO_URL|g" {} +

git status
# git add ..
# git commit -m "Update repository URL to $REPO_URL"
# git push

# PASSWORD=$(head -c 16 /dev/urandom | base64 | tr -dc 'a-zA-Z0-9')
# MIMIRS3KEY=$(head -c 16 /dev/urandom | base64 | tr -dc 'a-zA-Z0-9')

# kubectl create secret generic admin-user \
#     --from-literal=adminUser=admin \
#     --from-literal=adminPassword='$(PASSWORD)' \ 
#     -n grafana-prod

# kubectl create secret generic mimir-bucket-secret \
#     --from-literal=MIMIRS3KEY='$(MIMIRS3KEY)' \ 
#     -n loki

# kubectl apply -f root-app.yaml