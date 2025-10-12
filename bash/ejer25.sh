#Script que lista los últimos usuarios que iniciarion sesión con sus ips. Sólo pueden aparecer si tienen ip

#!/bin/bash

echo "Últimos usuarios conectados de forma remota"
echo "-------------------------------------------"

last | egrep "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"

