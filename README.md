# docker-alpine-php-swoole

[![CircleCI](https://circleci.com/gh/5square/docker-alpine-php-swoole.svg?style=svg)](https://circleci.com/gh/5square/docker-alpine-php-swoole)
[![License](https://img.shields.io/badge/license-apache2-blue.svg)](LICENSE)

Multiarch (amd64 and arm) Docker image with PHP 7.2 and Swoole.

Based on the great work of the [Swoole](https://github.com/swoole/swoole-src) contributors.

## Build
Running
```make build```
will build an Docker image ```5square/php-swoole``` with tag <GIT_TAG>-<COMMIT>

## Run 
```
make run
```
will build the image and start a container called ```swoole_test_run```. As an example, a simple webserver is being started, which listens and responds on port 9501 (localhost). 
