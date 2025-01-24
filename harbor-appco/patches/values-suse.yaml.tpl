nginx:
  image:
    registry: ${CONTAINER_REGISTRY}
    repository: containers/nginx
    tag: 1.26

portal:
  image:
    registry: ${CONTAINER_REGISTRY}
    repository: containers/harbor-portal
    tag: ${APP_VERSION}

core:
  image:
    registry: ${CONTAINER_REGISTRY}
    repository: containers/harbor-core
    tag: ${APP_VERSION}

jobservice:
  image:
    registry: ${CONTAINER_REGISTRY}
    repository: containers/harbor-jobservice
    tag: ${APP_VERSION}

registry:
  registry:
    image:
      registry: ${CONTAINER_REGISTRY}
      repository: containers/harbor-registry
      tag: ${APP_VERSION}
  controller:
    image:
      registry: ${CONTAINER_REGISTRY}
      repository: containers/harbor-registryctl
      tag: ${APP_VERSION}

trivy:
  image:
    registry: ${CONTAINER_REGISTRY}
    repository: containers/harbor-trivy-adapter
    tag: ${APP_VERSION}

database:
  internal:
    image:
      registry: ${CONTAINER_REGISTRY}
      repository: containers/harbor-db
      tag: ${APP_VERSION}

redis:
  internal:
    image:
      registry: ${CONTAINER_REGISTRY}
      repository: containers/redis
      tag: 7.4

exporter:
  image:
    registry: ${CONTAINER_REGISTRY}
    repository: containers/harbor-exporter
    tag: ${APP_VERSION}
