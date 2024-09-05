#!/bin/bash
base_dir="projects"
if [ ! -d "$base_dir" ]; then
    echo "Directory '$base_dir' does not exist."
    exit 1
fi
for project in "$base_dir"/*; do
    if [ -d "$project" ]; then
              oriserve_dir="$project/oriserve"
        
             if [ -d "$oriserve_dir" ]; then
            touch "$oriserve_dir/test.txt"
            echo "Created test.txt in $oriserve_dir"
        fi
    fi
done

echo "Script execution completed."
