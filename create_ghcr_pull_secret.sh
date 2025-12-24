# Source - https://stackoverflow.com/a
# Posted by zer0, modified by community. See post 'Timeline' for change history
# Retrieved 2025-12-24, License - CC BY-SA 4.0

kubectl create secret docker-registry ghcr-bernats-homelab --docker-server=https://ghcr.io --docker-username=$GITHUB_USERNAME --docker-password=$GITHUB_TOKEN --docker-email=$GITHUB_EMAIL