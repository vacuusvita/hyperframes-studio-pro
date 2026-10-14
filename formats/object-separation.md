# Object Separation Format - Pessoa/Produto/Mão do Background

> De Barty-Bart/object-separation

## Objetivo

Separar pessoa, produto ou mão do background em vídeo, no seu computador, local. Output com alpha para overlay.

## Input

- `source.mp4` com pessoa/produto/mão
- Modelo local (ex: rembg, segment anything, etc.)

## Workflow

```bash
# 1. Separação local (exemplo com rembg ou similar)
python scripts/separate.py --input assets/source.mp4 --output assets/separated/

# 2. Cria composição Hyperframes com alpha
npx hyperframes init separation-<date>

# 3. Em compositions/index.html, use video com alpha
# Para alpha, renderize como webm ou mov
```

## Template

```html
<div id="root" data-composition-id="separation" data-width="1920" data-height="1080" data-duration="10">
  <div class="clip" data-start="0" data-duration="10" data-track-index="1" id="bg">
    <video src="../assets/background.mp4" style="width:100%;height:100%"></video>
  </div>
  <div class="clip" data-start="0" data-duration="10" data-track-index="2" id="foreground">
    <video src="../assets/separated/foreground.webm" style="width:100%;height:100%"></video>
  </div>
</div>
```

## Render com Alpha

```bash
npx hyperframes render --output out/foreground.webm --format webm
npx hyperframes render --output out/foreground.mov --format mov
# webm e mov carregam canal alpha para overlay transparente
```

## Uso

- Produto sobre background custom
- Pessoa sobre background motion graphic
- Mão interagindo com UI

## QA

- [ ] Separação limpa sem borda?
- [ ] Alpha preservado?
- [ ] Render webm/mov com alpha?
- [ ] Tracking estável?
