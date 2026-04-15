# Astro Swiss Assets

Assets visuels pour [astro-swiss.com](https://astro-swiss.com) — thèmes astraux par email.

## Structure

| Dossier | Contenu | Fichiers |
|---------|---------|----------|
| `01_occidental/` | Planètes & signes (astrologie tropicale) | 21 |
| `02_vedique/` | Grahas, rashis, nakshatras (astrologie sidérale) | 55 |
| `03_tarot/` | 22 arcanes majeurs (PNG nobg + JPG droites + reversed) | 66 |
| `04_numerologie/` | Chiffres 1-9 | 18 |
| `05_pictos/` | Pictogrammes isolés (SVG + PNG) | 59 |
| `06_elements/` | Feu, Terre, Air, Eau | 7 |
| `07_symboles/` | Symboles sacrés (email-optimized) | 13 |

## Usage

Les images sont optimisées pour l'email (max 200px, qualité 50%).

URL de base : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/`

### Exemples

- Symbole Om : `07_symboles/om-vedic-nobg.png`
- Carte du Mat : `03_tarot/00-le-mat.jpg`
- Carte du Mat (renversée) : `03_tarot/reversed/00-le-mat.jpg`
- Graha Surya : `02_vedique/grahas/surya-soleil-nobg.png`

### Email

Pour les emails, les images sont injectées en **base64 inline** (les clients email bloquent les URLs externes).

Scripts d'injection :
- `scripts/inject-images-base64.py` — générique
- `scripts/send-vedique-email.py` — thème védique
- `scripts/send-tarot-email.py` — tirage quotidien

## Licence

Propriété de Metro Prod — tous droits réservés.