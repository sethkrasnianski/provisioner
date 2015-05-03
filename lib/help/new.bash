help_new() {
cat <<EOF

  Usage: provision.bash new [<arguments> ...]

  Options:
    -h, --help         display this message
    -n, --name         name of new droplet
                       ex: mydomain.com
                       default: random alpha/numberic string

    -r, --region       region to create droplet in
                       ex: nyc1, nyc2, fra1
                       default: nyc3

    -s, --size         size of droplet (based off DigitalOcean package's memory)
                       ex: 512mb, 1gb, 8gb
                       default: 512mb

    -i, --image        image distribution to create droplet with
                       ex: debian-8-0-x64, centos-6-5-x64, ubuntu-15-04-x64
                       default: ubuntu-14-04-x64

    -b, --backup       a boolean indicating whether automated backups should be enabled
                       default: false

    -ssh | --ssh_keys  an array of ssh key ids from your DigitalOcean collection
                       ex: 123456
                       default: null

EOF
}
