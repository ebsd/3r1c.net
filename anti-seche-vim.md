# Antisèche vim

## Le meilleur

- Revenir au mode normal : `ESC` ou `CTRL+[`
- Se déplacer à la fin du mot suivant : `e`
- Se déplacer au caractère précédant / suivant : `F` / `f`
- Aller au paragraphe précédant / suivant : `{}`
- Copier la ligne : `yy`
- Rechercher le mod sous le curseur : `#` ou `*`
- Remplacer et insérer le mot sous le curseur : `cw`
- Remplacer et insérer le mot sous le curseur et le mot suivant : `c2w`
- Remplacer la ligne et insérer : `c$`
- Copier n lignes : `nyy`
- Explorer le filesystem : `:Ex`, `:Vex`, `:Sex`, `:Tex`

## Détails 

- Mode insertion : `i`
- Mode insertion au début de ligne : `I`
- Revenir au mode normal : `ESC` ou `CTRL+[`
- Se déplacer à l'endroit de la dernière insertion : `gi`
- Se déplacer à la fin du mot suivant : `e`
- Se déplacer au caractère précédant / suivant : `F` / `f`
- Se déplacer au mot suivant : `w`
- Se déplacer 9 mots plus loin : `9w`
- Se déplacer au mot précédant : `b`
- Se déplacer de 8 lignes : `8j`
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
- Supprimer 4 lignes : `4dd`
- Supprimer 3 mots : `3dw`
- Supprimer les 3 mots précédent : `d3b`
- Rechercher le mod sous le curseur : `#` ou `*`
- Rechercher vers le bas : `/chaine`
- Rechercher vers le haut : `?chaine`
- Répéter la recherche : `n`
- Répéter la recherche dans la direction inverse : `N`
- Désactiver la sensibilité à la casse : `:set ignorecase`
- Remplacer et insérer à partir du curseur : `cw`
- Remplacer et insérer à partir du curseur jusqu'au second mot : `c2w`
- Remplacer la ligne et insérer : `c$`

## Un peu plus loin
- Supprimer les espaces à la fin de chaque ligne : `:%s/\s\+$//e`
- Idem au début de chaque ligne : `:%s/^\s+//e`
- Afficher un guide d'indentation (tab) : `:set listchars=tab:\|\` puis  `:set list`
- Indenter (tabulation) un bloc de texte : sélectionner le texte avec `V`, puis `jj>`
- Déplacer le curseur librement : `set virtualedit=all`
- Fixer une largeur de 80 caractères : `set textwidth=80` ou `set tw=80`
- Fixer cette largeur pour tout les fichiers .txt, dans `~/.vimrc`
```
autocmd FileType text setlocal textwidth=80
```
- Pour remplacer la touche ESC (un peu lointaine du centre du clavier) par `jj` dans `~/.vimrc` : `inoremap jj <Esc>`. Note : on peut aussi utiliser `CTRL+[`
## autosave
`~/.vimrc`
```
autocmd TextChanged,TextChangedI <buffer> silent write
```

## Spell check

Dans `~/.vimrc` :
```
set spell
set spelllang+=fr
```
Pour obtenir une suggestion de correction `z=`.
Pour ajouter un mot au dic : `zg`
Pour supprimer un mot du doc : `zw`
Pour se déplacer à la prochaine erreur `]s` et pour la précédente `[s`.

## Plugins

- https://github.com/vim-pandoc/vim-pandoc
- https://github.com/Scuilion/markdown-drawer
- https://github.com/junegunn/goyo.vim

### Gestion et Installation

https://github.com/junegunn/vim-plug


Sources multiples dont : 
https://stackoverflow.com/questions/597077/what-are-the-benefits-of-learning-vim
https://blog.sanctum.geek.nz/vim-anti-patterns/
