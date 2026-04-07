# Images de Numérologie - Chiffres 1-9

## Statut

**Prêt** - Utilise Pollinations.ai + Real-ESRGAN (gratuit, sans clé API).

## Pipeline de génération

Les images sont générées via :
1. **Pollinations.ai** : génère en 768×768 natif (gratuit, sans clé API)
2. **Real-ESRGAN** : upscale IA 4× → redimensionne en 2K (2048×2048)

**Temps par image** : ~70 secondes

## Commande de génération

Nano utilise le skill **`image-creator`** pour générer. Voir le SKILL.md de ce skill pour la commande exacte.

En cas de throttling (erreur 429), attendre 2 minutes et réessayer.

## Fichiers

| Fichier | Description |
|---------|-------------|
| `generate-numerology-images.sh` | Script complet pour générer les 9 images |
| `README.md` | Ce fichier |

## Images à générer

1. **numero-1-initiator.png** - Rouge (#E74C3C) - The Initiator
2. **numero-2-harmony.png** - Bleu (#3498DB) - Harmony
3. **numero-3-expression.png** - Jaune (#F39C12) - Expression
4. **numero-4-structure.png** - Gris/Terre - Structure
5. **numero-5-freedom.png** - Turquoise (#16A085) - Freedom
6. **numero-6-love.png** - Rose/Corail (#E8A48F) - Love
7. **numero-7-introspection.png** - Indigo/Violet (#4B0082) - Introspection
8. **numero-8-power.png** - Violet royal/Or - Power
9. **numero-9-completion.png** - Doré/Ambre (#C9A961) - Completion

## Spécifications

- Format : PNG 4K
- Style : Sculpture marbre Renaissance italienne
- Fond : Noir complet (void)
- Éclairage : Dorsal théâtral coloré (une seule couleur par chiffre)
- Profondeur de champ : Macro extrême
- Chiaroscuro dramatique

## Prompts source

Les prompts détaillés sont disponibles dans :
`/home/node/.openclaw/workspace/Shanti/RESSOURCES_VISUELLES/TO DO/NUMEROLOGICAL_PROMPTS_1-9_FINAL.txt`
