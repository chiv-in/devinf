[Root readme](/README.md) / Chiv Editorconfig Checker

# Chiv Editorconfig Checker

## Description

This image is used to check if the files in the repository are compliant with the editorconfig file.

## How to use

### Run the image

```bash
docker run --rm -v $(pwd):/project ghcr.io/chiv-in/devinf/chiv-editorconfig-checker
```

### Run the image with a specific `-ignore` option

```bash
docker run --rm -v $(pwd):/project -e IGNORE='**/node_modules/**' ghcr.io/chiv-in/devinf/chiv-editorconfig-checker
```
