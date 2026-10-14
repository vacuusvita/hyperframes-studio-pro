# Motion B-roll Format - Transcript → B-roll Sincronizado

> De Barty-Bart/motion-broll

## Input

- `source.mp4` ou pasta com vídeo
- `transcript.srt` / `.vtt` / `.txt` com timestamps ou raw text
- `brand.json` opcional: {fonts, colors, spacing}

## Workflow

1. Importa vídeo: `npx hyperframes init broll-<date> --video source.mp4` (já gera captions do áudio)
2. Parse transcript → beats por palavra
3. Para cada keyword, cria clip motion graphic (shape, icon, kinetic type)
4. Timeline: cada B-roll `data-start`=timestamp palavra, `data-duration`=duração palavra + 0.3s hold

## Template

```html
<div class="clip" data-start="2.34" data-duration="1.2" data-track-index="2" id="broll-revenue">
  <div class="card" style="background:#fff;padding:24px;border-radius:12px;font:700 48px Inter">$1.2M</div>
</div>
<script>
tl.from("#broll-revenue", {y:20, opacity:0, duration:0.3, ease:"power3.out"}, 2.34);
</script>
```

## Skills encadeadas (mindstudio.ai workflow)

- `generate-motion-graphic` → cria elemento
- `add-animated-overlay` → posiciona com timecode
- `sync-captions` → queima captions com estilo

Batch: múltiplos speaker labels, múltiplos vídeos, múltiplos estilos caption em um comando.

## Exemplo prompts

```
"Given source.mp4 and transcript.srt, make B-roll timed to words, brand.json style, highlight numbers"
"Add animated overlay for keyword 'revenue' at 2.34s, style brand.json"
"Sync captions from transcript, style bold white with black stroke, safe zones"
```

## QA

- [ ] B-roll start = timestamp palavra?
- [ ] Duração palavra + 0.3s hold?
- [ ] Não cobre rosto?
- [ ] Brand colors?
- [ ] Captions legíveis?
