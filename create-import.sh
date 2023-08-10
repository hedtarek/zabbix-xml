#!/bin/bash
head -11 template.xml > import.xml
for i in `cat hosts.csv`
do
	XXIP=`echo $i|awk -F";" '{ print $2 }'`
	XXHOST=`echo $i|awk -F";" '{ print $1 }'`
	XXNAME=`echo $XXHOST|awk -F"." '{ print toupper($1) }'`
	cat host.xml | sed "s/XXIP/$XXIP/g" >> import.xml
	sed -i "s/XXHOST/$XXHOST/g" import.xml
	sed -i "s/XXNAME/$XXNAME/g" import.xml
done
tail -2 template.xml >> import.xml