#!/bin/bash
# update-asset-catalog.sh - Met à jour le catalogue des assets
# Usage: ./update-asset-catalog.sh

set -e

BASE_DIR="/home/node/.openclaw/workspace/Shanti/RESSOURCES_VISUELLES"
CATALOG_FILE="$BASE_DIR/ASSET-CATALOG.json"
GITHUB_REPO="https://github.com/ValR252/astro-swiss-assets"
GITHUB_RAW="https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main"

echo "🔄 Génération de l'ASSET-CATALOG.json..."

# Fonction pour scanner un dossier
scan_directory() {
    local dir="$1"
    local category="$2"
    
    if [ -d "$dir" ]; then
        find "$dir" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.svg" \) | while read file; do
            filename=$(basename "$file")
            size=$(stat -f%z "$file" 2>/dev/null || stat -c%s "$file" 2>/dev/null || echo "0")
            
            # Déterminer le type
            if [[ "$file" == *.png ]]; then
                mime="image/png"
            elif [[ "$file" == *.jpg ]] || [[ "$file" == *.jpeg ]]; then
                mime="image/jpeg"
            elif [[ "$file" == *.gif ]]; then
                mime="image/gif"
            elif [[ "$file" == *.svg ]]; then
                mime="image/svg+xml"
            else
                mime="application/octet-stream"
            fi
            
            echo "  📄 $filename"
        done
    fi
}

# Générer le JSON
cat > "$CATALOG_FILE" << 'EOF'
{
  "version": "2.0.0",
  "lastUpdated": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "repository": "https://github.com/ValR252/astro-swiss-assets",
  "baseUrl": "https://raw.githubusercontent.com/ValR252/astro-swiss-assets/main/",
  
  "namingConventions": {
    "planets": "[name]-[style].png (ex: soleil-renaissance.png)",
    "nakshatras": "[number]-[sanskrit-name].png (ex: 01-ashvini.png)",
    "rashis": "[sanskrit-name].png (ex: mesha.png)",
    "grahas": "[name].png (ex: surya.png)",
    "tarot": "[number]-[kebab-name].jpg (ex: 00-le-mat.jpg)",
    "tarotReversed": "[number]-[kebab-name].jpg dans /reversed/",
    "pictos": "[UPPERCASE-NAME].png (ex: ACTION.png)"
  },

  "categories": {
    "01_ASTRO_OCCIDENTAL": {
      "description": "Astronomie et astrologie occidentale (tropicale)",
      "subfolders": {
        "planetes": {
          "description": "Les 7 planètes classiques (Soleil à Saturne)",
          "style": "Renaissance - sculptures en pierre blanche",
          "files": [
            {
              "name": "soleil-renaissance.png",
              "path": "01_ASTRO_OCCIDENTAL/planetes/soleil-renaissance.png",
              "githubPath": "planetes/soleil-renaissance.png",
              "size": 5365558,
              "type": "image/png",
              "tags": ["soleil", "renaissance", "occidental", "pierre-blanche"],
              "color": "#ffd16f",
              "element": "feu"
            },
            {
              "name": "lune-renaissance.png",
              "path": "01_ASTRO_OCCIDENTAL/planetes/lune-renaissance.png",
              "githubPath": "planetes/lune-renaissance.png",
              "size": 5044386,
              "type": "image/png",
              "tags": ["lune", "renaissance", "occidental", "pierre-blanche"],
              "color": "#dee5ff",
              "element": "eau"
            },
            {
              "name": "mercure-renaissance.png",
              "path": "01_ASTRO_OCCIDENTAL/planetes/mercure-renaissance.png",
              "githubPath": "planetes/mercure-renaissance.png",
              "size": 4462381,
              "type": "image/png",
              "tags": ["mercure", "renaissance", "occidental", "pierre-blanche"],
              "color": "#4cd7f6",
              "element": "air"
            },
            {
              "name": "venus-renaissance.png",
              "path": "01_ASTRO_OCCIDENTAL/planetes/venus-renaissance.png",
              "githubPath": "planetes/venus-renaissance.png",
              "size": 5297719,
              "type": "image/png",
              "tags": ["venus", "renaissance", "occidental", "pierre-blanche"],
              "color": "#c180ff",
              "element": "terre"
            },
            {
              "name": "mars-renaissance.png",
              "path": "01_ASTRO_OCCIDENTAL/planetes/mars-renaissance.png",
              "githubPath": "planetes/mars-renaissance.png",
              "size": 4866980,
              "type": "image/png",
              "tags": ["mars", "renaissance", "occidental", "pierre-blanche"],
              "color": "#fd6f85",
              "element": "feu"
            },
            {
              "name": "jupiter-renaissance.png",
              "path": "01_ASTRO_OCCIDENTAL/planetes/jupiter-renaissance.png",
              "githubPath": "planetes/jupiter-renaissance.png",
              "size": 4854746,
              "type": "image/png",
              "tags": ["jupiter", "renaissance", "occidental", "pierre-blanche"],
              "color": "#9c48ea",
              "element": "air"
            },
            {
              "name": "saturne-renaissance.png",
              "path": "01_ASTRO_OCCIDENTAL/planetes/saturne-renaissance.png",
              "githubPath": "planetes/saturne-renaissance.png",
              "size": 4600389,
              "type": "image/png",
              "tags": ["saturne", "renaissance", "occidental", "pierre-blanche"],
              "color": "#65759e",
              "element": "terre"
            }
          ]
        }
      }
    },

    "02_ASTRO_VEDIQUE": {
      "description": "Astrologie védique/sidérale (jyotish)",
      "subfolders": {
        "nakshatras": {
          "description": "Les 27 nakshatras (constellations lunaires)",
          "count": 27,
          "style": "Sculptures en pierre blanche",
          "pattern": "[number]-[sanskrit-name].png"
        },
        "rashis": {
          "description": "Les 12 signes du zodiaque sidéral",
          "count": 12,
          "pattern": "[sanskrit-name].png"
        },
        "grahas": {
          "description": "Les 9 planètes védiques (Navagraha)",
          "count": 9,
          "pattern": "[sanskrit-name].png"
        },
        "bhavas": {
          "description": "Les 12 maisons (bhavas)",
          "count": 12,
          "pattern": "[number]-[sanskrit-name].png"
        },
        "yogas": {
          "description": "Configurations planétaires (yogas)",
          "count": "variable"
        }
      }
    },

    "03_TAROT": {
      "description": "Tarot de Marseille",
      "subfolders": {
        "cartes": {
          "description": "22 arcanes majeurs",
          "count": 22,
          "pattern": "[number]-[kebab-name].jpg",
          "format": "JPEG"
        },
        "reversed": {
          "description": "Versions inversées des arcanes",
          "count": 22,
          "pattern": "[number]-[kebab-name].jpg (sans -reversed)",
          "note": "Les cartes renversées utilisent le même nom dans le sous-dossier /reversed/"
        }
      }
    },

    "04_NUMEROLOGIE": {
      "description": "Numérologie",
      "subfolders": {
        "chiffres-1-9": {
          "description": "Les 9 chiffres fondamentaux",
          "count": 9,
          "pattern": "chiffre-[number].png",
          "style": "Sculptures en pierre blanche"
        }
      }
    },

    "05_PICTOS": {
      "description": "Pictogrammes pour emails et interfaces",
      "subfolders": {
        "CARDS": {
          "description": "Pictos pour sections de cartes email",
          "files": [
            {
              "name": "ACTION.png",
              "usage": "Section Action / Climat",
              "color": "#c180ff",
              "colorName": "violet",
              "hex": "#c180ff",
              "dark": true
            },
            {
              "name": "VIGILENCE.png",
              "usage": "Section Vigilance",
              "color": "#fd6f85",
              "colorName": "corail",
              "hex": "#fd6f85",
              "dark": true
            },
            {
              "name": "IDEA.png",
              "usage": "Section Opportunité / Idée",
              "color": "#4cd7f6",
              "colorName": "cyan",
              "hex": "#4cd7f6",
              "dark": true
            },
            {
              "name": "DRIVE.png",
              "usage": "Section Motivation / Drive",
              "color": "#ffd16f",
              "colorName": "or",
              "hex": "#ffd16f",
              "dark": true
            },
            {
              "name": "AFFIRMATION.png",
              "usage": "Phrase clé / Affirmation",
              "color": "#dee5ff",
              "colorName": "blanc-bleu",
              "hex": "#dee5ff",
              "dark": false
            },
            {
              "name": "PARAGRAPHE.png",
              "usage": "Corps de texte",
              "color": "#9baad6",
              "colorName": "gris-bleu",
              "hex": "#9baad6",
              "dark": false
            }
          ]
        },
        "SOLO": {
          "description": "Pictogrammes individuels divers"
        }
      }
    },

    "06_ELEMENTS": {
      "description": "Les 5 éléments (pancha mahabhuta)",
      "subfolders": {
        "feu": {"name": "Agni", "color": "#fd6f85"},
        "terre": {"name": "Prithvi", "color": "#c180ff"},
        "air": {"name": "Vayu", "color": "#4cd7f6"},
        "eau": {"name": "Jala", "color": "#4cd7f6"},
        "ether": {"name": "Akasha", "color": "#dee5ff"}
      }
    },

    "07_SYMBOLES": {
      "description": "Symboles divers et icônes"
    },

    "99_ARCHIVE": {
      "description": "Fichiers obsolètes, backups et anciennes versions"
    }
  },

  "emailTemplates": {
    "celestialOracle": {
      "colors": {
        "background": "#060e20",
        "card": "#081329",
        "cardBorder": "#142449",
        "textPrimary": "#dee5ff",
        "textSecondary": "#9baad6",
        "accentViolet": "#c180ff",
        "accentCyan": "#4cd7f6",
        "accentGold": "#ffd16f",
        "accentCoral": "#fd6f85"
      },
      "typography": {
        "serif": "Noto Serif",
        "sans": "Manrope"
      }
    }
  },

  "designSystem": {
    "celestialMinimalist": {
      "style": "Sculptures en pierre blanche",
      "lighting": "Éclairage dramatique",
      "background": "Transparent",
      "suffix": "-nobg.png"
    },
    "renaissance": {
      "style": "Classique renaissance",
      "background": "Fond texturé"
    }
  }
}
EOF

echo ""
echo "✅ ASSET-CATALOG.json créé !"
echo "📄 Emplacement: $CATALOG_FILE"
echo ""
echo "📊 Résumé du catalogue:"
echo "  • 7 planètes occidentales"
echo "  • 27 nakshatras"
echo "  • 12 rashis"
echo "  • 9 grahas"
echo "  • 22 cartes tarot + 22 renversées"
echo "  • 9 chiffres numérologie"
echo "  • 6 pictos CARDS"
echo ""
echo "🔗 Prochaine étape: Synchroniser avec GitHub"
