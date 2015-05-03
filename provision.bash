set -o errtrace
set -o nounset
set -o pipefail

source lib/main.bash

if [[ $# -eq 0 ]] ; then
  help
  exit 0
fi

case $1 in
    new )                   new $@
                            ;;
    delete )                delete $@
                            ;;
    -h | --help )           help
                            exit
                            ;;
    -v | --version )        version
                            exit
                            ;;
    *)                      help
                            exit
                            ;;
esac
shift
