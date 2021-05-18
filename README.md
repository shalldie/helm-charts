# filebrowser-helm-chart

[![Github Actions][actions_image]][actions_url]
[![license][license_image]][repo_url]

Helm chart for [filebrowser/filebrowser](https://github.com/filebrowser/filebrowser)

为 [filebrowser/filebrowser](https://github.com/filebrowser/filebrowser) 提供的一个 helm chart。

## Installation

```bash
helm install filebrowser https://github.com/shalldie/filebrowser-helm-chart/releases/download/0.0.1/filebrowser-0.0.1.tgz
```

## Uninstallation

```bash
helm uninstall filebrowser
```

## Values

默认 values.yaml，建议添加 `-f [file]` 来覆盖默认值。

<!-- prettier-ignore -->
```yaml
replicaCount: 1

meta:
  namespace: default
  name: filebrowser

image:
  repository: filebrowser/filebrowser
  pullPolicy: IfNotPresent
  tag: "latest"

service:
  type: ClusterIP
  port: 8080
  targetPort: 80
  # with type = NodePort
  # nodePort: 8080

# volume:
  # static serve
  # hostPathSRV: "/var/lib/filebrowser/srv"
  # config database
  # hostPathDB: "/var/lib/filebrowser/database.db"
```

[repo_url]: https://github.com/shalldie/filebrowser-helm-chart
[actions_image]: https://img.shields.io/github/workflow/status/shalldie/filebrowser-helm-chart/ci?label=build&logo=github&style=flat-square
[actions_url]: https://github.com/shalldie/filebrowser-helm-chart/actions
[license_image]: https://img.shields.io/github/license/shalldie/filebrowser-helm-chart?style=flat-square
