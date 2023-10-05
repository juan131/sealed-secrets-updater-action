#!/bin/bash

config_path="${1:?config path is required}"
if [[ ! -r "$config_path" ]]; then
    echo "Cannot read config file: $config_path"
    exit 1
fi

sealed-secrets-updater update --config "$1"
