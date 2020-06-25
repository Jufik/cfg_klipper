#!/bin/bash

echo "Téléversement du RPI vers github..." 

echo "Préparation des fichiers à envoyer"
# Fichiers particuliers de l'imprimante
cp -v  ~/printer.cfg ~/cfg_klipper/$PRINTER_NAME/printer.cfg
cp -v  ~/mb-cr252.cfg ~/cfg_klipper/$PRINTER_NAME/mb-cr252.cfg
cp -v  ~/bltouch.cfg ~/cfg_klipper/$PRINTER_NAME/bltouch.cfg
cp -v  ~/calibration.cfg ~/cfg_klipper/$PRINTER_NAME/calibration.cfg
cp -v  ~/scurve.cfg ~/cfg_klipper/$PRINTER_NAME/scurve.cfg
# Fichiers génériques
cp -v  ~/macros.cfg ~/cfg_klipper/generic/macros.cfg
cp -v  ~/menu.cfg ~/cfg_klipper/generic/menu.cfg
cp -v  ~/menu_calibration.cfg ~/cfg_klipper/generic/menu_calibration.cfg
cp -v  ~/menu_filament.cfg ~/cfg_klipper/generic/menu_filament.cfg
cp -v  ~/other.cfg ~/cfg_klipper/generic/other.cfg

echo "Ajout à git"
git add $PRINTER_NAME/printer.cfg
git add $PRINTER_NAME/mb-cr252.cfg
git add $PRINTER_NAME/bltouch.cfg
git add $PRINTER_NAME/calibration.cfg
git add $PRINTER_NAME/scurve.cfg
git add generic/macros.cfg
git add generic/menu.cfg
git add generic/menu_calibration.cfg
git add generic/menu_filament.cfg
git add generic/other.cfg
git commit -m "Téléversement des réglages" 

echo "Pushing..." 
git push origin master

