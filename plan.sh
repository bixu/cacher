pkg_origin=bixu
pkg_name=cacher
pkg_version="0.2.0"
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=("MIT")
pkg_deps=(
  core/coreutils
)


do_setup_environment() {
  # enable caching for Go dependencies
  mkdir --parents                    "/hab/cache/artifacts/studio_cache/go"
  set_buildtime_env GOPATH           "/hab/cache/artifacts/studio_cache/go"

  # enable caching for NPM modules
  mkdir --parents                    "/hab/cache/artifacts/studio_cache/npm"
  set_buildtime_env npm_config_cache "/hab/cache/artifacts/studio_cache/npm"

  # enable caching for Pip modules
  mkdir --parents                    "/hab/cache/artifacts/studio_cache/pip"
  set_buildtime_env XDG_CACHE_HOME   "/hab/cache/artifacts/studio_cache/pip"
  
  # enable caching for Ruby gems
  mkdir --parents                    "/hab/cache/artifacts/studio_cache/rubygems"
  set_buildtime_env GEM_HOME         "/hab/cache/artifacts/studio_cache/rubygems"
  set_buildtime_env GEM_PATH         "/hab/cache/artifacts/studio_cache/rubygems"
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
  build_line "$(hab pkg exec "$pkg_origin/$pkg_name" env | grep GOPATH)"
  build_line "$(hab pkg exec "$pkg_origin/$pkg_name" env | grep npm_config_cache)"
  build_line "$(hab pkg exec "$pkg_origin/$pkg_name" env | grep XDG_CACHE_HOME)"
  build_line "$(hab pkg exec "$pkg_origin/$pkg_name" env | grep GEM_HOME)"
  build_line "$(hab pkg exec "$pkg_origin/$pkg_name" env | grep GEM_PATH)"
  return $?
}
