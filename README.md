# Sealed Secrets Updater Action

This action updates your Seal Secrets manifests in your repository using the [Sealed Secrets Updater](https://github.com/juan131/sealed-secrets-updater) tool.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Sealed Secrets Updater Action](#sealed-secrets-updater-action)
  - [Inputs](#inputs)
    - [`config_path`](#config_path)
    - [`only_secrets`](#only_secrets)
  - [Example usage](#example-usage)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Inputs

### `config_path`

**Required** Relative path to the Sealed Secrets Updater configuration file.

### `only_secrets`

**Optional** Only update provided secrets (comma separated list).

## Example usage

```yaml
uses: actions/sealed-secrets-updater-action@v0
with:
  config_path: './config.json'
```
