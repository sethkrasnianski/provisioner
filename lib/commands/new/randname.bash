randname() {
  if hash md5 2>/dev/null; then
    date | md5
  else
    date | md5sum
  fi
}
