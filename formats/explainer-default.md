# Explainer Default - 45-90s Clean Product Demo

> De Barty-Bart/motion-graphics explainer-default

## Brief

| Campo | Valor |
|---|---|
| Length | 45-90s |
| Frame | 1920x1080 @60fps |
| Style | Clean, UI rebuildada e filmada de perto enquanto usada, slow push, parallax |
| Source | UI real capturada ou rebuildada em HTML fiel ao app |
| Audio | Calm corporate, whoosh sutil, hit suave |

## Beat 60s

| # | Time | Função | Copy | Asset | Move | Transition |
|---|---|---|---|---|---|---|
| 1 | 0-3 | Hook calm | "Meet X" | logo + tagline | fade + y 20→0 power3.out | - |
| 2 | 3-12 | Problem | "Old way..." | before UI | slow push 1→1.04 | blur 0.4s |
| 3 | 12-25 | Solution intro | "With X..." | after UI hero | parallax 2 layers | slide |
| 4 | 25-40 | Feature 1 deep | "Feature 1..." | UI close-up interaction | cursor move + click | - |
| 5 | 40-55 | Feature 2 deep | "Feature 2..." | UI interaction | same | - |
| 6 | 55-60 | CTA | "Try X" | wordmark + URL | overshoot leve | fade grain |

## Rebuild UI

Em vez de usar video capture, rebuild a UI do produto em HTML/CSS dentro do clip para controle total. Filme de perto (close-up) enquanto é usada.

```html
<div class="clip" data-start="25" data-duration="15" data-track-index="1" id="feature1">
  <div class="mock-ui" style="width:1200px;height:700px;background:#fff;border-radius:16px;box-shadow:0 20px 60px rgba(0,0,0,0.15)">
    <!-- rebuild fiel -->
  </div>
</div>
```

## GSAP Clean

```js
tl.from("#feature1 .mock-ui", {y:30, opacity:0, duration:0.6, ease:"power3.out"})
tl.to("#feature1 .mock-ui", {scale:1.04, duration:15, ease:"none"}, 25) // slow push
tl.from("#cursor", {x:-100, y:50, duration:1, ease:"power2.inOut"})
```

## QA

- [ ] UI rebuild fiel? Ou captura real?
- [ ] Slow push sutil?
- [ ] Parallax 2-3 layers?
- [ ] Copy legível 2x?
- [ ] Sem hype, clean?
