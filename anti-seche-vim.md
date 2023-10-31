# Antisèche vim

## Le meilleur

- Revenir au mode normal : `ESC` ou `CTRL+[`
- Se déplacer à la fin du mot suivant : `e`
- Se déplacer au caractère précédant / suivant : `F` / `f`
- Aller au paragraphe précédant / suivant : `{}`
- Copier la ligne : `yy`
- Rechercher le mod sous le curseur : `#` ou `*`
- Remplacer et insérer à partir du curseur : `cw`
- Remplacer et insérer à partir du curseur jusqu'au second mot : `c2w`
- Copier n lignes : `nyy`

## Détails 

- Mode insertion : `i`
- Mode insertion au début de ligne : `I`
- Revenir au mode normal : `ESC` ou `CTRL+[`
- Se déplacer à l'endroit de la dernière insertion : `gi`
- Se déplacer à la fin du mot suivant : `e`
- Se déplacer au caractère précédant / suivant : `F` / `f`
- Se déplacer au mot suivant : `w`
- Se déplacer au mot précédant : `b`
- Fin de ligne : `$`
- Début de ligne : `^`
- Aller à la ligne n : `nG`
- Aller à la 1ere ligne : `1G`
- Aller au paragraphe précédant / suivant : `{}`
- Aller à l'écran précédant / suivant : `CTRL+F` / `CTRL+B`
- Dernière : `G`
- Undo : `u`
- Joindre la ligne suivante à la ligne courante : `J`
- Numéro de ligne : `Ctrl-g` ou `:set number`
- Copier la sélection : `y`
- Copier la ligne : `yy`
- Copier n lignes : `nyy`
- Copier le mot : `yw`
- Copier n mots : `nyw`
- Coller après le curseur : `p`
- Coller avant le curseur `P`
- Supprimer la ligne : `dd`
- Supprimer le reste de la ligne : `d$`
- Supprimer depuis le début de la ligne : `d^`
- Supprimer jusqu'à la fin du fichier : `dG`
- Supprimer depuis le début du fichier : `d1G`
- Supprimer n lignes : `ndd`
- Supprimer n mots : `ndw`
- Rechercher le mod sous le curseur : `#` ou `*`
- Rechercher vers le bas : `/chaine`
- Rechercher vers le haut : `?chaine`
- Répéter la recherche : `n`
- Répéter la recherche dans la direction inverse : `N`
- Désactiver la sensibilité à la casse : `:set ignorecase`
- Remplacer et insérer à partir du curseur : `cw`
- Remplacer et insérer à partir du curseur jusqu'au second mot : `c2w`

## Un peu plus loin
- Supprimer les espaces à la fin de chaque ligne : `:%s/\s\+$//e`
- Idem au début de chaque ligne : `:%s/^\s+//e`
- Afficher un guide d'indentation (tab) : `:set listchars=tab:\|\` puis  `:set list`
- Indenter (tabulation) un bloc de texte : sélectionner le texte avec `V`, puis `jj>`
- Déplacer le curseur librement : `set virtualedit=all`
- Fixer une largeur de 80 caractères : `set textwidth=80`

## autosave
`~/.vimrc`
```
let g:auto_save = 1
```

## Spell check

Dans `~/.vimrc` :
```
set spell
set spelllang+=fr
```
Pour obtenir une suggestion de correction `z=`.
Pour se déplacer à la prochaine erreur `]s` et pour la précédente `[s`.

Sources multiples dont : https://blog.sanctum.geek.nz/vim-anti-patterns/
