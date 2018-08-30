pkg_origin=bixu
pkg_name=cacher
pkg_version="0.1.0"
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=("MIT")
pkg_lib_dirs=("lib")

do_setup_environment() {
  mkdir --parents "/hab/cache/artifacts/studio_cache"
  set_runtime_env XDG_CACHE_HOME "/hab/cache/artifacts/studio_cache"
}

do_build() {
  return 0
}

do_install() {
  return 0
}
