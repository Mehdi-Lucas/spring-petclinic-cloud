#!/bin/bash

# Tag images with GITHUB_SHA
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-api-gateway:latest ${REPOSITORY_PREFIX}/spring-petclinic-cloud-api-gateway:${IMAGE_TAG}
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-visits-service:latest ${REPOSITORY_PREFIX}/spring-petclinic-cloud-visits-service:${IMAGE_TAG}
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-vets-service:latest ${REPOSITORY_PREFIX}/spring-petclinic-cloud-vets-service:${IMAGE_TAG}
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-customers-service:latest ${REPOSITORY_PREFIX}/spring-petclinic-cloud-customers-service:${IMAGE_TAG}
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-admin-server:latest ${REPOSITORY_PREFIX}/spring-petclinic-cloud-admin-server:${IMAGE_TAG}
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-discovery-service:latest ${REPOSITORY_PREFIX}/spring-petclinic-cloud-discovery-service:${IMAGE_TAG}
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-config-server:latest ${REPOSITORY_PREFIX}/spring-petclinic-cloud-config-server:${IMAGE_TAG}

# Tag images as latest for convenience
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-api-gateway:${IMAGE_TAG} ${REPOSITORY_PREFIX}/spring-petclinic-cloud-api-gateway:latest
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-visits-service:${IMAGE_TAG} ${REPOSITORY_PREFIX}/spring-petclinic-cloud-visits-service:latest
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-vets-service:${IMAGE_TAG} ${REPOSITORY_PREFIX}/spring-petclinic-cloud-vets-service:latest
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-customers-service:${IMAGE_TAG} ${REPOSITORY_PREFIX}/spring-petclinic-cloud-customers-service:latest
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-admin-server:${IMAGE_TAG} ${REPOSITORY_PREFIX}/spring-petclinic-cloud-admin-server:latest
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-discovery-service:${IMAGE_TAG} ${REPOSITORY_PREFIX}/spring-petclinic-cloud-discovery-service:latest
docker tag ${REPOSITORY_PREFIX}/spring-petclinic-cloud-config-server:${IMAGE_TAG} ${REPOSITORY_PREFIX}/spring-petclinic-cloud-config-server:latest

# Push images with GITHUB_SHA tag
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-api-gateway:${IMAGE_TAG}
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-visits-service:${IMAGE_TAG}
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-vets-service:${IMAGE_TAG}
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-customers-service:${IMAGE_TAG}
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-admin-server:${IMAGE_TAG}
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-discovery-service:${IMAGE_TAG}
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-config-server:${IMAGE_TAG}

# Push images with latest tag
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-api-gateway:latest
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-visits-service:latest
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-vets-service:latest
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-customers-service:latest
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-admin-server:latest
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-discovery-service:latest
docker push ${REPOSITORY_PREFIX}/spring-petclinic-cloud-config-server:latest
