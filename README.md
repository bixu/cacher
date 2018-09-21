# Cacher

Cacher stores files already controlled by dependency managers like `pip` to avoid re-downloading every dependency your project has.

## Maintainers

* Blake Irvin <blake.irvin@gmail.com>

## Type of Package

Library Package

## Usage

In this example, include `bixu/cacher` in your `pkg_build_deps` to enable cachine of Python modules managed with `pip`, Node  modules managed with `npm`, `go` dependencies and Ruby gems:
```
pkg_build_deps=(
  bixu/cacher
  pkg_origin/pkg_name
)
```
