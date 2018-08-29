pkg_name=aws-cli
pkg_origin=core
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('Apache-2.0')
pkg_description="The AWS Command Line Interface (CLI) is a unified tool to \
  manage your AWS services. With just one tool to download and configure, you \
  can control multiple AWS services from the command line and automate them \
  through scripts."
pkg_upstream_url=https://aws.amazon.com/cli/
pkg_deps=(
  core/python
)
pkg_build_deps=(
  smartb-private/cacher
)
pkg_bin_dirs=(bin)

pkg_version() {
  export LC_ALL=en_US LANG=en_US
  pip search --disable-pip-version-check awscli | grep "^awscli (" | cut -d"(" -f2 | cut -d")" -f1
}

do_before() {
  update_pkg_version
  #source $(hab pkg path smartb-private/cacher)/lib/functions
  #extract
}

do_prepare() {
  python -m venv "$pkg_prefix"
  # shellcheck source=/dev/null
  source "$pkg_prefix/bin/activate"
}

do_build() {
  return 0
}

do_install() {
  pip install "awscli==$pkg_version"
  pip install "django"
  pip install "keras"
  pip install "flask"
}

do_strip() {
  return 0
}

# do_end() {
#   source $(hab pkg path smartb-private/cacher)/lib/functions
#   archive
# }
