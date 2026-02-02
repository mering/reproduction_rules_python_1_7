#!/bin/bash
set -eux

bazel build @sub//:absl_app_smoke_binary_image_tarball.tar
docker load -i bazel-bin/external/sub+/absl_app_smoke_binary_image_tarball/tarball.tar
docker run -it --rm absl_app_smoke_binary_image:latest
