# Edit Verbs - NLE → Hyperframes

| Você diz | Verbo | Edita | Prompt bom |
|---|---|---|---|
| "começa cena 2 mais tarde" | Move | data-start | Move scene 2 to start at 6.0s |
| "legenda por cima" | Restack | data-track-index + z-index | Put captions on track 5 so they sit on top |
| "termina logo antes" | Trim right | data-duration | Trim intro so it ends at 0:03. intro duration=3s |
| "pula primeiro segundo" | Trim front (mídia) | data-media-start | Skip first second: data-media-start=1 |
| "cena 2 com 2s" | Retime | data-duration + GSAP + root | Make scene 2 two seconds long. duration=2s |
| "áudio alto" | Level | data-volume | Audio bed volume=0.3 |
| "troca música/imagem/logo" | Swap | src | Replace music with assets/track.mp3 / Swap hero for assets/product-v2.png keep animation |
| "muda título para ..." | Change copy | innerText | Change headline to "Ship faster." - exact text |
| "entrada viajando menos" | Adjust keyframe | GSAP value | Title entrance travel 40px not 200 |
| "arco ao invés de diagonal" | Motion path | motionPath bezier | Give item an arc, curviness 1.5 |
| "mais snappy/punchy/dreamy" | Feel | ease + duration | Make scene 2 snappier — power4.out, quicker |
| "divide cena" | Split | 1→2 clips | Split scene 2 at 0:04 so I can drop transition |
| "abrir timeline / mexer keyframe" | Timeline edit | Studio + GSAP | Open timeline, adjust keyframe at 2.5s: x 0→40 |

## Hábitos

1. Uma coisa por render
2. Valor absoluto

## Bons vs ruins

- ❌ tighten up the opening → ✅ intro clip duration=3s; leave animation alone
- ❌ use new logo → ✅ swap for assets/logo-2025.svg
- ❌ update title about speed → ✅ title copy: "Ship faster."
- ❌ stretch scene 2 → ✅ scene 2 duration=4s, same motion, add extra as hold at end

## Root duration

Root governa total. Se aumenta cena final, aumente root.

## Design Panel Clipboard

Elemento → clipboard icon → copia JSON id, posição, tamanho, animação. Cole no prompt.

## Feel → Ease

| Palavra | Ease | Duração |
|---|---|---|
| snappy, punchy | power4.out, back.out | 0.3-0.4s |
| smooth, dreamy | power2.inOut, sine.inOut | 0.8-1.2s |
| bouncy | elastic.out, back.out(1.7) | 0.5s + overshoot |
| hard cut | 0.1s ou sem ease | - |
