function open-db() {
  local db_name="$1"

  if [ -z "$db_name" ]; then
    echo "You must pass a file."
    return
  fi

  if [ ! -e "$db_name" ]; then
    echo "The database $db_name doesn't exist."
    return
  fi

  if ! type "sqlitebrowser" > /dev/null; then
    sudo apt-get install sqlitebrowser
  fi

  (sqlitebrowser $db_name > /dev/null 2>&1 &)
}