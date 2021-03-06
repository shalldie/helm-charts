# filebrowser

![](https://user-images.githubusercontent.com/5447088/50716739-ebd26700-107a-11e9-9817-14230c53efd2.gif)

<br>

[![Github Actions][actions_image]][actions_url]
[![license][license_image]][repo_url]

Helm chart for [filebrowser/filebrowser](https://github.com/filebrowser/filebrowser)

为 [filebrowser/filebrowser](https://github.com/filebrowser/filebrowser) 提供的一个 helm chart。

## Installation

```bash
wget https://github.com/shalldie/helm-charts/releases/download/latest/filebrowser-1.0.0.tgz
helm install filebrowser ./filebrowser-1.0.0.tgz
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

ingress:
  enable: false
  baseURL: "/"

volume: {}
  # static serve
  # hostPathSRV: "/var/lib/filebrowser/srv"
  # config database，需要提前创建 `touch database.db`，否则会被识别成文件夹
  # hostPathDB: "/var/lib/filebrowser/database.db"
```

[repo_url]: https://github.com/shalldie/helm-charts
[actions_image]: https://img.shields.io/github/workflow/status/shalldie/helm-charts/ci?label=build&logo=github&style=flat-square
[actions_url]: https://github.com/shalldie/helm-charts/actions
[license_image]: https://img.shields.io/github/license/shalldie/helm-charts?style=flat-square
