#!/bin/bash
old_IFS=$IFS
#IFS=$' '

echo "Téléversement du RPI vers github..." 

echo "Préparation des fichiers à envoyer"
# Fichiers dépendants de l'imprimante (carte mère, ABL, …)
for i in $(cat conf_files.txt)
do
    cp -v  ~/$i ~/cfg_klipper/$PRINTER_NAME/$i
	git add ~/cfg_klipper/$PRINTER_NAME/$i
done

# Fichiers génériques
for i in $(cat conf_generic.txt)
do
    cp -v  ~/$i ~/cfg_klipper/generic/$i
	git add ~/cfg_klipper/generic/$i	
done

git commit -m "Téléversement des fichiers de configuration" 

echo "Pushing..." 
git push origin master

IFS=$old_IFS
