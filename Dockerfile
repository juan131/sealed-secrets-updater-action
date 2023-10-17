FROM juanariza131/sealed-secrets-updater:v0.2.0 as sealed-secrets-updater

# Debug images have a shell, see: https://github.com/GoogleContainerTools/distroless#debug-images
FROM gcr.io/distroless/base:debug

COPY entrypoint.sh /entrypoint.sh
COPY --from=sealed-secrets-updater /usr/local/bin/sealed-secrets-updater /usr/local/bin/sealed-secrets-updater

USER 1001
WORKDIR /github/workspace
ENTRYPOINT ["/entrypoint.sh"]
