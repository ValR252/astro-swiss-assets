#!/bin/bash
# Batch generation of 48 Vedic pictos with 30s delays

SCRIPT="/app/skills/nano-banana-pro/scripts/generate_image_pollinations.py"
OUTDIR="/home/node/.openclaw/workspace/Shanti/RESSOURCES_VISUELLES/DONE"

echo "🍌 Démarrage génération 48 assets védiques Picto"
echo "Début: $(date)"
echo ""

# RASHIS (12)
vedic_mesha="Elegant hand-drawn line art illustration of a ram head Aries viewed from front-quarter angle with curved spiral horns, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Expressive eyes, noble bearing. Clean silhouette. No gradients, no shading, no fill. Pure line work only. 4K resolution."

vedic_vrishabha="Elegant hand-drawn line art illustration of a bull head Taurus viewed from front-quarter angle, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Powerful muscular neck, curved horns, expressive eyes. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_mithuna="Elegant hand-drawn line art illustration of Gemini twins two graceful faces in profile facing each other mirror image, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Identical features, harmonious symmetry. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_karka="Elegant hand-drawn line art illustration of a crab Cancer viewed from above with pincers spread wide, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Detailed carapace segments, curved pincers. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_simha="Elegant hand-drawn line art illustration of a lion head Leo viewed from front-quarter angle with majestic mane, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Flowing mane, regal bearing, expressive eyes. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_kanya="Elegant hand-drawn line art illustration of Virgo a graceful young woman holding a wheat sheaf, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Flowing robes, serene expression, detailed wheat ears. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_tula="Elegant hand-drawn line art illustration of Libra scales two balanced pans suspended from central beam, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Perfect symmetry, delicate chains, balanced weights. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_vrishchika="Elegant hand-drawn line art illustration of Scorpio viewed from above with tail raised in curve, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Segmented body, curved tail with stinger, eight legs spread. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_dhanus="Elegant hand-drawn line art illustration of Sagittarius bow with arrow drawn taut ready to shoot, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Curved bow limb, straight arrow, dynamic tension. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_makara="Elegant hand-drawn line art illustration of Makara Capricorn mythical sea-goat creature with goat head and fish tail, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Curved horns, scaled fish tail curling upward. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_kumbha="Elegant hand-drawn line art illustration of Aquarius sacred water vase pouring streams downward, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Ornate vase shape, flowing water streams, decorative base. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_meena="Elegant hand-drawn line art illustration of Pisces two fish swimming in circular pattern chasing each other tail to head, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Flowing fins, curved bodies forming circle. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

# NAKSHATRAS (27)
vedic_ashvini="Elegant hand-drawn line art illustration of horse head Ashvini nakshatra viewed from front-quarter angle, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Flowing mane, alert ears, noble expression. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_bharani="Elegant hand-drawn line art illustration of Bharani nakshatra sacred yoni triangle shape with downward point, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Sacred feminine symbol, elegant curves. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_krittika="Elegant hand-drawn line art illustration of Krittika nakshatra flame or razor blade shape rising upward, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Sharp pointed form, elegant taper. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_rohini="Elegant hand-drawn line art illustration of Rohini nakshatra ox-drawn chariot cart with two wheels, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Spoked wheels, curved yoke, simple elegant form. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_mrigashira="Elegant hand-drawn line art illustration of Mrigashira nakshatra deer head with gentle antlers viewed from side profile, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Alert ears, delicate features, branching antlers. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_ardra="Elegant hand-drawn line art illustration of Ardra nakshatra teardrop or raindrop shape with point downward, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Elegant curved form suggesting water. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_punarvasu="Elegant hand-drawn line art illustration of Punarvasu nakshatra quiver holding arrows bundle, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Vertical container with arrow fletchings visible at top. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_pushya="Elegant hand-drawn line art illustration of Pushya nakshatra lotus flower bloom with multiple petals, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Layered petals radiating from center, elegant symmetry. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_ashlesha="Elegant hand-drawn line art illustration of Ashlesha nakshatra coiled serpent snake in spiral form, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Curved snake body, raised head with forked tongue. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_magha="Elegant hand-drawn line art illustration of Magha nakshatra royal throne with lion head on backrest, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Ornate throne legs, majestic lion face. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_purva_phalguni="Elegant hand-drawn line art illustration of Purva Phalguni nakshatra hammock or swing bed with curved supports, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Draped fabric, curved wooden frame. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_uttara_phalguni="Elegant hand-drawn line art illustration of Uttara Phalguni nakshatra two pillars with crossbeam forming gateway, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Vertical columns, horizontal lintel, sacred entrance. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_hasta="Elegant hand-drawn line art illustration of Hasta nakshatra open human hand with five fingers spread palm facing viewer, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Detailed finger joints, elegant palm lines. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_chitra="Elegant hand-drawn line art illustration of Chitra nakshatra shining pearl or brilliant jewel with radiating light, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Round gem with sparkle rays emanating outward. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_svati="Elegant hand-drawn line art illustration of Svati nakshatra young sprout or seedling with leaves bending in wind, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Curved stem, delicate leaves suggesting movement. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_vishakha="Elegant hand-drawn line art illustration of Vishakha nakshatra forked branch or triumphal arch with two diverging paths, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Y-shaped form, elegant branching. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_anuradha="Elegant hand-drawn line art illustration of Anuradha nakshatra fully bloomed lotus flower with open petals, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Wide open bloom, layered petals radiating. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_jyeshtha="Elegant hand-drawn line art illustration of Jyeshtha nakshatra circular earring or talisman pendant with decorative border, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Ornate circular frame, central motif, hanging loop. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_mula="Elegant hand-drawn line art illustration of Mula nakshatra tangled roots or root cluster bundle, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Intertwined root threads, organic messy form. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_purva_ashadha="Elegant hand-drawn line art illustration of Purva Ashadha nakshatra elephant tusk or curved fan shape, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Curved ivory form, elegant taper. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_uttara_ashadha="Elegant hand-drawn line art illustration of Uttara Ashadha nakshatra elephant tusk or small curved horn, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Graceful curved form, smooth surface. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_shravana="Elegant hand-drawn line art illustration of Shravana nakshatra ear with sound waves radiating outward three curved lines, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Human ear profile with concentric sound waves. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_dhanishta="Elegant hand-drawn line art illustration of Dhanishta nakshatra mridanga drum hourglass shape with decorative bands, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Waisted drum form, patterned straps. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_shatabhisha="Elegant hand-drawn line art illustration of Shatabhisha nakshatra empty circle or hundred flowers symbol, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Perfect circle with decorative border. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_purva_bhadrapada="Elegant hand-drawn line art illustration of Purva Bhadrapada nakshatra double-edged sword vertical with pointed tip, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Straight blade, crossguard, ornate hilt. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_uttara_bhadrapada="Elegant hand-drawn line art illustration of Uttara Bhadrapada nakshatra serpent in water or funeral bed with curved supports, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Coiled snake or bed frame with draped fabric. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_revati="Elegant hand-drawn line art illustration of Revati nakshatra drum with fish tail or percussion instrument, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Round drum body with fish tail flowing downward. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

# GRAHAS (9)
vedic_surya="Elegant hand-drawn line art illustration of Surya Sun divine solar disc with radiating flames and pointed rays, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Central circle with flame tongues radiating outward. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_candra="Elegant hand-drawn line art illustration of Chandra Moon elegant crescent shape with curved inner edge, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Graceful crescent form, smooth curves. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_mangala="Elegant hand-drawn line art illustration of Mangala Mars warrior spear or crossed swords, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Vertical spear with blade tip or two crossed blades. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_budha="Elegant hand-drawn line art illustration of Budha Mercury caduceus staff with two intertwined serpents and wings, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Central staff with spiral snakes, winged top. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_guru="Elegant hand-drawn line art illustration of Guru Jupiter scepter or mace with ornate top, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Vertical staff with decorative finial, elegant proportions. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_shukra="Elegant hand-drawn line art illustration of Shukra Venus lotus flower with dewdrop in center, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Open lotus bloom with central pearl or drop. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_shani="Elegant hand-drawn line art illustration of Shani Saturn crow perched atop vertical staff or scepter, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Bird silhouette on staff, elegant proportions. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_rahu="Elegant hand-drawn line art illustration of Rahu north node dragon head serpent head with gaping mouth, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Snake head profile with open jaws, fangs visible. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

vedic_ketu="Elegant hand-drawn line art illustration of Ketu south node comet tail or descending flame, artisanal craftsmanship with organic flowing lines. Single warm golden color #FFD16F on pure black background. Bold confident outlines with subtle ink-like texture. Pointed top with flowing tail downward. Clean silhouette. No gradients, no shading. Pure line work only. 4K resolution."

# Generate function
generate() {
    local name="$1"
    local prompt="$2"
    local output="$OUTDIR/${name}-picto.png"
    
    echo "[$i/48] Generating: $name"
    uv run "$SCRIPT" --prompt "$prompt" --filename "$output"
    echo "✅ Done: $output"
    echo ""
}

# Counter
i=1

# RASHIS
echo "=== RASHIS (12) ==="
generate "vedic-mesha" "$vedic_mesha"; sleep 30; ((i++))
generate "vedic-vrishabha" "$vedic_vrishabha"; sleep 30; ((i++))
generate "vedic-mithuna" "$vedic_mithuna"; sleep 30; ((i++))
generate "vedic-karka" "$vedic_karka"; sleep 30; ((i++))
generate "vedic-simha" "$vedic_simha"; sleep 30; ((i++))
generate "vedic-kanya" "$vedic_kanya"; sleep 30; ((i++))
generate "vedic-tula" "$vedic_tula"; sleep 30; ((i++))
generate "vedic-vrishchika" "$vedic_vrishchika"; sleep 30; ((i++))
generate "vedic-dhanus" "$vedic_dhanus"; sleep 30; ((i++))
generate "vedic-makara" "$vedic_makara"; sleep 30; ((i++))
generate "vedic-kumbha" "$vedic_kumbha"; sleep 30; ((i++))
generate "vedic-meena" "$vedic_meena"; sleep 30; ((i++))

# NAKSHATRAS
echo "=== NAKSHATRAS (27) ==="
generate "vedic-ashvini" "$vedic_ashvini"; sleep 30; ((i++))
generate "vedic-bharani" "$vedic_bharani"; sleep 30; ((i++))
generate "vedic-krittika" "$vedic_krittika"; sleep 30; ((i++))
generate "vedic-rohini" "$vedic_rohini"; sleep 30; ((i++))
generate "vedic-mrigashira" "$vedic_mrigashira"; sleep 30; ((i++))
generate "vedic-ardra" "$vedic_ardra"; sleep 30; ((i++))
generate "vedic-punarvasu" "$vedic_punarvasu"; sleep 30; ((i++))
generate "vedic-pushya" "$vedic_pushya"; sleep 30; ((i++))
generate "vedic-ashlesha" "$vedic_ashlesha"; sleep 30; ((i++))
generate "vedic-magha" "$vedic_magha"; sleep 30; ((i++))
generate "vedic-purva-phalguni" "$vedic_purva_phalguni"; sleep 30; ((i++))
generate "vedic-uttara-phalguni" "$vedic_uttara_phalguni"; sleep 30; ((i++))
generate "vedic-hasta" "$vedic_hasta"; sleep 30; ((i++))
generate "vedic-chitra" "$vedic_chitra"; sleep 30; ((i++))
generate "vedic-svati" "$vedic_svati"; sleep 30; ((i++))
generate "vedic-vishakha" "$vedic_vishakha"; sleep 30; ((i++))
generate "vedic-anuradha" "$vedic_anuradha"; sleep 30; ((i++))
generate "vedic-jyeshtha" "$vedic_jyeshtha"; sleep 30; ((i++))
generate "vedic-mula" "$vedic_mula"; sleep 30; ((i++))
generate "vedic-purva-ashadha" "$vedic_purva_ashadha"; sleep 30; ((i++))
generate "vedic-uttara-ashadha" "$vedic_uttara_ashadha"; sleep 30; ((i++))
generate "vedic-shravana" "$vedic_shravana"; sleep 30; ((i++))
generate "vedic-dhanishta" "$vedic_dhanishta"; sleep 30; ((i++))
generate "vedic-shatabhisha" "$vedic_shatabhisha"; sleep 30; ((i++))
generate "vedic-purva-bhadrapada" "$vedic_purva_bhadrapada"; sleep 30; ((i++))
generate "vedic-uttara-bhadrapada" "$vedic_uttara_bhadrapada"; sleep 30; ((i++))
generate "vedic-revati" "$vedic_revati"; sleep 30; ((i++))

# GRAHAS
echo "=== GRAHAS (9) ==="
generate "vedic-surya" "$vedic_surya"; sleep 30; ((i++))
generate "vedic-candra" "$vedic_candra"; sleep 30; ((i++))
generate "vedic-mangala" "$vedic_mangala"; sleep 30; ((i++))
generate "vedic-budha" "$vedic_budha"; sleep 30; ((i++))
generate "vedic-guru" "$vedic_guru"; sleep 30; ((i++))
generate "vedic-shukra" "$vedic_shukra"; sleep 30; ((i++))
generate "vedic-shani" "$vedic_shani"; sleep 30; ((i++))
generate "vedic-rahu" "$vedic_rahu"; sleep 30; ((i++))
generate "vedic-ketu" "$vedic_ketu"

echo ""
echo "🎉 TERMINE ! 48 assets générés"
echo "Fin: $(date)"
