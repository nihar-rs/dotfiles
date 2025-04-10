#!/bin/bash

# Script to create Java package directories
# Example usage:
# ./create_java_packages.sh com.example.myapp.service com.example.myapp.model

echo "Creating Java packages..."

for package in "$@"
do
  path=$(echo "$package" | tr '.' '/')
  mkdir -p "$path"
  echo "Created: $path"

  # Optional: Add a dummy Java file to each package
  className=$(basename "$path")
  classNameCapitalized="$(tr '[:lower:]' '[:upper:]' <<< ${className:0:1})${className:1}"
  echo "package $package;" > "$path/${classNameCapitalized}.java"
  echo -e "public class ${classNameCapitalized} {\n\n}" >> "$path/${classNameCapitalized}.java"
done

echo "Done!"

