response_delete() {
  if [ $1 -eq 204 ]; then
    echo "Droplet successfully destroyed."
  else
    echo "There was an error destroying your droplet :/"
  fi
}
