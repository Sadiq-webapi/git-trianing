#!/bin/bash
for i in linux git jenkins dockers kubernetes terraform
do 
	mkdir $i
	touch $i/Notes.md
done
