#!/bin/bash

FILES_DIR="./files"

for file in "$FILES_DIR"/*; do
    first_char=$(basename "$file" | cut -c1)
    first_char=${first_char,,}

    mv "$file" "./$first_char/"
done