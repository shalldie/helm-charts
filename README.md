# helm-charts

[![Github Actions][actions_image]][actions_url]
[![license][license_image]][repo_url]

存放一些常用的 `Helm Chart`、`Dockerfile`

## Helm Chart

|            名称            |        类型        | 描述                                                                                                 |
| :------------------------: | :----------------: | :--------------------------------------------------------------------------------------------------- |
| [filebrowser](filebrowser) |     `文件系统`     | 为 [filebrowser/filebrowser](https://github.com/filebrowser/filebrowser) 提供的一个 helm chart。     |
|       [minio](minio)       |     `对象存储`     | 为 [minio/minio](https://github.com/minio/minio) 提供的一个 helm chart。                             |
|       [nginx](nginx)       |  `proxy`、`serve`  | 为 [shalldie/nginx](https://hub.docker.com/repository/docker/shalldie/nginx) 提供的一个 helm chart。 |
| [code-server](code-server) | `vscode`、`online` | 为 [cdr/code-server](https://github.com/cdr/code-server) 提供的一个 helm chart。                     |

[repo_url]: https://github.com/shalldie/helm-charts
[actions_image]: https://img.shields.io/github/workflow/status/shalldie/helm-charts/ci?label=build&logo=github&style=flat-square
[actions_url]: https://github.com/shalldie/helm-charts/actions
[license_image]: https://img.shields.io/github/license/shalldie/helm-charts?style=flat-square

## Dockerfile

位于 `.dockerfiles`

| 名称                                       | 描述   |
| :----------------------------------------- | :----- |
| `alpineos:alpine3.16.0-nginx1.22.0`        | 见命名 |
| `alpineos:alpine3.14.6-node14-nginx1.20.2` | ...    |
| `alpineos:alpine3.16.0-node16-nginx1.22.0` | ...    |
