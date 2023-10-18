#!/busybox/sh

config_path="${1:?config path is required}"
skip_secrets="${2:-}"

if [ ! -r "$config_path" ]; then
    echo "Cannot read config file: $config_path"
    exit 1
fi

if [ -n "$skip_secrets" ]; then
    sealed-secrets-updater update --config "$1" --skip-secrets "$skip_secrets"
else
    sealed-secrets-updater update --config "$1"
fi
