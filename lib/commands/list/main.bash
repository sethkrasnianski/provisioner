source $lib_dir/help/list.bash
source $lib_dir/request/list.bash

if [ "$DO_TOKEN" = "" ]; then
  echo "DO_TOKEN required to make requests."
else
  list() {
    local args=$@

    for arg in $args
    do
      case $arg in
        -h | --help ) help_list
                      exit 1;
                      ;;
      esac
      shift
    done

    request_list
  }
fi
