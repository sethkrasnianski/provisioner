source $lib_dir/help/new.bash
source $command_dir/new/randname.bash
source $lib_dir/request/new.bash
source $lib_dir/response/new.bash

if [ "$DO_TOKEN" = "" ]; then
  echo "DO_TOKEN required to make requests."
else
  new() {
    local args=$@
    local name=$(randname)
    local region="nyc3"
    local size="512mb"
    local image="ubuntu-14-04-x64"
    local backup=false
    local ssh_keys=null

    for arg in $args
    do
      case $arg in
        -n | --name )       name=$2
                            ;;
        -r | --region )     region=$2
                            ;;
        -s | --size )       size=$2
                            ;;
        -i | --image )      image=$2
                            ;;
        -b | --backup )     backup=$2
                            ;;
        -ssh | --ssh_keys ) ssh_keys=$2
                            ;;
        -h | --help )       help_new
                            exit 1;
                            ;;
      esac
      shift
    done

    response_new $(request_new)
  }
fi
