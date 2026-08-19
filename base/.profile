export ENV="$HOME/.ashrc" 

if [ -f "$ENV" ]; then
    . "$ENV"
fi
