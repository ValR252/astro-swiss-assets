#!/bin/bash
# restructure-assets.sh - Déplace les fichiers vers la nouvelle architecture
# À exécuter depuis /home/node/.openclaw/workspace/Shanti/RESSOURCES_VISUELLES

set -e

echo "🧹 RESTRUCTURATION DES ASSETS"
echo "=============================="
echo ""

# 1. BACKUP
echo "📦 Étape 1: Création du backup..."
BACKUP_DIR="99_ARCHIVE/backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$BACKUP_DIR"
rsync -av --exclude="99_ARCHIVE" --exclude=".DS_Store" . "$BACKUP_DIR/" >/dev/null 2>&1 || cp -r . "$BACKUP_DIR/"
echo "✅ Backup créé: $BACKUP_DIR"
echo ""

# 2. DÉPLACEMENT DES PLANÈTES
echo "🪐 Étape 2: Déplacement des planètes..."
if [ -f "planetes/soleil-nobg.png" ]; then
    cp planetes/*-nobg.png 01_ASTRO_OCCIDENTAL/planetes/ 2>/dev/null || true
    echo "  ✓ Planètes déplacées"
fi
echo ""

# 3. NAKSHATRAS
echo "🌟 Étape 3: Organisation nakshatras..."
if [ -d "nakshatras" ]; then
    cp nakshatras/*.png 02_ASTRO_VEDIQUE/nakshatras/ 2>/dev/null || true
    echo "  ✓ Nakshatras copiés"
fi
if [ -d "NAKSHATRAS" ]; then
    cp NAKSHATRAS/*.png 02_ASTRO_VEDIQUE/nakshatras/ 2>/dev/null || true
    echo "  ✓ NAKSHATRAS copiés"
fi
echo ""

# 4. RASHIS / SIGNES
echo "♈ Étape 4: Organisation rashis..."
if [ -d "RASHIS" ]; then
    cp RASHIS/*.png 02_ASTRO_VEDIQUE/rashis/ 2>/dev/null || true
    echo "  ✓ Rashis copiés"
fi
echo ""

# 5. GRAHAS
echo "🪐 Étape 5: Organisation grahas..."
if [ -d "GRAHAS" ]; then
    cp GRAHAS/*.png 02_ASTRO_VEDIQUE/grahas/ 2>/dev/null || true
    echo "  ✓ Grahas copiés"
fi
echo ""

# 6. BHAVAS
echo "🏠 Étape 6: Organisation bhavas..."
if [ -d "BHAVAS" ]; then
    cp BHAVAS/*.png 02_ASTRO_VEDIQUE/bhavas/ 2>/dev/null || true
    echo "  ✓ Bhavas copiés"
fi
echo ""

# 7. TAROT
echo "🃏 Étape 7: Organisation tarot..."
if [ -d "TAROT" ]; then
    find TAROT -name "*.jpg" -o -name "*.png" | while read f; do
        if [[ "$f" == *"reversed"* ]] || [[ "$f" == *"renverse"* ]]; then
            cp "$f" 03_TAROT/reversed/ 2>/dev/null || true
        else
            cp "$f" 03_TAROT/cartes/ 2>/dev/null || true
        fi
    done
    echo "  ✓ Tarot organisé"
fi
echo ""

# 8. NUMÉROLOGIE
echo "🔢 Étape 8: Organisation numérologie..."
if [ -d "NUMEROLOGIE" ]; then
    find NUMEROLOGIE -name "*.png" -o -name "*.jpg" | while read f; do
        cp "$f" 04_NUMEROLOGIE/chiffres-1-9/ 2>/dev/null || true
    done
    echo "  ✓ Numérologie copiée"
fi
echo ""

# 9. PICTOS
echo "🎨 Étape 9: Organisation pictos..."
for dir in PICTOS_BASE pictogrammes assets/pictogrammes PICTOS; do
    if [ -d "$dir" ]; then
        find "$dir" -name "*.png" -o -name "*.svg" | while read f; do
            if [[ "$f" == *"CARD"* ]] || [[ "$f" =~ (ACTION|VIGIL|IDEA|DRIVE|AFFIRMATION|PARAGRAPHE) ]]; then
                cp "$f" 05_PICTOS/CARDS/ 2>/dev/null || true
            else
                cp "$f" 05_PICTOS/SOLO/ 2>/dev/null || true
            fi
        done
    fi
done
echo "  ✓ Pictos organisés"
echo ""

# 10. ÉLÉMENTS
echo "🔥 Étape 10: Organisation éléments..."
if [ -d "ELEMENTS" ]; then
    cp ELEMENTS/*feu* 06_ELEMENTS/feu/ 2>/dev/null || true
    cp ELEMENTS/*terre* 06_ELEMENTS/terre/ 2>/dev/null || true
    cp ELEMENTS/*air* 06_ELEMENTS/air/ 2>/dev/null || true
    cp ELEMENTS/*eau* 06_ELEMENTS/eau/ 2>/dev/null || true
    echo "  ✓ Éléments copiés"
fi
echo ""

# 11. SYMBOLES
echo "✨ Étape 11: Organisation symboles..."
if [ -d "SYMBOLES" ]; then
    cp SYMBOLES/* 07_SYMBOLES/ 2>/dev/null || true
    echo "  ✓ Symboles copiés"
fi
echo ""

# 12. NETTOYAGE DES DOUBLONS
echo "🧼 Étape 12: Analyse des doublons..."
echo "  (Manuel pour l'instant - voir 99_ARCHIVE/doublons-report.txt)"
find . -type f \( -name "*.png" -o -name "*.jpg" \) -exec md5sum {} \; 2>/dev/null | sort | uniq -d -w32 > 99_ARCHIVE/doublons-report.txt || true
echo "  ✓ Rapport des doublons créé"
echo ""

echo "=============================="
echo "✅ RESTRUCTURATION TERMINÉE !"
echo ""
echo "📊 Nouvelle structure:"
tree -L 2 -d 2>/dev/null || find . -maxdepth 2 -type d | sort
echo ""
echo "⚠️  Vérifier le contenu avant de supprimer les anciens dossiers !"
echo "📦 Backup disponible: $BACKUP_DIR"
