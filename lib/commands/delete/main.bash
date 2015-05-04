source $lib_dir/help/delete.bash
source $lib_dir/request/delete.bash
source $lib_dir/response/delete.bash

if [ "$DO_TOKEN" = "" ]; then
  echo "DO_TOKEN required to make requests."
else
  delete() {
    local args=$@
    local id=

    for arg in $args
    do
      case $arg in
        -h | --help ) help_delete
                      exit 1;
                      ;;
        * )           id=$1
                      ;;
      esac
      shift
    done

    response_delete $(request_delete)
  }
fi
