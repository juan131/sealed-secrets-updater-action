FROM juanariza131/sealed-secrets-updater:latest

COPY entrypoint.sh /entrypoint.sh

WORKDIR /github/workspace
ENTRYPOINT ["/entrypoint.sh"]
