lib_dir="$( dirname "${BASH_SOURCE[0]}" )"
command_dir=$lib_dir/commands

source $command_dir/new/main.bash;
source $command_dir/delete/main.bash;
source $command_dir/list/main.bash;

# Options

help() {
cat <<EOF

  Usage: provision.bash <command> [<arguments> ...]

  Commands:
    new                provisions new VM
    delete             delete provisioned VM by name
    list               list provisioned VMs

  Options:
    -h, --help         display this message
    -v, --version      display version

EOF
}

version() {
  cat "VERSION";
}
