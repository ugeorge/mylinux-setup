#!/usr/bin/env bash

image_name="$(id -un)/env"
instance_name="$(id -un)_env"
docker_file="Dockerfile-env"

docker build --force-rm -t "${image_name}" -f "${docker_file}" .
