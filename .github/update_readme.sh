#!/bin/bash

GLIBC=$(grep <package_versions.txt -E "glibc.*?-" | sed -n 1p | cut -c 7- | sed -E 's/-r.*//g')

echo "## docker-baseimage-alpine-glibc

[![docker hub](https://img.shields.io/badge/docker_hub-link-blue?style=for-the-badge&logo=docker)](https://hub.docker.com/r/vcxpz/baseimage-alpine-glibc) ![docker image size](https://img.shields.io/docker/image-size/vcxpz/baseimage-alpine-glibc?style=for-the-badge&logo=docker) [![auto build](https://img.shields.io/badge/docker_builds-automated-blue?style=for-the-badge&logo=docker?color=d1aa67)](https://github.com/hydazz/docker-baseimage-alpine-glibc/actions?query=workflow%3A\"Auto+Builder+CI\") [![codacy branch grade](https://img.shields.io/codacy/grade/d5e6e49abb324c92b4d0b296b721c948/main?style=for-the-badge&logo=codacy)](https://app.codacy.com/gh/hydazz/docker-baseimage-alpine-glibc)

A custom base image built with [Alpine Linux][appurl], [glibc][glibcurl] and [s6 overlay][s6overlay]

## Version Information

![alpine](https://img.shields.io/badge/alpine-edge-0D597F?style=for-the-badge&logo=alpine-linux) ![glibc](https://img.shields.io/badge/glibc-${GLIBC}-blue?style=for-the-badge)

See [package_versions.txt](package_versions.txt) for a full list of the packages and package versions used in this image

## Credits

-   [sgerrand/alpine-pkg-glibc](https://github.com/sgerrand/alpine-pkg-glibc) for the glibc packages

[appurl]: https://alpinelinux.org
[s6overlay]: https://github.com/just-containers/s6-overlay
[glibcurl]: https://www.gnu.org/software/libc/" >README.md