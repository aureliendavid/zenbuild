function libnghttp2_build {

  set -x

  local host=$1
  pushDir $WORK/src

  lazy_git_clone https://github.com/gpac-buildbot/nghttp2.git nghttp2 master

  local ARCH=$(get_arch $host)
  local OS=$(get_os $host)

  autoconf_build $host "nghttp2" --enable-shared --disable-static --disable-app --disable-threads --enable-lib-only

  set +x
  popDir

}


function libnghttp2_get_deps {
 local a=0
}
