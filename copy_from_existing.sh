#!/bin/bash

old="mongodb+srv://USERNAME:PASSWORD@XXXXXXXXXXXXXX.mongodb.net/voipdb"
new="mongodb://tormaulbag:wmakranier@mongo/voip"


for c in contacts media messages settings users
do
  mongoexport --uri=$old --collection=$c --out /tmp/$c.json
  mongoimport $new /tmp/$c.json
done
