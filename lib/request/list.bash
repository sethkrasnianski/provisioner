request_list(){
  response=$(curl -H 'Content-Type: application/json' \
    -H 'Authorization: Bearer '$DO_TOKEN'' \
    -X GET \
    --silent \
    "https://api.digitalocean.com/v2/droplets?page=1&per_page=-1" \
    | jq '.droplets | [.[] | {message: .id, name: .name}]')
  echo $response | jq .
}
