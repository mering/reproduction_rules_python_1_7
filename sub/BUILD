load("@rules_oci//oci:defs.bzl", "oci_image", "oci_load")
load("@rules_pkg//pkg:tar.bzl", "pkg_tar")
load("@rules_python//python:defs.bzl", "py_binary")

py_binary(
    name="absl_app_smoke_binary",
    srcs=["absl_app_smoke_binary.py"],
    deps=[
        "@abseil-py//absl:app",
    ],
)

pkg_tar(
    name="absl_app_smoke_binary_layer",
    srcs=[":absl_app_smoke_binary"],
    include_runfiles=True,
)

oci_image(
    name="absl_app_smoke_binary_image",
    base="@distroless_python3",
    tars=[":absl_app_smoke_binary_layer"],
    cmd=["/absl_app_smoke_binary"],
)

oci_load(
    name="absl_app_smoke_binary_image_tarball",
    image=":absl_app_smoke_binary_image",
    repo_tags=["absl_app_smoke_binary_image:latest"],
)

filegroup(
    name = "absl_app_smoke_binary_image_tarball.tar",
    srcs = [":absl_app_smoke_binary_image_tarball"],
    output_group = "tarball",
)
