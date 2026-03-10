#!/bin/bash

a=101   #number of beads
b=432    #number of chains 
sed -n '1,5p' lyzo.xml > model.xml

awk '{printf "%17.10f%17.10f%17.10f\n",$1, $2, $3}' coord.gro >> model.xml

echo -e "</position>\n<type num="$a">\n" >> model.xml

#awk '{print $2}' model2.gro >> model.xml

#echo -e "</type>\n<charge num="$a">\n" >> model.xml

awk '{print $2}' coord.gro >> model.xml

echo -e "</type>\n<bond num="$(($a-1))">\n" >> model.xml

for  ((a=1; a<=$b; a++))
  do
 # cat bond.dat >> model.xml
  sed -n 'p' bond.dat  >> model.xml
done

echo -e "</bond>\n</configuration>\n</galamost_xml>\n" >> model.xml
