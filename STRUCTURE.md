# 📁 Structure des Assets Astro-Swiss

## Organisation pour les Templates Email

### Vedic
```
vedic/
├── nakshatras/     ← 27 lunes védiques
│   ├── ashvini-nobg-nobg.png
│   ├── bharani-nobg-nobg.png
│   └── ... (27 fichiers)
├── rashis/         ← 12 signes du zodiac
│   ├── mesha-belier-nobg-nobg.png
│   ├── vrishabha-taureau-nobg-nobg.png
│   └── ... (12 fichiers)
├── grahas/         ← 9 planètes (Grahas)
│   ├── surya-soleil-nobg-nobg.png
│   ├── chandra-lune-nobg-nobg.png
│   └── ... (9 fichiers)
├── numerology/     ← 9 chiffres
│   ├── numerology-1-initiator-nobg-nobg.png
│   └── ... (9 fichiers)
└── symbols/        ← Symboles spirituels
    ├── om-vedic-nobg-nobg.png
    ├── mandala-nobg-nobg.png
    ├── lotus-8-petals-nobg-nobg.png
    └── ... (9 fichiers)
```

### Tarot
```
tarot/
├── 00-le-mat.jpg          ← Arcanes majeurs (endroit)
├── 01-le-bateleur.jpg
├── ... (22 arcanes)
└── reversed/
    ├── 00-le-mat.jpg      ← Arcanes majeurs (renversés)
    └── ... (22 arcanes)
```

### Pictos (pour Cards Email)
```
pictos/
├── CARDS/           ← Avec fond coloré
│   ├── ACTION.png
│   ├── VIGILENCE.png
│   ├── IDEA.png
│   └── ...
└── SOLO/           ← Sans fond (transparent)
    ├── ACTION.png
    └── ...
```

## URLs de référence

Base : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/`

Exemples complets :
- **Nakshatra** : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/vedic/nakshatras/ashvini-nobg-nobg.png`
- **Rashi** : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/vedic/rashis/mesha-belier-nobg-nobg.png`
- **Graha** : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/vedic/grahas/surya-soleil-nobg-nobg.png`
- **Numérologie** : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/vedic/numerology/numerology-1-initiator-nobg-nobg.png`
- **Tarot** : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/tarot/17-l-etoile.jpg`
- **Tarot Renversé** : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/tarot/reversed/20-le-jugement.jpg`
- **Picto** : `https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/pictos/CARDS/ACTION.png`

## Convention de nommage

- **Vedic** : minuscules, tirets, suffixe `-nobg-nobg.png` (fond transparent)
- **Tarot** : `XX-nom-francais.jpg` (endroit) ou `reversed/XX-nom-francais.jpg`
- **Pictos** : MAJUSCULES, slug ASCII (ex: `ACTION.png`, `VIGILENCE.png`)

## Dernier push
6 avril 2026 : Réorganisation complète des assets védiques
