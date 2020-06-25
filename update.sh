#!/bin/bash

# Faire eune sauvegarde de printer.cfg
echo "Sauvegarde de printer.cfg en printer.backup..." 
mv ~/printer.cfg ~/printer.backup

read -p "Nettoyage du dossier personnel? " -n 1 -r
echo    # (optionnel) passage à la ligne
if [[ $REPLY =~ ^[YyOo]$ ]]
then
    rm ~/*.cfg
fi

# Récupération des derniers fichiers
echo "Pulling..." 
git pull https://github.com/fran6p/cfg_klipper
# Copie des fichiers generiques
echo "Copie des fichiers generiques..." 
cp -v -r generic/*.cfg ~/ 

# Recopie de tous le fichiers d'extension cfg un niveau au-dessus
echo "Recopie des fichiers de configuration pour $PRINTER_NAME..." 
cp -v -r $PRINTER_NAME/*.cfg ~/

# Demander pour restaurer les paramètres de calibration
read -p "Restaurer printer.cfg (paramètres de calibration)? " -n 1 -r
echo    # (optionnel) passage à la ligne
if [[ $REPLY =~ ^[YyOo]$ ]]
then
    cp ~/printer.backup ~/printer.last_known_cfg
    mv ~/printer.backup ~/printer.cfg
fi

