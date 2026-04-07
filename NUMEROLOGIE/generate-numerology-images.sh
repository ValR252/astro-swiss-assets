#!/bin/bash
# Script de génération des 9 images de numérologie
# À exécuter quand le quota Gemini sera réinitialisé

set -e

OUTPUT_DIR="/home/node/.openclaw/workspace/Shanti/RESSOURCES_VISUELLES/NUMEROLOGIE"
SKILL_SCRIPT="/app/skills/nano-banana-pro/scripts/generate_image.py"

echo "=== Génération des 9 images de numérologie ==="
echo "Dossier de sortie: $OUTPUT_DIR"
echo ""

# Vérifier que le dossier existe
mkdir -p "$OUTPUT_DIR"

# Image 1 - THE INITIATOR (Rouge)
echo "[1/9] Génération de numero-1-initiator.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '1' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '1' dominates 85% of the canvas as a vertical monolith with torch/flame detail rising from top, arrow motifs suggesting forward momentum, sharp decisive forms with clean geometries and dynamic relief. Pure white/gray marble with natural veining. Complete BLACK VOID background. INTENSE RED (#E74C3C) BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-1-initiator.png" --resolution 4K --aspect-ratio 1:1
sleep 10

# Image 2 - HARMONY (Bleu)
echo "[2/9] Génération de numero-2-harmony.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '2' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '2' dominates 85% of the canvas with graceful cyclical curves, two hands touching symbolizing connection, subtle wave/ripple motifs evoking water and balance, heart symbol integrated, delicate spirals with mirrored patterns. Pure white/gray marble with natural veining. Complete BLACK VOID background. INTENSE BLUE (#3498DB) BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-2-harmony.png" --resolution 4K --aspect-ratio 1:1
sleep 10

# Image 3 - EXPRESSION (Jaune)
echo "[3/9] Génération de numero-3-expression.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '3' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '3' dominates 85% of the canvas with three graceful ascending curves, musical note and artist's palette motifs symbolizing creativity, speech bubble and star burst details suggesting communication and joy, upward spiraling elements suggesting ascension and energy. Pure white/gray marble with natural veining. Complete BLACK VOID background. INTENSE YELLOW (#F39C12) BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-3-expression.png" --resolution 4K --aspect-ratio 1:1
sleep 10

# Image 4 - STRUCTURE (Gris/Terre)
echo "[4/9] Génération de numero-4-structure.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '4' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '4' dominates 85% of the canvas with strong geometric angular form, architectural elements like roof lines and solid base, roots or mountain range carved into base symbolizing deep foundation, grid and structural lines suggesting order and pragmatism, layered base with geological strata. Pure white/gray marble with natural veining and weathering. Complete BLACK VOID background. WARM EARTH-TONED/GRAY BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-4-structure.png" --resolution 4K --aspect-ratio 1:1
sleep 10

# Image 5 - FREEDOM (Turquoise)
echo "[5/9] Génération de numero-5-freedom.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '5' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '5' dominates 85% of the canvas with dynamic unpredictable curves, carved wings and flight elements symbolizing freedom, zigzag and lightning bolt motifs suggesting energy and change, compass rose or map details suggesting adventure, wind-swept patterns and whirlwind spirals. Pure white/gray marble with natural veining. Complete BLACK VOID background. INTENSE TURQUOISE (#16A085) BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-5-freedom.png" --resolution 4K --aspect-ratio 1:1
sleep 10

# Image 6 - LOVE (Rose/Corail)
echo "[6/9] Génération de numero-6-love.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '6' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '6' dominates 85% of the canvas with graceful protective nurturing curves, heart and hand-in-hand motifs symbolizing love, flower and rose details, nest elements and home-like features suggesting family sanctuary, angel wings or protective arc elements suggesting guardianship. Pure white/gray marble with natural veining. Complete BLACK VOID background. INTENSE WARM ROSE/CORAL (#E8A48F) BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-6-love.png" --resolution 4K --aspect-ratio 1:1
sleep 10

# Image 7 - INTROSPECTION (Indigo/Violet)
echo "[7/9] Génération de numero-7-introspection.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '7' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '7' dominates 85% of the canvas with introspective angular lines, carved crescent moon and star constellation motifs symbolizing spiritual seeking, labyrinth and spiral patterns suggesting inner journeys, ancient book or mystical key elements suggesting knowledge and secrets, angular geometry with recessed areas creating shadow-play and mystery. Pure white/gray marble with natural veining. Complete BLACK VOID background. INTENSE DEEP INDIGO/VIOLET (#4B0082) BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-7-introspection.png" --resolution 4K --aspect-ratio 1:1
sleep 10

# Image 8 - POWER (Violet royal/Or)
echo "[8/9] Génération de numero-8-power.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '8' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '8' dominates 85% of the canvas as an infinity loop, crown and royal scepter carved prominently symbolizing authority, lightning bolt and wheel motifs suggesting dynamic manifestation, tower or ascending ladder elements suggesting unlimited potential, symmetrical commanding presence with graceful imposing curves, royal insignia and infinite spirals. Pure white/gray marble with natural veining and polished sections. Complete BLACK VOID background. INTENSE ROYAL PURPLE/GOLD BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-8-power.png" --resolution 4K --aspect-ratio 1:1
sleep 10

# Image 9 - COMPLETION (Doré/Ambre)
echo "[9/9] Génération de numero-9-completion.png..."
uv run "$SKILL_SCRIPT" --prompt "A museum-quality sculptural interpretation of the numeral '9' rendered as a three-dimensional marble sculpture in Italian Renaissance style (Michelangelo, Bernini). The numeral '9' dominates 85% of the canvas with graceful cyclical transcendent curves, lotus and phoenix motifs symbolizing wisdom and rebirth, all-seeing eye or celestial orb suggesting universal vision, open hand gestures of blessing suggesting universal compassion, concentric circles and cosmic patterns, arching horizons. Pure white/gray marble with natural veining and luminous qualities. Complete BLACK VOID background. INTENSE GOLDEN/AMBER (#C9A961) BACK LIGHT ONLY creating dramatic rim lighting and silhouette separation. EXTREME MACRO DEPTH OF FIELD: tack-sharp foreground, rapid blur into black void. Strong chiaroscuro, theatrical museum lighting, photorealistic 4K stone texture." --filename "$OUTPUT_DIR/numero-9-completion.png" --resolution 4K --aspect-ratio 1:1

echo ""
echo "=== Génération terminée ==="
echo "Images sauvegardées dans: $OUTPUT_DIR"
ls -la "$OUTPUT_DIR"/*.png 2>/dev/null || echo "Vérifier les fichiers générés"
