# minio

[![Github Actions][actions_image]][actions_url]
[![license][license_image]][repo_url]

helm chart for https://hub.docker.com/r/minio/minio

官方提供的俩 chart 是真的复杂、难用，浪费青春......自己做一个。

## Installation

```bash
helm install minio https://github.com/shalldie/helm-charts/releases/download/0.0.1/minio-0.0.1.tgz
```

## Uninstallation

```bash
helm uninstall minio
```

## Values

默认 values.yaml，建议添加 `-f [file]` 来覆盖默认值。

<!-- prettier-ignore -->
```yaml
meta:
  namespace: default
  name: minio

image:
  repository: minio/minio
  pullPolicy: IfNotPresent
  tag: "latest"

env:
  - name: MINIO_ROOT_USER
    value: minio
  - name: MINIO_ROOT_PASSWORD
    value: minio123
  # - name: MINIO_SERVER_URL
  #   value: http://127.0.0.1:9000
  # - name: MINIO_BROWSER_REDIRECT_URL
  #   value: http://127.0.0.1:9001

service:
  port: 9000
  # nodePort: 9000

# 可视化 console
console:
  port: 9001
  # nodePort: 9001
#
# volume:
#   数据
#   data: "/var/lib/minio/data"
#   配置
#   config: "/var/lib/minio/config"

```

[repo_url]: https://github.com/shalldie/helm-charts
[actions_image]: https://img.shields.io/github/workflow/status/shalldie/helm-charts/ci?label=build&logo=github&style=flat-square
[actions_url]: https://github.com/shalldie/helm-charts/actions
[license_image]: https://img.shields.io/github/license/shalldie/helm-charts?style=flat-square
