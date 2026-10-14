# Edit Existing - Edição Profissional NLE via Hyperframes

> Formato principal da melhoria Hyperframes

## Quando usar

- Pasta com `compositions/` + `hyperframes.json` existente
- `source.mp4` flat que precisa cortar, retime, trocar asset, mudar copy
- Iterar em vídeo já renderizado: "mais rápido", "troca logo", "corta intro", "abrir timeline", "mexer em keyframe"

## Workflow

### 1. Descoberta

```bash
ls -la # hyperframes.json, compositions/
npx hyperframes lint
npx hyperframes check
npx hyperframes preview # Studio timeline real
```

Se vídeo flat:

```bash
npx hyperframes init edit-<date> --video source.mp4
# cria projeto com vídeo como clip + captions auto
cd edit-<date>
```

### 2. Mapear pedido → verbo NLE (references/edit-verbs.md)

| Pedido | Verbo | Atributo |
|---|---|---|
| "começa mais tarde" | Move | data-start |
| "termina antes" | Trim right | data-duration |
| "pula começo" | Trim front | data-media-start |
| "mais longo/curto" | Retime | data-duration + GSAP + root |
| "por cima/baixo" | Restack | data-track-index + z-index |
| "mais baixo/alto volume" | Level | data-volume |
| "troca X por Y" | Swap | src |
| "muda texto para ..." | Change copy | innerText |
| "entrada mais curta" | Adjust keyframe | GSAP tween value |
| "mais snappy" | Feel | ease + duration |
| "abrir timeline / mexer keyframe" | Timeline edit | Studio + GSAP |

### 3. Prompts que LANDAM em 1 pass (oficial docs)

**Dois hábitos:**
1. Uma coisa por render
2. Valor absoluto

✅ `intro clip duration = 3s; leave its animation and position alone`
✅ `swap the logo for assets/logo-2025.svg and keep its animation`
✅ `title copy: "Ship faster." - exact text, keep styling`
✅ `Move lower third to start at 6.0s`
✅ `scene 2 duration = 4s, same motion, add extra as hold at end`
✅ `audio bed volume = 0.3`
✅ `Split scene 2 at 0:04 so I can drop transition between halves`
✅ `Title entrance travel 40px not 200`
✅ `Make scene 2 snappier — power4.out, quicker entrances, harder cuts`

❌ `tighten up the opening`
❌ `use the new logo`
❌ `stretch scene 2`
❌ `update title to say something about speed`

### 4. Edits complexos

**Split:** 1 clip → 2 adjacentes com start/duration ajustados. Studio ainda não tem split nativo, mas editar HTML direto funciona.

**Retime hold vs slow:**
- Hold: `scene 2 duration = 4s, same motion, add extra as hold at end`
- Slow: `scene 2 duration = 4s, retime tweens to spread across 4s`

**Restack:** `The captions are rendering behind the video — put them on track 5 so they sit on top.` → `data-track-index="5"` + `z-index:5`

**Arc motion:** `Give add-to-cart item an arc, curviness 1.5` → GSAP motionPath bezier

**Swap path absoluto:** Sempre nomeie path completo.

**Timeline / Keyframe (do vídeo ensino):**
- "abrir timeline" → `npx hyperframes preview`
- "mexer em keyframe" → edita GSAP tween no arquivo, ex: `tl.from("#title", {x:-40})` muda para `x:-20` ou ajusta timing `0.25` → `0.4`

### 5. Fluxo iterativo

```bash
# 1. Edita compositions/index.html (1 atributo)
# 2. Lint + check
npx hyperframes lint
npx hyperframes check
# 3. Snapshot ponto editado
npx hyperframes snapshot --at 3,6 --out out/stills
# 4. Preview
npx hyperframes preview
# 5. Render
npx hyperframes render --output out/video-edit-01.mp4
# 6. Repete
```

### 6. Root duration

Se aumenta duração cena final, aumente root:

```html
<div data-composition-id="main" data-duration="32"> <!-- era 30 -->
  <div class="clip" data-start="28" data-duration="4"> <!-- era 2s -->
```

Se não, vídeo corta antes mesmo com GSAP longo.

### 7. Design Panel Clipboard

No Studio, elemento → clipboard icon → copia JSON id, posição, tamanho, animação. Cole no prompt para contexto espacial exato.

## Checklist

- [ ] Lint verde?
- [ ] Check verde?
- [ ] Snapshot confere?
- [ ] 1 atributo mudado?
- [ ] Valor absoluto?
- [ ] Root duration cobre último clip?
