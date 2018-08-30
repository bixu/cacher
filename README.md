# Cacher

Cacher stores files already controlled by dependency managers like `pip` to avoid re-downloading every dependency your project has.

## Maintainers

* Blake Irvin <blake.irvin@gmail.com>

## Type of Package

Library Package

## Usage

Include `bixu/cacher` in your `pkg_build_deps` to enable cachine of `pip`-managed modules. At this time only `pip` caching is supported, with support for other dependency managers planned:
```
pkg_build_deps=(
  bixu/cacher
  pkg_origin/pkg_name
)
```
