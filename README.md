# cr10v2_klipper
## cr10v2 profil klipper 
Ce repo contient actuellement la configuration de ma Creality CR10-V2 fonctionnant avec le firmware [Klipper](https://github.com/KevinOConnor/klipper)

## Variable d'environment
Le script de mise à jour utilise une variable d'environnement afin de déterminer de quelle imprimante il s'agit (développement futur pour plusieurs imprimantes). Pour cela, la variable est nommée PRINTER_NAME et doit correspondre au nom du dossier dans le repo, actuellement: **_cr10v2_**

Ajouter une variable d'environnement n'est pas compliqué:
- ouvrir le fichier bashrc via `nano ~/.bashrc`,
- aller à la fin de ce fichier et ajouter la ligne suivante: `export PRINTER_NAME=cr10v2`
- sauvegarder le fichier bashrc (CTRL+O, CTRL+X),
- le sourcer `source ~/.bashrc` (ou plus rapide: `. ~/.bashrc`),
- vérifier que tout fonctionne correctement via `echo $PRINTER_NAME` qui doit retourner le nom précédemment saisi.

## Mises à jour:
- ajout du bltouch
- configuration de bed mesh level
- maj calibration estep (extrudeur pseudo BMG sans réduction)
- séparation du fichier de configuration monolithique en plusieurs fichiers inclus via la directive «**include**» (printer.cfg)
- organisation en sous-dossiers 
- ajout de nouvelles macros (macros.cfg)
- README peaufiné

## On résume:
Récupérer le dépôt:
```
cd ~
git clone https://github.com/fran6p/cfg_klipper
```
Seul le script `update.sh` est directement utilisable après l'avoir rendu exécutable. Le second script me permet de faire des modifications localement sur le Pi et renvoyer ensuite celles-ci sur mon dépôt. Vous devrez donc y effectuer quelques modifications si vous voulez l'utiliser avec votre propre dépôt ;-) 

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