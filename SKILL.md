# hyperframes-studio-pro - Motion Graphics & Video Editing MEGA Skill

---
name: hyperframes-studio-pro
description: Professional motion graphics and video editing skill using HeyGen Hyperframes. Creates and EDITS launch videos, Shorts, Reels, TikTok, explainer high-energy, explainer default, educational/tutorials, B-roll synced to transcript, object separation, sound-effects. Edits existing videos/compositions with NLE verbs (trim, move, retime, swap, restack, level, split, change copy, adjust keyframe). Works with any agent (Claude Code, Codex, Cursor, Gemini CLI). Supports raw material bruto.mov → skill workflow via natural language.
---

> **MEGA SKILL** que une:
> - `cskwork/motion-graphics-skill` (launch + shorts + beat sheet + QA)
> - `JakeB-5/motion-graphic-skill` (canvas single-file + sound synthesis + mobile player + verification + critique loop)
> - `Barty-Bart/motion-graphics` (motion-broll + object-separation + explainer-high-energy + explainer-default + sound-effects licensing)
> - `heygen-com/hyperframes` (official engine: data-* + GSAP paused + CLI + cloud)
> - **NEW: teaching video skill** - transforma `bruto.mov` em skill via linguagem natural (ex: "editar vídeo", "abrir timeline", "mexer em keyframe") + workflow Gmail/Sheets/Calendar → relatório

**Um vídeo = uma pasta Hyperframes = HTML puro + GSAP + assets. Render determinístico. Barra de motion designer sênior.**

## 0. Pre-requisitos & Instalação Universal

```bash
node -v # >=22
ffmpeg -version
npx hyperframes doctor # checa Chrome, ffmpeg, deps

# Instala skill oficial base
npx skills add heygen-com/hyperframes

# Esta mega skill
npx skills add ./hyperframes-studio-pro
# Ou manual:
# Claude Code: ~/.claude/skills/hyperframes-studio-pro/
# Codex: ~/.codex/skills/hyperframes-studio-pro/ + .codex-plugin/
# Cursor: ~/.cursor/skills/ + .cursor-plugin/
# Gemini: via skills folder
```

**Compatibilidade:** Qualquer agente que lê SKILL.md. Testado com Claude Code, Codex, Cursor, Gemini CLI.

## 1. Escolha o Formato (Router)

| Pedido do usuário | Formato | Arquivo |
|---|---|---|
| Launch, promo, comercial, feature reel, app trailer com app REAL capturado | Launch Video 30s 1920x1080 60fps | `formats/launch-video.md` |
| Shorts, Reels, TikTok, vertical explainer, loopable | Shorts 20-30s 1080x1920 | `formats/shorts.md` |
| Hype promo 12-20s, beat-locked kinetic type, transições shape | Explainer High-Energy | `formats/explainer-high-energy.md` |
| Clean product demo 45-90s, UI rebuildada filmada de perto | Explainer Default | `formats/explainer-default.md` |
| **EDITAR vídeo/composição existente** - trim, move, retime, swap, restack, level, split | Edit Existing | `formats/edit-existing.md` |
| B-roll que segue transcrição palavra a palavra | Motion B-roll | `formats/broll.md` |
| Separar pessoa/produto/mão do background no vídeo, local | Object Separation | `formats/object-separation.md` |
| Adicionar sound effects, checar licença, gerar CREDITS.txt | Sound Effects | `formats/sound-effects.md` |
| **Tutorial / Ensino** - explicar workflow GitHub→App Store, Gmail→resposta, Planilha→relatório, etc. Estilo do vídeo de ensino (dot grid, icons, App Store mock) | Educational / Tutorial | `formats/educational.md` |
| **Transformar bruto.mov em skill via linguagem natural** - workflow do vídeo de ensino | Raw to Skill | `formats/raw-to-skill.md` |

**Leia o arquivo de formato correspondente + `references/pitfalls.md` + `references/hyperframes-cheatsheet.md` ANTES de codar.**

**Conceito fresco toda run.** Cada vídeo tem ideia, roteiro e look próprios. Se usuário disser para não olhar trabalhos passados, não abra composições antigas.

## 2. Work Folder - Estrutura Profissional Hyperframes

```bash
# Novo projeto do zero ou de template
npx hyperframes init <slug>-<YYYYMMDD> --example warm-grain
# Com vídeo existente (gera captions auto)
npx hyperframes init <slug>-<YYYYMMDD> --video source.mp4
# Com captura de site
npx hyperframes capture https://yourapp.com --out assets/capture

cd <slug>-<YYYYMMDD>
```

Estrutura padrão MEGA:

```
brief.md                      # parâmetros do brief table do formato
beats.md                      # beat sheet: time | copy | asset | move | transition | sound | source
brand.json                    # opcional: {fonts, colors, spacing, logo}
assets/
  manifest.md                 # file | source | license | what it shows (OBRIGATÓRIO)
  screen-01.mp4               # capturas reais
  grain.png
  logo.svg
  track.mp3
  bruto.mov                   # raw material (para raw-to-skill)
compositions/
  index.html                  # composition principal
  scene-02.html               # cenas aninhadas via data-composition-src
  overlay-captions.html       # overlay reutilizável
hyperframes.json              # config do projeto
out/
  stills/                     # snapshots QA
  video.mp4                   # render final
  video-edit-01.mp4           # iterações de edit
  CREDITS.txt                 # licenças de som/música
  contact-sheet.jpg
  review_log.md               # log de critique (JakeB)
scripts/                      # opcional, cópia de ../scripts
```

**Para EDITAR projeto existente:** não faça `init`. Vá direto para pasta, `ls compositions/*.html`, `npx hyperframes lint`, `npx hyperframes preview`.

## 3. Compose - Motor Hyperframes (Regras de Ouro)

### 3.1 Atributos obrigatórios

**Root:**
```html
<div id="root"
  data-composition-id="launch-v1"
  data-width="1920" data-height="1080"
  data-duration="30"
  data-composition-variables='{"headline":"Ship faster","theme":"dark"}'>
```

**Clips:**
```html
<div class="clip" data-start="0" data-duration="2.5" data-track-index="1" id="scene1">...</div>
<div class="clip" data-start="2.5" data-duration="3" data-track-index="1" id="scene2">
  <video src="../assets/screen-01.mp4" data-media-start="0" data-volume="1"></video>
</div>
```

**Mídia com trim:**
- Front trim (pular começo): `data-media-start="1"`
- Volume: `data-volume="0.3"`
- Imagem swap: só trocar `src`

### 3.2 GSAP - Sempre paused + registrado

```js
window.__timelines = window.__timelines || {};
const tl = gsap.timeline({ paused: true });

// Entrada
tl.from("#scene1 .title", { x:-40, opacity:0, duration:0.6, ease:"power3.out" }, 0.2);
tl.from("#scene1 .sub", { y:15, opacity:0, duration:0.4, ease:"power2.out" }, 0.5);

// Transição blur crossfade (padrão high-end)
tl.to("#scene1", { filter:"blur(8px)", scale:1.03, opacity:0, duration:0.35, ease:"power2.inOut" }, 2.2);
tl.fromTo("#scene2", 
  { filter:"blur(8px)", scale:0.97, opacity:0 },
  { filter:"blur(0px)", scale:1, opacity:1, duration:0.35, ease:"power2.inOut" },
  2.28
);

// Progress bar
tl.to("#progress", { width:"100%", duration:12, ease:"none" }, 0);

window.__timelines["launch-v1"] = tl; // key = data-composition-id
```

**Proibido:** `Date`, `performance.now()`, `requestAnimationFrame`, `Math.random` na lógica de render. Use `data-composition-variables` ou seed fixo.

### 3.3 Stack permitido (oficial Hyperframes)

- CSS animations/transitions (simples)
- GSAP (coreografia)
- SVG, Canvas, Three.js, D3.js, Lottie
- Web fonts (Google Fonts ou local)
- `<video>`, `<audio>`, `<img>` dentro de clips

### 3.4 Beat Sheet → Código

Preencha `beats.md` antes:

| t | copy | asset | move | transition | sound | source |
|---|---|---|---|---|---|---|
| 0.0-2.5 | "Launch videos, written as code" | logo | x:-40→0 spring | - | whoosh | - |
| 2.5-5.0 | "One install" | terminal | typing | blur 0.35s | hit | - |

Cada linha = um `clip` + tweens.

## 4. Edit Mode - Edição Profissional NLE (Diferencial desta MEGA skill)

**Dois hábitos obrigatórios (do docs oficial Hyperframes):**
1. **Uma coisa por render**
2. **Valor absoluto** - "duration = 3s" não "um pouco mais curto"

### Mapa completo Verbo → Atributo

| Você diz | Verbo NLE | Edita | Prompt que LANDA em 1 pass |
|---|---|---|---|
| "começa cena 2 mais tarde" | Move | `data-start` | `Move scene 2 to start at 6.0s` |
| "legenda por cima" | Restack | `data-track-index` + `z-index` | `Put captions on track 5 so they sit on top` |
| "termina logo antes" | Trim right | `data-duration` | `Trim intro so it ends at 0:03. intro duration=3s` |
| "pula primeiro segundo" | Trim front (só mídia) | `data-media-start` | `Skip first second: data-media-start=1` |
| "cena 2 com 2s" | Retime | `data-duration` + GSAP + root | `Make scene 2 two seconds long. duration=2s` |
| "áudio alto" | Level | `data-volume` | `Audio bed volume=0.3` |
| "troca música/imagem/logo" | Swap | `src` | `Replace music with assets/track.mp3` / `Swap hero for assets/product-v2.png keep animation` |
| "muda título para ..." | Change copy | innerText | `Change headline to "Ship faster." - exact text` |
| "entrada viajando menos" | Adjust keyframe | GSAP value | `Title entrance travel 40px not 200` |
| "arco ao invés de diagonal" | Motion path | GSAP motionPath bezier | `Give item an arc, curviness 1.5` |
| "mais snappy/punchy/dreamy" | Feel | ease + duration | `Make scene 2 snappier — power4.out, quicker` |
| "divide cena" | Split | 1 clip → 2 clips | `Split scene 2 at 0:04 so I can drop transition` |
| "abrir timeline / mexer em keyframe" | Timeline edit | Design Panel + GSAP | `Open timeline, adjust keyframe at 2.5s: x 0→40` |

### Exemplos bons vs ruins

- ❌ `tighten up the opening` → vago
- ✅ `intro clip duration = 3s; leave its animation and position alone` → freeze clause evita drift

- ❌ `use the new logo`
- ✅ `swap the logo for assets/logo-2025.svg`

- ❌ `update title to say something about speed`
- ✅ `title copy: "Ship faster."` → aspas = verbatim

- ❌ `stretch scene 2`
- ✅ `scene 2 duration = 4s, same motion, add extra as hold at end` (hold)
- ✅ `scene 2 duration = 4s, retime tweens to spread across 4s` (slow)

### Duração root

Root governa total. Clip mais longo nunca renderiza além do root. Se aumentar cena final, aumente root também.

### Design Panel Clipboard

No Studio, selecione elemento → ícone clipboard → copia JSON com id, posição, tamanho, animação. Cole no prompt para contexto espacial exato.

## 5. Craft Bar - Barra de Motion Designer Sênior (de cskwork)

- **Frame 0 já em movimento.** Nada de fade from black.
- Algo significativo muda a cada 0.8–2s: layout, scale, cor, número, câmera.
- Entradas com springs ou `power3.out`/`power4.out` com overshoot leve; stagger 30–60ms; linear só para tickers.
- Motion blur só durante moves rápidos; slow push (scale 1→1.04) em held shots; parallax em 2-3 layers.
- Uma família de background, uma cor de texto, um accent. Grain 0.06 para não bandar após upload.
- Copy fica tempo suficiente para ler 2x; texto chave dentro de safe zones (Shorts: top 10%, bottom 15%, sides 5%).
- Beats batem no som: whoosh, hit, beat da música em cada mudança.
- **Loopable para Shorts:** último frame = primeiro frame. Cheque com `snapshot --at 0,23.99`.
- **Captura real:** só UI capturada de app rodando (iOS Sim, Android emulator, web, macOS) ou `npx hyperframes capture`. Nunca invente telas. Manifest obrigatório.

## 6. Workflows Específicos (de Barty-Bart + JakeB + Teaching Video)

### 6.1 Launch Video (30s 1920x1080)

Beat: Hook (0-2.5) → Promise (2.5-5.5) → Feature 1 (5.5-10) → Feature 2 (10-15) → Feature 3 + Montage (15-22) → Lockup + CTA (22-30). Algo muda a cada 0.8-2s.

### 6.2 Shorts (20-30s 1080x1920)

Hook em 0.3s, uma ideia por beat, safe zones, loop. Último frame = primeiro.

### 6.3 Explainer High-Energy (12-20s hype)

Beat-locked kinetic type, shape transitions, `power4.out`, hard cuts, whoosh seq. Uso: produto hype.

### 6.4 Explainer Default (45-90s clean demo)

UI rebuildada e filmada de perto enquanto é usada. Clean, slow push, parallax.

### 6.5 Motion B-roll (transcript → B-roll)

Input: `source.mp4` + `transcript.srt/.vtt/.txt` + `brand.json` opcional.
`npx hyperframes init broll --video source.mp4` (já transcreve áudio).
Para cada keyword, cria clip com `data-start`=timestamp palavra, `data-duration`=duração palavra+0.3s hold.
Chain: `generate-motion-graphic` → `add-animated-overlay` → `sync-captions`.
Batch: múltiplos speakers, múltiplos vídeos, múltiplos estilos caption em um comando.

### 6.6 Object Separation

Separar pessoa/produto/mão do background, local, no seu computador. Input vídeo → output com alpha (webm/mov com transparência). Uso: `format=webm` ou `mov` no render para overlay.

### 6.7 Sound Effects + Licensing

Antes do export final, pergunte onde será publicado. Verifique licença de cada som (Freesound CC0, Kenney, Mixkit). Gere `CREDITS.txt` pronto para YouTube/IG/TikTok. Flags: música até licença confirmada, conflitos de uso (ex: Mixkit music em TV/game não permitido). Flags: `--music-source`, `--music-license`, `--use-case`.

### 6.8 Educational / Tutorial (NEW - do vídeo de ensino)

**Estilo visual do vídeo de ensino analisado:**
- Background: dot grid #E8E8E6 com dots #D0D0D0 a cada 40px
- Cards: branco #FFFFFF, border-radius 16-20px, shadow 0 8px 32px rgba(0,0,0,0.08)
- Icons: App Store style, 80x80, rounded 20px, com label embaixo bold
- Cores: azul #3B82F6 para setas e CTAs, preto #0E1116 para texto, cinza #8C8F96 para secundário
- Tipografia: Inter 900 para títulos, 400 para corpo, mono para labels azuis "↓ EM LINGUAGEM NATURAL"
- Animações: scale 0.9→1 back.out(1.7), x slide 40px power3.out, stagger 80ms, blur crossfade 0.35s
- Layout: App Store mockup 800x500, browser mockup com dots, chat bubbles com "VOCÊ" e seta azul

**Estrutura narrativa (7min video):**
1. Hook: "editar vídeo" com player mock
2. "EM LINGUAGEM NATURAL" - chat input "você"
3. "O CLAUDE CONSTRÓI" - HTML5 icon
4. "NUMA OPERAÇÃO COM IA" - steps 1,2,3
5. "material bruto" - bruto.mov card
6. "O AGENTE TRABALHA COM" - Gmail, Sheets, Calendar icons + prompts naturais:
   - "Olha meus e-mails de hoje e separa tudo que precisa de resposta."
   - "Pega as vendas dessa planilha, cria um relatório e coloca no Drive."
   - "Analisa minhas reuniões da semana e prepara os docum..."
7. "HF + skills" - PASTA bruto.mov → SKILL
8. "abrir timeline / mexer em keyframe" - pills brancas
9. Demo GitHub → App Store → Claude Code flow
10. "Finalizar pedido / Comprar" - app novo mock

**Como usar para criar tutorial seu:**
- Defina workflow: ex: GitHub → App Store, ou Gmail → Resposta, ou Planilha → Relatório
- Crie icons para cada ferramenta (Gmail M vermelho, Sheets verde, Calendar azul 31, GitHub octocat, etc.)
- Use App Store mockup ou browser mockup para mostrar UI
- Chat bubbles com "VOCÊ" + prompt em linguagem natural + botão azul ↑
- Labels azuis em mono caps: "↓ EM LINGUAGEM NATURAL", "↓ O CLAUDE CONSTRÓI", etc.
- Pills para ações: "abrir timeline", "mexer em keyframe"
- Transições: blur + scale, arrow draw (path animation)

Template em `templates/educational-template.html`.

### 6.9 Raw to Skill (Workflow do vídeo de ensino)

**Objetivo:** transformar `bruto.mov` (ou qualquer material bruto) em skill editável via linguagem natural.

```bash
# 1. Pasta com bruto
mkdir meu-curso && cd meu-curso
cp ~/bruto.mov assets/bruto.mov

# 2. Init com vídeo (gera captions)
npx hyperframes init . --video assets/bruto.mov

# 3. Cria skill wrapper
# HF + skills: PASTA bruto.mov → SKILL
# Escreva compositions/index.html que explica o workflow

# 4. Prompts naturais que viram edits:
# "abrir timeline" → npx hyperframes preview
# "mexer em keyframe" → edita GSAP tween
# "Olha meus e-mails..." → integra Gmail API → gera B-roll
```

**Fluxo completo ensinado no vídeo:**
- Input: `bruto.mov` + pasta + skills
- Processo: agente trabalha com Gmail/Sheets/Calendar/Drive via linguagem natural
- Output: SKILL que edita vídeo + relatório + e-mails separados + etc.
- UI: chat bubbles "VOCÊ" + prompts + icons

## 7. Preview, QA, Render, Verify, Critique

```bash
npx hyperframes lint                    # erros estruturais
npx hyperframes check                   # headless Chrome, runtime errors + overflow
npx hyperframes preview                 # Studio live: timeline + design panel
npx hyperframes snapshot --at 0.4,3.2,6.8 --out out/stills # stills por beat

# QA manual obrigatório (cskwork bar):
# - 1 still por beat
# - 1 still dentro de cada tween
# - 1 still no pico overshoot spring
# - safe zones, contraste, legibilidade 2x
# - grain, loop check (Shorts)

# Render
npx hyperframes render --output out/video.mp4 --fps 60 --quality high
# Shorts: 1080x1920
npx hyperframes render --output out/shorts.mp4 --fps 60
# Com alpha para overlay
npx hyperframes render --output out/overlay.webm --format webm

# Verify (JakeB)
# ffprobe: playable, last packet within 0.5s of duration, not truncated
# Só move .part.mp4 → final após verify

# Critique loop (JakeB)
# reviewer separado com fresh context score film
# defect table com file-and-time evidence
# FAIL caps axes at 6, 8+ must name evidence
# max 3 rounds, unresolved em review_log.md

# Publish cloud
npx hyperframes publish
```

**Áudio & Licença:** Antes export final, pergunte onde será publicado. Cheque licença. Gere `CREDITS.txt`.

## 8. Cloud Rendering API

```bash
zip -r project.zip compositions/ assets/ hyperframes.json
curl -X POST "https://api.heygen.com/v3/assets" -H "x-api-key: $KEY" -F file=@project.zip # → asset_id
curl -X POST "https://api.heygen.com/v3/hyperframes/renders" -H "x-api-key: $KEY" -H "Content-Type: application/json" -d '{
  "project":{"type":"asset_id","asset_id":"ID"},
  "fps":30,"quality":"standard","format":"mp4","resolution":"1080p","aspect_ratio":"16:9",
  "composition":"index.html",
  "variables":{"headline":"Q2 Revenue"}
}' # → render_id
curl -GET "https://api.heygen.com/v3/hyperframes/renders/{id}" -H "x-api-key: $KEY" # poll até completed → video_url (presigned, baixe rápido)
```

## 9. Anti-padrões (Pitfalls)

- Não use `Math.random`, `Date.now()` na composition
- Não use `tl.set({}, {}, <sec>)` sentinel para duração. Use `data-duration`.
- Não root duration < último clip
- Não invente UI. Capture real + manifest
- Não 5 edits por vez. 1 por render
- Não "um pouco mais curto" / "logo novo". Use "duration=3s" / "swap for assets/logo.svg"
- Não reescreva vídeo inteiro para 1 asset swap
- Não esqueça grain (banda), loop check, safe zones, CREDITS.txt

## 10. Entrega

- `out/video.mp4` H.264 (ou webm/mov com alpha)
- `out/stills/` + contact sheet
- `assets/manifest.md` + `CREDITS.txt`
- `brief.md` + `beats.md` + `brand.json` para reprodutibilidade
- `review_log.md` se usou critique loop
- Sempre espere render terminar antes de reportar. Timeout = duração vídeo + 120s.

## 11. Templates & Scripts

- `templates/launch-template.html` - launch 1920x1080
- `templates/shorts-template.html` - shorts 1080x1920 loopable
- `templates/educational-template.html` - tutorial dot grid + App Store mock (estilo vídeo ensino)
- `templates/broll-template.html` - B-roll synced
- `scripts/init.sh`, `render.sh`, `capture.sh`, `broll.sh`, `publish.sh`

## 12. Exemplos de prompts que funcionam (para qualquer agente)

```
# Criação
"Make a launch video for our app from iOS simulator, 30s, 1920x1080, blur crossfade"
"Make a YouTube Short explaining compound interest, 24s, 1080x1920, loopable, hook in 0.3s"
"Make a high-energy 15s hype promo for product X, beat-locked, kinetic type"
"Make a 60s clean product demo, UI rebuilt close-up while used"
"Make an educational video explaining GitHub → App Store → Claude Code workflow, dot grid style, App Store mockup, chat bubbles 'VOCÊ'"

# Edição (valor absoluto, 1 por vez)
"Trim intro so it ends at 0:03. intro clip duration=3s; leave animation alone"
"Swap logo for assets/logo-2025.svg and keep animation"
"title copy: 'Ship faster.' - exact text, keep styling"
"Move lower third to start at 6.0s"
"scene 2 duration=4s, same motion, add extra as hold at end"
"Audio bed volume=0.3"
"Split scene 2 at 0:04 so I can drop transition"
"Make scene 2 snappier — power4.out, quicker entrances, harder cuts"
"The title slides in from too far — change entrance to travel 40px not 200"

# B-roll
"Given source.mp4 and transcript.srt, make B-roll timed to words, brand.json style"

# Raw to Skill (do vídeo ensino)
"Transform bruto.mov into a skill: pasta bruto.mov → skill, agent works with Gmail, natural language 'Olha meus e-mails de hoje e separa tudo que precisa de resposta', abrir timeline, mexer em keyframe"

# Natural language (do vídeo ensino)
"Olha meus e-mails de hoje e separa tudo que precisa de resposta."
"Pega as vendas dessa planilha, cria um relatório e coloca no Drive."
"Analisa minhas reuniões da semana e prepara os documentos."
"editar vídeo em linguagem natural"
```

## 13. Créditos & Licença

Baseado em:
- cskwork/motion-graphics-skill (MIT)
- JakeB-5/motion-graphic-skill (MIT)
- Barty-Bart/motion-graphics (MIT) - inclui MUSIC.md 12 tracks Mixkit
- heygen-com/hyperframes (Apache 2.0) - official
- Teaching video: estilo dot grid + App Store mock + chat bubbles (transformado em educational format)

Esta MEGA skill é Apache 2.0 + MIT compat. Sons: Freesound CC0, Kenney, Mixkit (checar licença no momento do uso).

---

**Para usar:** `/hyperframes <seu pedido>` ou diga ao agente "use hyperframes-studio-pro skill".

**Tamanho:** gigante e profissional, como pedido. Sem atalhos.
