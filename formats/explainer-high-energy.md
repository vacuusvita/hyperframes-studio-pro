# Explainer High-Energy - 12-20s Hype Promo

> De Barty-Bart/motion-graphics explainer-high-energy

## Brief

| Campo | Valor |
|---|---|
| Length | 12-20s |
| Frame | 1920x1080 ou 1080x1920 |
| Style | Beat-locked kinetic type + shape transitions, power4.out, hard cuts |
| Use | Hype promo qualquer produto |
| Audio | Upbeat, whoosh a cada 0.8s, hit no final |

## Beat 15s

| t | copy | visual | move | sound |
|---|---|---|---|---|
| 0-1.5 | Hook punchy | Logo big + scale | scale 0.7→1 back.out(1.7) + blur | hit |
| 1.5-4 | Feature 1 | Kinetic type slide | x -60→0 power4.out, stagger 30ms | whoosh |
| 4-7 | Feature 2 | Shape morph circle→square | morph + rotate 15deg | whoosh |
| 7-10 | Feature 3 | Number counter 0→720 | counter + scale punch | tick rapid |
| 10-13 | Montage | 4 clips 0.75s cada | hard cut + scale 1.1→1 | whoosh seq |
| 13-15 | CTA | Wordmark + CTA | overshoot + grain | final hit |

## GSAP Recipes High-Energy

```js
// Punch
tl.from(el, {scale:0.7, opacity:0, duration:0.35, ease:"back.out(1.7)"})
// Slide snappy
tl.from(el, {x:-60, opacity:0, duration:0.3, ease:"power4.out"})
// Stagger kinetic type
tl.from(".word", {y:20, opacity:0, duration:0.25, stagger:0.03, ease:"power3.out"})
// Shape transition
tl.to("#shape", {borderRadius:"50%", scale:1.2, rotation:180, duration:0.4, ease:"power2.inOut"})
// Hard cut = no ease, 0.1s
```

## Template

Use `templates/launch-template.html` mas com durações curtas, eases punchy, e mais cortes.

## QA

- [ ] Algo muda a cada 0.5-0.8s (mais rápido que launch)?
- [ ] Eases power4.out / back.out?
- [ ] Beats no som?
- [ ] Sem slow push, só hard cuts e punch?
