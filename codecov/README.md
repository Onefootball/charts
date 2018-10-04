# Codecov Enterprise Helm Chart

* Installs the codecov enterprise

## TL;DR;

```console
$ helm repo add onefootball-charts https://onefootball.github.io/charts/
$ helm install codecov -f values.yaml
```

## Installing the Chart

First add onefootball's helm repo:

```console
$ helm repo add onefootball-charts https://onefootball.github.io/charts/
```
Create your own `values.yaml` file and set your configs into it.

Now install the codecov app:

```console
$ helm install codecov -f values.yaml
```

## Uninstalling the Chart

To uninstall/delete the codecov deployment:

```console
$ helm delete codecov
```

The command removes all the Kubernetes components associated with the chart and deletes the release.


## Configuration

| Parameter                                     | Description                                   | Default                                                 |
|-----------------------------------------------|-----------------------------------------------|---------------------------------------------------------|
| `image.repository`                            | Image repository                              | `codecov/enterprise`                                    |
| `image.tag`                                   | Image tag                                     | `v4.3.9`                                                |
| `image.pullPolicy`                            | Image pull policy                             | `IfNotPresent`                                          |
| `service.type`                                | Kubernetes service type                       | `ClusterIP`                                             |
| `service.externalPort`                        | Kubernetes port where service is exposed      | `80`                                                    |
| `service.internalPort`                        | Port where service is running                 | `5000`                                                  |
| `service.annotations`                         | Service annotations                           | `{}`                                                    |
| `resources.web` and `resources.workers`       | CPU/Memory resource requests/limits           | `{}`                                                    |
| `replicaCount.web` and `replicaCount.workers` | Number of pods to `web` and `workers`         | `1`                                                     |
| `codecov.config`                              | condecov config                               | `{}`                                                    |

## Databases

This chart assumes that you already have running your redis and postgres databases. You can refer to helm charts to run [postgres](https://github.com/helm/charts/tree/master/stable/postgresql) and [redis](https://github.com/helm/charts/tree/master/stable/redis) in your k8s cluster.

## Archive

This chart doesn't support report archiving.
