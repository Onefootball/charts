# pact-broker Helm Chart

* Installs the [pact-broker](https://github.com/pact-foundation/pact_broker)
* This helm chart is based on https://github.com/carldanley/helm-charts/tree/master/pact-broker.

## TL;DR;

```console
$ helm repo add onefootball-charts https://onefootball.github.io/charts/
$ helm install onefootball-charts/pact-broker -f values.yaml
```

## Installing the Chart

First add onefootball's helm repo:

```console
$ helm repo add onefootball-charts https://onefootball.github.io/charts/
```
Create your own `values.yaml` file and set your configs into it.

Now install the pact-broker app:

```console
$ helm install --name pact-broker onefootball-charts/pact-broker -f values.yaml
```

## Uninstalling the Chart

To uninstall/delete the pact-broker deployment:

```console
$ helm delete pact-broker
```

The command removes all the Kubernetes components associated with the chart and deletes the release.


## Configuration

| Parameter                                     | Description                                   | Default                                                 |
|-----------------------------------------------|-----------------------------------------------|---------------------------------------------------------|
| `image.repository`                            | Image repository                              | `dius/pact-broker`                                      |
| `image.tag`                                   | Image tag                                     | `2.27.6-1`                                              |
| `image.pullPolicy`                            | Image pull policy                             | `IfNotPresent`                                          |
| `service.type`                                | Kubernetes service type                       | `ClusterIP`                                             |
| `service.externalPort`                        | Kubernetes port where service is exposed      | `80`                                                    |
| `service.internalPort`                        | Port where service is running                 | `80`                                                    |
| `service.annotations`                         | Service annotations                           | `{}`                                                    |
| `resources`                                   | CPU/Memory resource requests/limits           | `{}`                                                    |
| `replicaCount`                                | Number of pods                                | `1`                                                     |
| `database.adapter`                            | Database engine                               | `postgres`                                              |
| `database.username`                           | Database username                             | `postgres`                                              |
| `database.password`                           | Database password                             | `postgres`                                              |
| `database.host`                               | Database host                                 | `postgres.pact`                                         |
| `database.name`                               | Database name                                 | `postgres`                                              |
| `ingress.enabled`                             | Ingress enabled                               | `False`                                                 |


## Databases

This chart assumes that you already have running a postgres databases. You can refer to helm charts to run [postgres](https://github.com/helm/charts/tree/master/stable/postgresql).

## Archive

This chart doesn't support report archiving.
