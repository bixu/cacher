pkg_origin=bixu
pkg_name=cacher
pkg_version="0.1.0"
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=("MIT")
pkg_lib_dirs=("lib")
pkg_deps=(
  core/tar
  core/gzip
  core/sed
)

do_build() {
  return 0
}

do_install() {
  cp $PLAN_CONTEXT/lib/functions $PREFIX/lib/functions
  return $?
}
