# docker-runtime-ex

Docker DICE runtime example. Through this example, you can see how to create a Docker image for a runtime with Python.

NOTE: We do not discuss multi-arch builds here. DICE supports multi-arch imports into the system. However, if you would like to take advantage of multiple architectures, you must build separate artifacts for each platform that you want the runtime to be able to execute on.

## Dependencies

Make sure you have the following installed:

1. Docker

1. zsh

1. Python

1. Make

## Commands

### Initialization

Run `make init`

### Cleaning

Run `make clean`

### Building

Run `make build`

### Test

Run `make test`