# cr10v2_klipper
## cr10v2 profil klipper 
Ce repo contient actuellement la configuration de ma Creality CR10-V2

## Variable d'environment
Le script de mise à jour utilise une variable d'environnement afin de déterminer de quelle imprimante il s'agit (développement futur pour plusieurs imprimantes). Pour cela, la variable est nommée PRINTER_NAME et doit correspondre au nom du dossier dans le repo, actuellement:
- cr10v2

L'ajout d'une variable d'environnement n'est pas plus compliqué que d'accéder au RPI via ssh, ouvrir le fichier bashrc via `nano ~/.bashrc`, aller à la fin de ce fichier et ajouter cette variable (par exemple `export PRINTER_NAME=cr10v2`). Après sauvegarde du fichier bashrc, le sourcer `source ~/.bashrc` (ou plus rapide: `. ~/.bashrc`), vérifier que tout fonctionne correctement via `echo $PRINTER_NAME` qui doit retourner le nom précédemment saisi.

## Mises à jour:
- ajout du bltouch
- configuration de bed mesh level
- maj calibration estep (extrudeur pseudo BMG sans réduction)
- séparation du fichier de configuration monolitique en plusieurs fichiers 
- organisation en sous-dossiers 
- ajout de nouvelles macros
- README

## Mise en garde:
Avant d'utiliser les scripts (update.sh et upload_calibration_settings.sh), je vous conseille d'effectuer un fork de ce dépôt.
- Modifier ces deux scripts pour qu'ils soient exécutables ( chmod +x up*.sh)
- Modifier ensuite dans le fichier update.sh mon dépôt par le vôtre.
- Compléter à votre guise la liste des fichiers de configuration en fonction de votre matériel et de vos préférences (fichiers .txt).

## On résume:
Récupération du dépôt
```
cd ~
git clone https://github.com/fran6p/cfg_klipper
cd ~/cfg_klipper
chmod +x up*.sh
./update.sh
```

«Que le filament coule à flot» FP