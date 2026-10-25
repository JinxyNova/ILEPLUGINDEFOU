# 🏝️ Îles du Chaos

**Datapack Minecraft Java 26.2** : tu démarres sur une seule île au milieu du vide. **Chaque jour, une nouvelle île apparaît** (biome, coffre, mob important, piège...) et **toutes les 90 secondes, une catastrophe s'abat sur les joueurs** (météorites, inondations, tornade, pluie de poules...). Le but : survivre, construire des ponts, et aller battre l'Ender Dragon.

Pensé pour les vidéos et les lives : tout est visuel, drôle et configurable.

> 🇬🇧 **English:** one new island spawns every in-game "day" in a void world (biome + loot chest + key mob + traps), and a random disaster hits all players every 90 s. 29 unique islands, 30 disasters, loot-lottery chests, on-screen day counter. Minecraft Java 26.2, no mods required.

---

## 📦 Installation

1. Télécharge `iles-du-chaos-vX.Y.Z.zip` dans l'onglet **[Releases](../../releases)**.
2. Crée un monde **Superflat → preset "The Void"** (Vide), **triche activée**, mode **Créatif**.
3. Dans l'écran de création, clique sur **Packs de données** et ajoute le zip (ou mets-le dans `saves/<monde>/datapacks/`).
4. Une fois dans le monde : `/function iles:start`
5. Passe en survie : `/gamemode survival`

> Si Minecraft affiche "pack incompatible", clique sur **Oui** pour charger quand même (le numéro de format de la 26.2 est géré avec une plage large).

## 🎮 Commandes

| Commande | Effet |
|---|---|
| `/function iles:start` | Place l'île de départ (4 chunks), téléporte tout le monde, lance le jeu |
| `/function iles:stop` | Arrête tout |
| `/function iles:skip` | Fait apparaître l'île suivante tout de suite |
| `/function iles:cata_now` | Déclenche une catastrophe aléatoire |
| `/function iles:cata_on` / `iles:cata_off` | Active / coupe les catastrophes |
| `/function iles:ev/e01` … `e30` | Déclenche une catastrophe précise |
| `/function iles:help` | Rappel des commandes dans le chat |

### ⚙️ Réglages

| Réglage | Commande | Défaut |
|---|---|---|
| Durée d'un "jour" (ticks, 20 = 1 s) | `/scoreboard players set #duree iles 6000` | 6000 (5 min) |
| Délai entre deux catastrophes (ticks) | `/scoreboard players set #evduree iles 1800` | 1800 (90 s) |

## 🏝️ Les îles

Une bossbar affiche **"JOUR X · Prochaine île dans Ys"**, avec décompte sonore, gros titre et sons à chaque arrivée.

| Jour | Île | Jour | Île |
|---|---|---|---|
| 2 | Forêt (mouton rose + coffre loto) | 17 | Glace (ours polaire) |
| 3 | Désert (marchand : 5 bâtons = 1 diamant) | 18 | Creeper Party |
| 4 | Poulailler (40 poules, coffre "légendaire") | 19 | Robin des Bois (squelettes archers) |
| 5 | Neige (loup, bonhomme de neige) | 20 | Lave (coffre au milieu du lac) |
| 6 | Jungle (**tombe sur la tête d'un joueur**) | 21 | Village (2 villageois commerçants) |
| 7 | **Titanic** (l'île coule lentement) | 22 | End (endermen, chance d'elytra) |
| 8 | Champignons | 23 | **Boss : Gérard le Ravageur** (200 PV) |
| 9 | Ferme | 24 | Casino (5 coffres loto) |
| 10 | **Bouton rouge** (TNT caché) | 25 | Forteresse (wither skeletons) |
| 11 | Cerisier (**collée à la base**) | 26 | Zombies (**sur la tête**) |
| 12 | **Arnaque** (vrai coffre enterré) | 27 | Pandas |
| 13 | Badlands (cheval apprivoisé) | 28 | Araignées |
| 14 | Marais (sorcière + slimes) | 29 | Zoo du chaos (10 "Gérard") |
| 15 | Nether (blaze) | 30 | **Portail de l'End** (12 yeux d'Ender) |
| 16 | Savane (lamas) | 31+ | Îles aléatoires (12 % sur la tête, 12 % collées) |

Les coffres "loto" tirent au sort : **jackpot** (diamants, netherite, totem...), correct, **nul** (10 bâtons), ultra nul ou même un coffre de TNT.

## 🌋 Les 30 catastrophes

| | | | |
|---|---|---|---|
| Pluie de météorites | Météorite géante | Inondation | Pluie de TNT |
| Pluie d'enclumes | Pluie de pastèques | Pluie de poules | Pluie de creepers |
| Pluie de vaches | Tempête (foudre) | Tremblement de terre | Le sol s'effondre |
| Pluie de lave | Tornade | Catapulte | Gravité lunaire |
| Mode géant | Mode mini | Blizzard | Canicule |
| Nuage toxique | Nuit noire | Invasion de zombies | Phantoms |
| Raid de vindicateurs | Slimes géants | Mode Sonic | Pluie de diamants 💎 |
| Bénédiction | Retour à la base | | |

⚠️ Plusieurs catastrophes détruisent des morceaux d'îles (météorites, TNT, séisme, lave). C'est voulu, mais tu peux baisser la fréquence ou utiliser `iles:cata_off`.

## 🛠️ Structure du repo

```
datapack/            ← le datapack (à zipper pour jouer)
  pack.mcmeta
  data/iles/function/    logique du jeu, îles (island/), catastrophes (ev/)
  data/iles/loot_table/  coffres (chest/) et loot du boss (drop/)
tools/generate.py    ← génère toutes les îles / catastrophes / loot tables
tools/validate.py    ← vérifie le JSON et la syntaxe de base
.github/workflows/   ← validation automatique + release au tag vX.Y.Z
```

### Modifier ou ajouter du contenu

Les fichiers de `datapack/` sont générés par `tools/generate.py`, qui est la source de vérité :

```bash
python tools/generate.py   # régénère datapack/
python tools/validate.py   # vérifie
```

- **Ajouter une île** : écris une fonction dans `generate.py` (voir les exemples avec `base(...)`, `chest(...)`, `summon(...)`), ajoute-la avec `add('nom', lignes)`. Le dispatch se met à jour tout seul.
- **Ajouter une catastrophe** : ajoute une entrée `EV[31] = head(...) + [...]` dans la section `CATASTROPHES` (le tirage s'adapte au nombre d'entrées).
- **Changer les loot tables** : dictionnaire `T[...]` en bas du fichier.

Tu peux aussi éditer directement les `.mcfunction`, mais ils seront écrasés à la prochaine génération.

## 🚀 Publier une version

```bash
git tag v1.0.0
git push origin v1.0.0
```

GitHub Actions valide le datapack, crée le zip et publie la release automatiquement.

## ❓ Problèmes connus

- Le datapack n'a pas été testé sur toutes les configs : ouvre une **issue** avec la version de Minecraft et le message d'erreur (`logs/latest.log`).
- Dans un monde "Void", tu peux tomber dans le vide avant d'avoir lancé `iles:start` : reste en Créatif (vol) jusqu'au `start`.
- L'île de départ fait 4 chunks (2×2, environ 31×31 blocs) ; les autres îles sont espacées de 40 blocs : il faut construire des ponts.

## 🎥 Utilisation en vidéo

Utilisation libre (YouTube, TikTok, live...). Un petit lien vers ce repo en description est apprécié mais pas obligatoire.

## 📄 Licence

[MIT](LICENSE)
