# Craft Bar - Barra de Motion Designer Sênior

> De cskwork/motion-graphics-skill, mantido e expandido

## Regras obrigatórias

1. **Frame 0 já está em movimento.** Nada de fade from black, logo intro estático.
2. **Algo significativo muda a cada 0.8–2s** (launch) ou 0.5–0.8s (high-energy): layout, scale, cor, número, câmera.
3. **Entradas com springs ou ease-out-expo com overshoot leve; stagger 30–60ms; linear só para tickers.**
   - Bons: power3.out, power4.out, back.out(1.7), elastic.out
   - Ruim: linear, power1
4. **Motion blur só durante fast moves; slow push (scale 1→1.04) em held shots; parallax 2–3 depth layers.**
5. **Uma família de background, uma cor de texto, um accent. Grain ou gradient noise para não bandar após upload.**
   - Grain: opacity 0.05-0.08, SVG noise ou png
6. **Copy fica tempo suficiente para ler 2x; texto chave dentro safe zones.**
   - Launch 1920x1080: 5% margin
   - Shorts 1080x1920: top 10%, bottom 15%, sides 5% (TikTok/IG UI)
7. **Beats batem no som: whoosh, hit, ou beat da música em cada mudança.**
8. **Loopable para Shorts: último frame = primeiro frame. Cheque snapshot --at 0,final.**
9. **Real captures, licensed sound, sourced facts. Só UI capturada de app rodando, nunca inventada. Manifest obrigatório.**
10. **Stills e contact sheet checados, depois render again.**
    - 1 still por beat
    - 1 still dentro de cada tween
    - 1 still no pico overshoot spring

## Eases recomendados

| Uso | Ease | Duração |
|---|---|---|
| Entrada título | power3.out | 0.5-0.6s |
| Entrada snappy/hype | power4.out, back.out(1.7) | 0.3-0.4s |
| Saída blur | power2.inOut | 0.35s |
| Smooth/dreamy | power2.inOut, sine.inOut | 0.8-1.2s |
| Bouncy/playful | elastic.out, back.out | 0.5s + overshoot |
| Ticker/linear | none / linear | - |
| Progress bar | none | duração total |

## Transições

- **Blur crossfade:** padrão high-end. to filter blur(8px) scale 1.03 opacity 0 dur 0.35 power2.inOut, fromTo blur(8px) scale 0.97 opacity 0 → blur(0) scale 1 opacity 1 dur 0.35
- **Hard cut:** 0.1s ou sem transição, para montagem rápida
- **Slide:** x ±40, y ±20
- **Scale punch:** 0.8→1 back.out

## Backgrounds

- **Dot grid (educational):** #F5F5F0 com radial-gradient #D0D0D0 1.5px a cada 40px
- **Gradient noise:** grain SVG + gradient sutil
- **Flat:** com grain para não bandar

## Texto

- **Kinetic type:** split por grapheme ou word (GSAP SplitText ou manual spans), stagger 30-60ms
- **Typewriter:** width 0→100% ou opacity stagger
- **Counter:** MG.fmt ou GSAP counter

## QA Checklist

- [ ] Frame 0 em movimento?
- [ ] Mudança a cada 0.8-2s?
- [ ] Springs/ease-out, não linear?
- [ ] Motion blur só fast moves?
- [ ] Slow push 1→1.04?
- [ ] Parallax 2-3 layers?
- [ ] Uma família bg, uma cor texto, um accent?
- [ ] Grain?
- [ ] Copy legível 2x?
- [ ] Safe zones?
- [ ] Som em cada beat?
- [ ] Real captures + manifest?
- [ ] Stills + contact sheet checados?
- [ ] Loop perfeito (se Shorts)?
