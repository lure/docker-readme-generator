This is a wrapped [Bitnami's readme-generator for Helm](https://github.com/bitnami-labs/readme-generator-for-helm).

The docker file is published on Github: [lure/docker-readme-generator](https://github.com/lure/docker-readme-generator).

This image uses non-root user `space` with homedir `/home/space`. 

Usage example:

```bash
docker  run --rm --mount type=bind,source="$(pwd)",target=/home/space lure/readme-generator -v values.yaml -r README.MD
```

P.S.: check out the (JetBrains Space)[https://www.jetbrains.com/space/] you'll love it. 
