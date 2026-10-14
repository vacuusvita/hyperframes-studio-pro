# Launch Video Format - 30s 1920x1080 Keynote Style

## Brief table (brief.md)

| Campo | Valor |
|---|---|
| Surface | iOS Simulator / Android emulator / web / macOS / `npx hyperframes capture https://...` |
| Length | 30s default (15s, 45s, 60s escalável) |
| Frame | 1920x1080 @60fps; square 1080x1080 ou vertical 1080x1920 on request |
| Source | Só UI capturada. `npx hyperframes capture` para web, screenrecord sim |
| Look | Extraído do ícone, color tokens, type do app. brand.json opcional |
| Audio | Mixkit / Freesound CC0, checar licença, gerar CREDITS.txt |

## Beat Structure 30s

| # | Time | Função | Copy | Asset | Move | Transição | Som |
|---|---|---|---|---|---|---|---|
| 1 | 0.0-2.5 | Hook | "Launch videos, written as code." | logo + gradient | title x:-40→0 spring power3.out | - | whoosh |
| 2 | 2.5-5.5 | Promise | "One install." | terminal npx command | typing | blur crossfade 0.35s | hit |
| 3 | 5.5-10 | Feature 1 | "Every frame is a function of t." | screen capture 1 + code | spring | slide | tick |
| 4 | 10-15 | Feature 2 | "Rendered frame by frame." | screen capture 2 | scale 1→1.04 slow push + parallax | blur | - |
| 5 | 15-22 | Feature 3 + Montage | "720 screenshots make one video" | 3-4 captures rápidas | stagger 50ms | hard cut 0.8s | whoosh seq |
| 6 | 22-30 | Lockup + CTA | "motion-graphics / npx skills add..." | wordmark + install cmd | overshoot | fade to grain | final hit + tail |

Regra: algo muda a cada 0.8-2s.

## Capture

```bash
npx hyperframes capture https://yourapp.com --out assets/capture-web
# iOS: Cmd+R no Simulator, save assets/
# Android: adb screenrecord
# manifest:
# screen-01.mp4 | captured from iOS Simulator iPhone 15 Pro / app 2.1 | onboarding flow | CC0
```

## Template

```html
<!DOCTYPE html><html><head><meta charset="utf-8">
<style>body{margin:0;width:1920px;height:1080px;overflow:hidden;background:#0D1B2A} #root{position:relative;width:1920px;height:1080px;overflow:hidden;background:#0D1B2A} .clip{position:absolute;inset:0} .title{font:900 84px/1 Inter;color:#fff} .grain{position:absolute;inset:0;opacity:0.06}</style>
<script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
</head><body>
<div id="root" data-composition-id="launch-v1" data-width="1920" data-height="1080" data-duration="30">
  <div class="clip" data-start="0" data-duration="2.5" data-track-index="1" id="scene1"><h1 class="title">Launch videos,<br>written as code.</h1></div>
  <div class="clip" data-start="2.5" data-duration="3" data-track-index="1" id="scene2"><video src="../assets/screen-01.mp4" style="width:100%;height:100%;object-fit:cover"></video></div>
  <div class="clip grain" data-start="0" data-duration="30" data-track-index="10"></div>
</div>
<script>
window.__timelines={};
const tl=gsap.timeline({paused:true});
tl.from("#scene1 .title",{x:-40,opacity:0,duration:0.6,ease:"power3.out"},0.2);
tl.to("#scene1",{filter:"blur(8px)",scale:1.03,opacity:0,duration:0.35},2.2);
tl.fromTo("#scene2",{filter:"blur(8px)",scale:0.97,opacity:0},{filter:"blur(0px)",scale:1,opacity:1,duration:0.35},2.28);
window.__timelines["launch-v1"]=tl;
</script></body></html>
```

## QA Checklist

- [ ] Frame 0 já em movimento?
- [ ] Captura real? manifest.md?
- [ ] Copy legível 2x safe zones?
- [ ] Grain?
- [ ] Som em cada beat?
- [ ] Stills out/stills/ conferidos?
