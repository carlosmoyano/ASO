#busque cualquier fichero que pueda ser modificado por cualquier usuario (— — rwx)


#!/bin/bash

> archivos_peligrosos.txt

# Listar todos los ficheros y filtrar con egrep los que tengan escritura para otros
ls -lR ./ 2>/dev/null | egrep '^-.{6}w' >> archivos_peligrosos.txt



