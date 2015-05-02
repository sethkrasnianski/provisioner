set -o errtrace
set -o nounset
set -o pipefail

source lib/main.bash

case $1 in
    new )                   new
                            ;;
    delete )                delete
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
