# Objectifs nuages de points :

## Arguments  
- sizeInfo : taille du graphique  
- gridInfo :  
  + nbLines : nombre de lignes de la carte  
  + nbColumns : nombre de colonnes de la carte  
  + topology : 'hexagonal'/'rectangular', structure de la carte  
- superclass : vecteur donnant la super-classe de chaque case  
- superclassColor : vecteur des couleurs de fond de chaque super-classe  
- nuageData :  
  + cell : vecteur donnant la case de chaque point  
  + x : vecteur des abscisses des points  
  + y : vecteur des ordonnées des points  
  + label : vecteur des noms des points  

## Couleurs  
- couleur de fond de chaque cellule : donné par l'argument superclassColor  
- couleurs : axes noirs, repères (au crayon sur le dessin) en gris, points en forme de cercles noirs  

## Interactivité
- "drag" sur une case : déplacer le repère (toutes les cases bougent ensemble)  
- "scroll" sur une case : (dé)zoom (toutes les cases zooment ensemble)  
- pointeur sur un des points : output l'identifiant du point (index dans les nuageData) dans le "#plot-message"  
