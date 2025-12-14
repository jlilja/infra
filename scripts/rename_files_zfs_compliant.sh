#!/usr/bin/env bash

# Default variable values
verbose_mode=false
dry_run_mode=false

# Function to display script usage
usage() {
 echo "Usage: $0 [OPTIONS]"
 echo "Options:"
 echo " -h, --help      Display this help message"
 echo " -v, --verbose   Enable verbose mode"
 echo " -d, --dry-run   Enable dry run mode"
}

has_argument() {
  [[ ("$1" == *=* && -n ${1#*=}) || ( ! -z "$2" && "$2" != -*)  ]];
}

extract_argument() {
  echo "${2:-${1#*=}}"
}

# Function to handle options and arguments
handle_options() {
  while [ $# -gt 0 ]; do
    case $1 in
      -h | --help)
        usage
        exit 0
        ;;
      -v | --verbose)
        verbose_mode=true
        ;;
      -d | --dry-run)
        dry_run_mode=true
        ;;
      *)
        echo "Invalid option: $1" >&2
        usage
        exit 1
        ;;
    esac
    shift
  done
}

handle_options "$@"

if [ "$verbose_mode" = true ]; then
 echo "Running in verbose mode."
fi

if [ "$dry_run_mode" = true ]; then
 echo "Running in dry mode."
fi

files=$(find . | grep ":")

if [[ $(echo -e "$files" | wc -l) = 0 ]]; then
 echo "Could not find any matches."
 exit 1
fi

if [ "$verbose_mode" = true ]; then
 echo ""
 echo "Found $(echo -e "$files" | wc -l) results."
 echo "Working on dir '$(pwd)' to rename files to have zfs compliant naming."
 echo ""
fi

# Set IFS to only split words by newlines, not spaces.
# Read more at https://unix.stackexchange.com/questions/16192/what-is-the-ifs-variable
IFS=$'\n'

if [ "$verbose_mode" = true ]; then
  echo "Loop over all of the matches in the dir:"
fi

for file in $files ; do
  new_file_name="${file//:/}"

  if [ "$dry_run_mode" = true ] || [ "$verbose_mode" = true ]; then
    echo "Changing from - ${file}"
    echo "Changing to   - ${new_file_name}"
  fi

  if [ "$dry_run_mode" = false ]; then
    if [ "$verbose_mode" = true ]; then
      echo "Renaming file - ${file}"
    fi

    mv $file $new_file_name
  fi
done
