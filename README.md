# ✊ Gauche ou Droite ? 💼

Jeu de soirée sur tablette/mobile : on propose un mot, chaque joueur vote **Gauche** ou **Droite**, puis l'IA rend son verdict avec une explication pleine de mauvaise foi assumée. Ceux qui ont deviné juste marquent un point.

> À ne pas prendre au premier degré. C'est un jeu.

## 🎮 Comment jouer

1. Ouvrir `index.html` (idéalement via un serveur, voir plus bas)
2. Sélectionner les joueurs en appuyant sur les blocs de prénoms
3. Taper un mot ou une expression (« la raclette », « les ronds-points »…)
4. Chaque joueur vote ✊ Gauche ou 💼 Droite sur sa carte
5. **Verdict de l'IA** : elle tranche et explique — +1 point pour ceux qui ont vu juste
6. Leaderboard 🏆, historique complet 📜, reset des scores 🧹

## 🤖 Verdict IA ou vote majoritaire

- **Par défaut** : IA publique gratuite sans clé ([Pollinations](https://pollinations.ai)), dans l'esprit du site original qui utilisait GPT-3.
- **Avec une clé API Gemini** (gratuite sur [aistudio.google.com](https://aistudio.google.com)) : verdicts plus rapides et fiables. Deux façons de la fournir : la coller dans ⚙️ (stockée dans le navigateur), ou un fichier `apikey.txt` (une ligne, la clé) à côté de `index.html`.
- **Sans réseau** : bascule automatique sur le vote majoritaire des joueurs (égalité → pile ou face « centriste »).

## 👥 Joueurs

Les prénoms proposés en blocs sont lus depuis [`players.txt`](players.txt) (un prénom par ligne). Modifiez ce fichier puis rechargez la page. On peut aussi ajouter un prénom à la volée avec « ＋ » (mémorisé dans le navigateur) et en supprimer par appui long.

## 🚀 Lancer

Le fichier `players.txt` n'est lisible que si la page est servie en HTTP :

```bash
python -m http.server        # puis http://localhost:8000
```

ou simplement via **GitHub Pages**. En ouvrant `index.html` en double-clic (`file://`), le jeu fonctionne aussi mais avec la liste de prénoms par défaut intégrée.

Aucune dépendance, aucun build : un seul fichier HTML, optimisé téléphone et tablette. Scores, historique et réglages sont conservés en `localStorage`.

## 🙏 Crédits

Ce jeu est un hommage au site **[C'est de gauche ou de droite ?](https://degaucheoudedroite.delemazure.fr/)** créé par **[Théo Delemazure](https://twitter.com/DelemazureTheo)**, où une IA (GPT-3) décide si les choses sont de gauche ou de droite. Allez-y, c'est génial.

Cette version ajoute le mode multijoueur (votes, points, leaderboard, historique) et l'explication du verdict — mais l'idée d'origine est entièrement la sienne.

## 📄 Licence

Projet perso, fait pour rigoler entre amis. Ne pas prendre au premier degré, ni le jeu, ni les verdicts de l'IA.
