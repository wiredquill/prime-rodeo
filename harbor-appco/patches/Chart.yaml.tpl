#!BuildTag: harbor:${VERSION}-%RELEASE%
#!BuildTag: harbor:${VERSION}
annotations:
  helm.sh/images: |
    - image: ${CONTAINER_REGISTRY}/containers/nginx:1.26
      name: nginx
    - image: ${CONTAINER_REGISTRY}/containers/harbor-core:${APP_VERSION}
      name: harbor-core
    - image: ${CONTAINER_REGISTRY}/containers/harbor-db:${APP_VERSION}
      name: harbor-db
    - image: ${CONTAINER_REGISTRY}/containers/harbor-exporter:${APP_VERSION}
      name: harbor-exporter
    - image: ${CONTAINER_REGISTRY}/containers/harbor-jobservice:${APP_VERSION}
      name: harbor-jobservice
    - image: ${CONTAINER_REGISTRY}/containers/harbor-portal:${APP_VERSION}
      name: harbor-portal
    - image: ${CONTAINER_REGISTRY}/containers/harbor-registry:${APP_VERSION}
      name: harbor-registry
    - image: ${CONTAINER_REGISTRY}/containers/harbor-registryctl:${APP_VERSION}
      name: harbor-registryctl
    - image: ${CONTAINER_REGISTRY}/containers/harbor-trivy-adapter:${APP_VERSION}
      name: harbor-trivy-adapter
    - image: ${CONTAINER_REGISTRY}/containers/redis:7.4
      name: redis
apiVersion: v2
appVersion: ${APP_VERSION}
description: Harbor is an open source trusted cloud native registry project that stores, signs, and scans content. Harbor extends the open source Docker Distribution by adding the functionalities usually required by users such as security, identity and management. Harbor supports replication of images between registries, and also offers advanced security features such as user management, access control and activity auditing.
home: https://apps.rancher.io/applications/harbor
icon: https://apps.rancher.io/logos/harbor.png
maintainers:
  - name: SUSE LLC
    url: https://www.suse.com/
name: harbor
version: ${VERSION}
