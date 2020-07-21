# cr10v2_klipper
## cr10v2 profil klipper 
Ce repo contient actuellement la configuration de ma Creality CR10-V2 fonctionnant avec le firmware [Klipper](https://github.com/KevinOConnor/klipper)

## Variable d'environment
Le script de mise à jour utilise une variable d'environnement afin de déterminer de quelle imprimante il s'agit (développement futur pour plusieurs imprimantes). Pour cela, la variable est nommée PRINTER_NAME et doit correspondre au nom du dossier dans le repo, actuellement: **_cr10v2_**

Ajouter une variable d'environnement n'est pas compliqué:
- ouvrir le fichier bashrc via `nano ~/.bashrc`,
- aller à la fin de ce fichier et ajouter cette variable la ligne: `export PRINTER_NAME=cr10v2`
- sauvegarder le fichier bashrc (CTRL+O, CTRL+X),
- le sourcer `source ~/.bashrc` (ou plus rapide: `. ~/.bashrc`),
- vérifier que tout fonctionne correctement via `echo $PRINTER_NAME` qui doit retourner le nom précédemment saisi.

## Mises à jour:
- ajout du bltouch
- configuration de bed mesh level
- maj calibration estep (extrudeur pseudo BMG sans réduction)
- séparation du fichier de configuration monolitique en plusieurs fichiers inclus via la directive «**include**» (printer.cfg)
- organisation en sous-dossiers 
- ajout de nouvelles macros (macros.cfg)
- README peaufiné

## On résume:
Récupérer le dépôt:
```
cd ~
git clone https://github.com/fran6p/cfg_klipper
```
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