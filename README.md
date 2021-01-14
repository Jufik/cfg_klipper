# cr10v2_klipper
## cr10v2 profil klipper 
Ce dépôt contient la configuration de ma Creality CR10-V2 fonctionnant avec le firmware [Klipper](https://github.com/KevinOConnor/klipper)

## Variable d'environment
Le script de mise à jour fait usage d'une variable d'environnement afin de déterminer de quelle imprimante il s'agit (développement envisagé pour la gestion de plusieurs imprimantes). Pour cela, la variable utilisée se nomme PRINTER_NAME, son contenu doit correspondre au nom du dossier dans le dépôt, actuellement: **_cr10v2_**

L'ajout d'une variable d'environnement n'est pas compliqué:
- ouvrir le fichier bashrc via `nano ~/.bashrc`,
- aller à la fin de ce fichier et ajouter la ligne suivante: `export PRINTER_NAME=cr10v2`
- sauvegarder le fichier bashrc (CTRL+O, CTRL+X),
- le sourcer `source ~/.bashrc` (ou plus rapide: `. ~/.bashrc`),
- vérifier que tout fonctionne correctement via `echo $PRINTER_NAME` qui doit retourner le nom précédemment saisi.

## Mises à jour:
- ajout du bltouch
- configuration de bed mesh level
- maj calibration estep (extrudeur BMG avec réduction 3:1), montage de l'extrudeur en mode «volant» (mixte entre bowden et direct-drive, le PTFE ne mesure plus que 20 cm) 
- séparation du fichier de configuration monolithique en plusieurs fichiers inclus via la directive «**include**» (printer.cfg)
- organisation en sous-dossiers 
- ajout de nouvelles macros (macros.cfg)
- réduction de la rétraction avec l'extrudeur volant (PTFE plus court)
- README peaufiné
- modification M701, M702 : la vitesse de retrait / insertion était trop rapide (100mm/s), maintenant de 35mm/s

## On résume:
Récupérer le dépôt:
```
cd ~
git clone https://github.com/fran6p/cfg_klipper
```
Seul le script `update.sh` est directement utilisable après l'avoir rendu exécutable. Le second script me permet de faire des modifications localement sur le Pi et de remonter ensuite celles-ci sur mon dépôt. Si vous envisagiez de l'utiliser. vous devrez y effectuer quelques modifications (a minima le lien vers votre propre dépôt Github) si vous voulez l'utiliser ;-) 

Rendre exécutables les scripts (.sh):
```
cd ~/cfg_klipper
chmod +x up*.sh
```
Première installation des fichiers de configurations:
```
cd ~/cfg_klipper
./update.sh
```

«*Que le filament coule à flot*» FP
