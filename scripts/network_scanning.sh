ip=$1

nmap_available=true

if ! [ -x "$(command -v nmap)" ]; then
    echo "nmap not available"
fi

echo $ip
