# Hyperframes Cheatsheet - CLI + Data Attributes

## CLI Commands (oficial)

| Comando | Uso |
|---|---|
| `npx hyperframes init my-video` | Cria projeto novo |
| `npx hyperframes init my-video --example warm-grain` | Template visual |
| `npx hyperframes init my-video --video source.mp4` | Importa vídeo + captions auto |
| `npx hyperframes capture https://example.com` | Captura site como material |
| `npx hyperframes preview` | Studio live (timeline + design panel) |
| `npx hyperframes lint` | Erros estruturais |
| `npx hyperframes check` | Headless Chrome, runtime errors + overflow |
| `npx hyperframes snapshot --at 1,3,5 --out out/stills` | PNG checks timestamps exatos |
| `npx hyperframes render --output final.mp4` | Render final |
| `npx hyperframes render --output final.mp4 --fps 60 --quality high` | High quality |
| `npx hyperframes render --output overlay.webm --format webm` | Com alpha |
| `npx hyperframes publish` | Upload + URL shareable + cloud render |
| `npx hyperframes doctor` | Checa Node, FFmpeg, Chrome, Docker |
| `npx hyperframes docs` | Docs locais |
| `npx hyperframes upgrade` | Versão nova |

## Timing Cheatsheet

| Atributo | Significado editor |
|---|---|
| `data-composition-id` | ID único (key para window.__timelines) |
| `data-width` / `data-height` | Resolução output |
| `data-duration` | Duração total (root) ou do clip |
| `data-start` | Quando layer começa |
| `data-duration` (clip) | Quanto tempo layer fica ativo |
| `data-track-index` | Track number (z-order) |
| `data-media-start` | Offset dentro mídia (trim front) |
| `data-volume` | Volume 0-1 audio/video |
| `data-composition-src` | Cena aninhada / overlay reutilizável |
| `data-composition-variables` | JSON variáveis parametrizáveis (override cloud) |
| `class="clip"` | Obrigatório para layer com timing |

## GSAP Pattern Obrigatório

```js
window.__timelines = window.__timelines || {};
const tl = gsap.timeline({ paused: true });
tl.from(".title", { x:-40, opacity:0, duration:0.5, ease:"power3.out" }, 0.25);
window.__timelines["my-comp-id"] = tl;
```

- Sempre `paused:true`
- Um timeline por composition
- Timeline length >= data-duration, mas duração vem de data-duration, não de tl.set sentinel

## Cloud API

```bash
zip -r project.zip compositions/ assets/ hyperframes.json
curl -X POST "https://api.heygen.com/v3/assets" -H "x-api-key: $KEY" -F file=@project.zip # → asset_id
curl -X POST "https://api.heygen.com/v3/hyperframes/renders" -H "x-api-key: $KEY" -H "Content-Type: application/json" -d '{
  "project":{"type":"asset_id","asset_id":"ID"},
  "fps":30,"quality":"standard","format":"mp4","resolution":"1080p","aspect_ratio":"16:9",
  "composition":"index.html",
  "variables":{"headline":"Q2 Revenue"}
}' # → render_id
curl -GET "https://api.heygen.com/v3/hyperframes/renders/{id}" -H "x-api-key: $KEY" # poll até completed → video_url presigned
```

## Mínimo HTML

```html
<!DOCTYPE html><html><head><style>body{margin:0;width:1920px;height:1080px;overflow:hidden}</style>
<script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
</head><body>
<div id="root" data-composition-id="demo" data-width="1920" data-height="1080" data-duration="5">
  <div class="clip" data-start="0" data-duration="5" data-track-index="1" id="scene1"><h1>HTML is Video</h1></div>
</div>
<script>
window.__timelines={};
const tl=gsap.timeline({paused:true});
tl.from("#scene1 h1",{y:20,opacity:0,duration:0.5},0.2);
window.__timelines["demo"]=tl;
</script></body></html>
```
