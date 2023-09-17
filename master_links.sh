#Remove old files
rm /home/amf/.bashrc > /dev/null 2>&1
rm /home/amf/.kshrc > /dev/null 2>&1

printf "\n\n\n\n\n\n--------SYMLINKS--------\n"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

symLink() {
    filename="$SCRIPT_DIR/$1"
    destination="$HOME/$2"


    if [ ! -L "$destination" ]; then
        if [ -e "$destination" ]; then
            echo "[ERROR] $destination exists but is not a symlink. Fix manually" && exit 1
        else
            if [ ! -d "$filename" ]; then
                mkdir -p "$(dirname "$destination")"
            fi
            ln -s $filename $destination
            echo "[OK] $filename -> $destination"
        fi
    else
        echo "[WARNING] $filename already symlinked"
    fi
}


deployManifest() {
    while IFS=: read -r file target
    do
        symLink $file $target
    done < $1
}

deployManifest MANIFEST
