# hyperframes-studio-pro - MEGA Skill Profissional

> **Skill GIGANTE que une 4 skills + vídeo de ensino em uma só, para editar vídeos via Hyperframes com qualquer agent.**

## O que une

| Skill original | O que traz |
|---|---|
| `cskwork/motion-graphics-skill` | Launch video 30s 1920x1080, Shorts 1080x1920, beat sheet, craft bar senior, QA stills, engine determinístico |
| `JakeB-5/motion-graphic-skill` | Canvas single-file, sound synthesis, mobile player, verification ffprobe, critique loop com reviewer separado, review_log.md |
| `Barty-Bart/motion-graphics` | motion-broll (transcript→B-roll), object-separation (pessoa/produto/mão com alpha webm/mov), explainer-high-energy 12-20s hype, explainer-default 45-90s clean demo, sound-effects + licenciamento + CREDITS.txt + MUSIC.md |
| `heygen-com/hyperframes` | Engine oficial: data-* attributes, GSAP paused + window.__timelines, CLI init/preview/lint/check/snapshot/render/publish/doctor, cloud API asset_id→render_id→video_url, Studio timeline + design panel |
| **Vídeo de ensino (bruto.mov 7min)** | Estilo dot grid + App Store mock + chat bubbles "VOCÊ" + labels azuis mono + pills + workflow GitHub→App Store→Claude Code, material bruto→skill, Gmail/Sheets/Calendar prompts naturais, abrir timeline/mexer keyframe |

## Instalação Universal (qualquer agent)

```bash
# Pré-req Node 22+, ffmpeg
npx hyperframes doctor

# Oficial base
npx skills add heygen-com/hyperframes

# Esta mega skill
npx skills add ./hyperframes-studio-pro

# Manual
# Claude Code: ~/.claude/skills/hyperframes-studio-pro/
# Codex: ~/.codex/skills/ + .codex-plugin/
# Cursor: ~/.cursor/skills/ + .cursor-plugin/
# Copie a pasta para skills folder do seu agent
```

## Uso Rápido

### Criar

```bash
/hyperframes Make a launch video for our app from iOS simulator, 30s, 1920x1080, blur crossfade
/hyperframes Make a YouTube Short explaining compound interest, 24s, 1080x1920, loopable, hook 0.3s
/hyperframes Make a 15s hype promo, beat-locked kinetic type
/hyperframes Make a 60s clean product demo, UI rebuilt close-up
/hyperframes Make an educational video explaining GitHub → App Store → Claude Code workflow, dot grid style, App Store mockup, chat bubbles VOCÊ
```

### Editar (NOVO - diferencial)

```bash
/hyperframes Edit compositions/index.html: trim intro so it ends at 3s, intro duration=3s
/hyperframes Swap logo for assets/logo-2025.svg keep animation
/hyperframes Title copy: "Ship faster." - exact text
/hyperframes Move lower third to start at 6.0s
/hyperframes Make scene 2 snappier — power4.out, quicker entrances
/hyperframes Split scene 2 at 0:04 so I can drop transition
/hyperframes abrir timeline, mexer em keyframe: title entrance travel 40px not 200
```

**Regras edição:** valor absoluto + 1 coisa por render + freeze clause

### B-roll + Raw to Skill (do vídeo ensino)

```bash
/hyperframes Given source.mp4 and transcript.srt, make B-roll timed to words
/hyperframes Transform bruto.mov into a skill: pasta bruto.mov → skill, agent works with Gmail, natural language "Olha meus e-mails..."
```

### Prompts naturais (do vídeo ensino)

```
"Olha meus e-mails de hoje e separa tudo que precisa de resposta."
"Pega as vendas dessa planilha, cria um relatório e coloca no Drive."
"Analisa minhas reuniões da semana e prepara os documentos."
"editar vídeo em linguagem natural"
"abrir timeline"
"mexer em keyframe"
```

## Estrutura Projeto

```
meu-video-20251014/
  brief.md
  beats.md
  brand.json
  assets/
    manifest.md
    screen-01.mp4
    bruto.mov
  compositions/
    index.html (data-composition-id, data-width, data-height, clips com data-start/duration/track-index)
  hyperframes.json
  out/
    stills/
    video.mp4
    CREDITS.txt
    review_log.md
```

## CLI Cheatsheet

```bash
npx hyperframes init my-video --example warm-grain
npx hyperframes init my-video --video source.mp4 # captions auto
npx hyperframes capture https://example.com
npx hyperframes preview # Studio live
npx hyperframes lint
npx hyperframes check
npx hyperframes snapshot --at 1,3,5 --out out/stills
npx hyperframes render --output out/video.mp4 --fps 60 --quality high
npx hyperframes render --output out/overlay.webm --format webm # com alpha
npx hyperframes publish # cloud + URL
npx hyperframes doctor
```

## Templates

- `templates/launch-template.html` - 1920x1080 launch
- `templates/shorts-template.html` - 1080x1920 loopable
- `templates/educational-template.html` - dot grid + App Store mock + chat bubbles (estilo vídeo ensino, 90s completo)
- `templates/raw-to-skill-template.html` - bruto.mov → skill

## Referências

- `references/hyperframes-cheatsheet.md` - CLI + data attributes
- `references/edit-verbs.md` - NLE verbs mapa completo
- `references/pitfalls.md` - anti-padrões
- `references/beat-sheet-template.md` - template beats.md
- `references/craft-bar.md` - barra motion designer senior
- `references/licensing.md` - sons + CREDITS.txt + MUSIC.md
- `references/verification.md` - verify + critique loop
- `references/gsap-recipes.md` - receitas GSAP prontas

## Formatos

- `formats/launch-video.md`
- `formats/shorts.md`
- `formats/explainer-high-energy.md`
- `formats/explainer-default.md`
- `formats/edit-existing.md`
- `formats/broll.md`
- `formats/object-separation.md`
- `formats/sound-effects.md`
- `formats/educational.md` (NOVO - do vídeo ensino)
- `formats/raw-to-skill.md` (NOVO - bruto.mov → skill)

## Craft Bar

- Frame 0 já em movimento
- Mudança a cada 0.8-2s (launch) ou 0.5-0.8s (high-energy)
- Springs / power3.out / power4.out + overshoot, stagger 30-60ms
- Motion blur só fast moves, slow push 1→1.04, parallax 2-3 layers
- Uma família bg, uma cor texto, um accent + grain 0.06
- Copy legível 2x, safe zones (Shorts top 10% bottom 15%)
- Beats no som
- Real captures + manifest + CREDITS.txt
- Stills + contact sheet + loop check

## Cloud Rendering

```bash
zip -r project.zip compositions/ assets/ hyperframes.json
curl -X POST https://api.heygen.com/v3/assets -H x-api-key:$KEY -F file=@project.zip # asset_id
curl -X POST https://api.heygen.com/v3/hyperframes/renders -H x-api-key:$KEY -d '{"project":{"type":"asset_id","asset_id":"ID"},"fps":30,"format":"mp4"}' # render_id
curl -GET https://api.heygen.com/v3/hyperframes/renders/{id} -H x-api-key:$KEY # poll → video_url
```

## Créditos

- cskwork, JakeB-5, Barty-Bart, heygen-com (licenças MIT + Apache 2.0)
- Vídeo ensino: transformado em educational + raw-to-skill formats
- Esta MEGA skill: Apache 2.0 + MIT compat

**Tamanho:** gigante e profissional, como pedido. Sem atalhos.
