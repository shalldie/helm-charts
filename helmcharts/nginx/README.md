# nginx

[![Github Actions][actions_image]][actions_url]
[![license][license_image]][repo_url]

Helm chart for [shalldie/nginx](https://hub.docker.com/repository/docker/shalldie/nginx)

为 [shalldie/nginx](https://hub.docker.com/repository/docker/shalldie/nginx) 提供的一个 helm chart，用于处理一些 ingress 无法解决的 proxy or serve。

## Installation

```bash
wget https://github.com/shalldie/helm-charts/releases/download/latest/nginx-1.0.0.tgz
helm install nginx ./nginx-1.0.0.tgz
```

## Uninstallation

```bash
helm uninstall nginx
```

## Values

默认 values.yaml，建议添加 `-f [file]` 来覆盖默认值。

<!-- prettier-ignore -->
```yaml
meta:
  namespace: default
  name: nginx

image:
  repository: shalldie/alpineos
  pullPolicy: IfNotPresent
  tag: "alpine3.16.0-nginx1.22.0"
  command:
    - nginx
    - -g
    - '"daemon off;"'

service:
  type: ClusterIP
  port: 8080
  targetPort: 80
  # with type = NodePort
  # nodePort: 8080
# -
# all *.conf, volume to "/etc/nginx/http.d"
# volume: "/etc/nginx/http.d"
```

[repo_url]: https://github.com/shalldie/helm-charts
[actions_image]: https://img.shields.io/github/workflow/status/shalldie/helm-charts/ci?label=build&logo=github&style=flat-square
[actions_url]: https://github.com/shalldie/helm-charts/actions
[license_image]: https://img.shields.io/github/license/shalldie/helm-charts?style=flat-square
