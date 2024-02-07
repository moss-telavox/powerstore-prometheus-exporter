#!/bin/bash

popd "$(dirname $0)"
podman build . -t docker-registry.service.telavox.se/telavox/k8s/powerstore-promtheus-exporter:latest
podman push docker-registry.service.telavox.se/telavox/k8s/powerstore-promtheus-exporter:latest
