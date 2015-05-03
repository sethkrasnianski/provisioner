request_new(){
  status=$(curl -H "Content-Type: application/json" \
       -H "Authorization: Bearer $DO_TOKEN" \
       -X POST \
       --write-out %{http_code} \
       --silent \
       --output /dev/null \
       -d '{"name": "'"$name"'",
            "region": "'"$region"'",
            "size": "'"$size"'",
            "image": "'"$image"'",
            "ssh_keys": '$ssh_keys',
            "backups": '$backup'}' \
       "https://api.digitalocean.com/v2/droplets")
  echo $status
}
