pkg_origin=bixu
pkg_name=cacher
pkg_version="1.0.0"
pkg_maintainer="Blake Irvin <blakeirvin@me.com>"
pkg_license=("MIT")
pkg_deps=(
  "core/coreutils"
)


do_setup_environment() {
  # enable caching for Go dependencies
  set_runtime_env GOPATH "/hab/cache/artifacts"

  # enable caching for NPM modules
  set_runtime_env npm_config_cache "/hab/cache/artifacts"

  # enable caching for Pip modules
  set_runtime_env XDG_CACHE_HOME "/hab/cache/artifacts"
  
  # enable caching for Ruby gems
  set_runtime_env GEM_HOME "/hab/cache/artifacts"
  set_runtime_env GEM_PATH "/hab/cache/artifacts"
  return $?
}

do_build() {
  return 0
}

do_install() {
  return 0
}
