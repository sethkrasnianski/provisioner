source $lib_dir/help/new.bash

if [ -n "${DO_TOKEN+1}" ]; then
  echo "DO_TOKEN required to make requests."
else
  new() {
    local args=$@

    for arg in $args
    do
      case $arg in
        -h | --help ) help_new
                      shift
                      ;;
      esac
      shift
    done
  }
fi
