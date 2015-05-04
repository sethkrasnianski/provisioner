request_delete(){
  status=$(curl -H 'Content-Type: application/json' \
       -H 'Authorization: Bearer '$DO_TOKEN'' \
       -X DELETE \
       --write-out %{http_code} \
       --silent \
       --output /dev/null \
       "https://api.digitalocean.com/v2/droplets/"$id"")
  echo $status
}
