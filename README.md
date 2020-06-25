# cr10v2_klipper
## cr10v2 profil klipper 
Ce repo contient actuellement la configuration d'une imprimante.

## Variable d'environment
Le script de mise à jour utilise une variable d'environnement afin de déterminer de quelle imprimante il s'agit (développement futur pour plusieurs imprimantes). Pour cela, la variable est nommée PRINTER_NAME et doit correspondre au nom du dossier dans le repo, actuellement:
- cr10v2

L'ajout d'une variable d'environnement est aussi facile que d'accéder au RPI via ssh, ouvrir le fichier bashrc via `nano ~/.bashrc`, aller à la fin de ce fichier et ajouter cette variable (par exemple `export PRINTER_NAME=cr10v2`). Après sauvegarde du fichier bashrc, le sourcer `source ~/.bashrc`, vérifier via `echo $PRINTER_NAME` qui doit retourner le nom précédemment saisi.

## Mises à jour:
- ajout du bltouch
- configuration de bed mesh level
- maj calibration estep (extrudeur pseudo BMG sans réduction)
- séparation du fichier de configuration monolitique en plusieurs fichiers 
- organisation en sous-dossiers 
- ajout de nouvelles macros 


## Maj Klipper / dwc2 
Pour mettre à jour klipper / dwc2 utiliser le script de manu7irl récupérable ici :
https://github.com/manu7irl/klipper-DWC2-installer
