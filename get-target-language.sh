function getTargetLanguage {
  lang=$(trans -id $1 | head -n 1 | xargs)
  if [[ "$lang" == *"English"* ]]; then
    target="ru"
  else
    target="en"
  fi
  echo $target
}
