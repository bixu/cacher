pkg_origin=bixu
pkg_name=cacher
pkg_version="0.1.0"
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=("MIT")
pkg_deps=(
  core/coreutils
)


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

do_end() {
  build_line ""
  build_line "Cache settings:"
  build_line "$(hab pkg exec "$pkg_origin/$pkg_name" env | grep XDG_CACHE_HOME)"
  return $?
}
