response_new() {
  if [ $1 -eq 202 ]; then
    echo "Droplet successfully created."
  else
    echo "There was an error creating your droplet :/"
  fi
}
