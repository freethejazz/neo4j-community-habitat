pkg_origin=freethejazz
pkg_name=neo4j-community
pkg_version=3.0.6
pkg_maintainer="Jonathan Freeman <freethejazz@gmail.com>"
pkg_license=(GPLv3)
pkg_filename=${pkg_name}-${pkg_version}-unix.tar.gz
pkg_source=http://dist.neo4j.org/${pkg_filename}
pkg_shasum=efeab41183e9e5fa94a2d396c65ea93a24e9f105cb3b5f0d0a8e42fb709f4660
pkg_deps=(
  core/glibc
  core/jre8
  core/coreutils
  core/bash
)
pkg_expose=(7474 7473 7687)

do_build() {
  return 0
}

do_install() {
  mkdir -p $pkg_prefix/neo4j
  cp -r * $pkg_prefix/neo4j
  fix_interpreter "${pkg_prefix}/neo4j/bin/*" core/coreutils bin/env

  return 0
}
