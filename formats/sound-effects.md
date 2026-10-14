# Sound Effects Format - Licença + CREDITS.txt

> De Barty-Bart/sound-effects

## Objetivo

Adicionar sound effects, música de fundo, checar licença, gerar CREDITS.txt pronto para YouTube/IG/TikTok.

## Workflow

### 0. Pergunte onde será publicado

Antes do export final, pergunte: "Onde o vídeo será publicado? YouTube, Instagram, TikTok, TV, game?"

### 1. Cheque licença de cada som usado

Tabela verificada em 13 Oct 2026:

| Fonte | O que permite | O que NÃO permite |
|---|---|---|
| Freesound CC0 | Tudo, sem atribuição | - |
| Kenney | Tudo, sem atribuição | - |
| Mixkit Free License (sounds) | YouTube, IG, TikTok, comercial | - |
| Mixkit Free License (music) | YouTube, IG, TikTok, comercial | TV, game, app pago sem checar |

**Sempre abra página de licença atual e confirme termos não mudaram.**

### 2. Adicione sons

```html
<div class="clip" data-start="0" data-duration="30" data-track-index="0" id="bg-music">
  <audio src="../assets/music/upbeat-corporate.mp3" data-volume="0.3"></audio>
</div>
<div class="clip" data-start="2.2" data-duration="0.5" data-track-index="0" id="sfx-whoosh">
  <audio src="../assets/sfx/whoosh.wav" data-volume="0.8"></audio>
</div>
```

Atributos:
- `data-volume` 0-1
- `data-start` / `data-duration` para timing
- `data-media-start` para pular começo do áudio

### 3. Gere CREDITS.txt

Formato:

```
CREDITS - video.mp4
Published on: YouTube, Instagram, TikTok (2026-10-14)

Music:
- "Upbeat Corporate" by Mixkit - https://mixkit.co/free-stock-music/ - Mixkit Free License - used as background bed 0-30s

Sound Effects:
- "Whoosh" by Kenney - https://kenney.nl/ - CC0 - transition at 2.2s, 6.0s, 9.5s
- "Hit" by Freesound CC0 - https://freesound.org/ - CC0 - at 5.5s, 22s

Licenses checked on 2026-10-14, all allowed for YouTube/IG/TikTok.
No known conflicts.
```

Flags:
- `--music-source`, `--music-license`, `--use-case`

### 4. Música sugerida (MUSIC.md - 12 tracks Mixkit por feel, download runtime, nunca commit no repo)

Exemplos:
- Upbeat corporate
- Dreamy ambient
- Punchy hype
- Calm minimal
- etc.

## CLI

```bash
# Encontra mais sons
# Sempre checar licença e use case primeiro
```

## QA

- [ ] Perguntou onde será publicado?
- [ ] Abriu página de licença atual e confirmou?
- [ ] CREDITS.txt gerado paste-ready?
- [ ] Flagou sons sem licença conhecida?
- [ ] Flagou música até licença confirmada?
- [ ] Flagou conflitos (Mixkit music em TV/game)?
- [ ] Volume ajustado (bed 0.2-0.3, sfx 0.7-0.9)?
- [ ] Beats no som?
