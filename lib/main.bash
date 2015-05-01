for file in "$( dirname "${BASH_SOURCE[0]}" )"/commands/*.bash; do
  source "$file";
done

help() {
cat <<EOF

  Usage: provision.bash <command> [<arguments> ...]

  Commands:
    new                provisions new VM
    delete             delete provisioned VM by name

  Options:
    -h, --help         display this message
    -v, --version      display version

EOF
}

version() {
  cat "VERSION";
}
