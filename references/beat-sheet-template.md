# Beat Sheet Template

Copie para beats.md e preencha antes de codar.

## Template

| t | copy (verbatim) | asset | move | transition | sound | source | notes |
|---|---|---|---|---|---|---|---|
| 0.0-2.5 | "Hook" | logo + gradient | x:-40→0 spring | - | whoosh | - | frame 0 já em movimento |
| 2.5-5.0 | "Promise" | screen capture 1 | y 20→0 | blur 0.35s | hit | - | - |
| ... | ... | ... | ... | ... | ... | ... | ... |

## Colunas

- **t**: start-end em segundos, ex 0.0-2.5
- **copy**: texto exato na tela, com aspas se verbatim
- **asset**: file em assets/, ex screen-01.mp4, logo.svg
- **move**: animação GSAP, ex x:-40→0 power3.out, scale 0.8→1 back.out(1.7), y 20→0 stagger 40ms
- **transition**: blur crossfade 0.35s, hard cut, slide, etc.
- **sound**: whoosh, hit, tick, music bed
- **source**: fonte do dado/número (para Shorts facts)
- **notes**: safe zones, loop, etc.

## Exemplo Launch 30s

| t | copy | asset | move | transition | sound |
|---|---|---|---|---|---|
| 0.0-2.5 | "Launch videos, written as code." | logo | title x:-40→0 spring | - | whoosh |
| 2.5-5.5 | "One install." | terminal npx | typing | blur 0.35s | hit |
| 5.5-10 | "Every frame is a function of t." | screen-01 + code | spring | slide | tick |
| 10-15 | "Rendered frame by frame." | screen-02 | scale 1→1.04 slow push | blur | - |
| 15-22 | "720 screenshots make one video" | 3-4 captures | stagger 50ms | hard cut 0.8s | whoosh seq |
| 22-30 | "motion-graphics / npx skills add..." | wordmark | overshoot | fade grain | final hit |

## Exemplo Educational 90s

| t | label azul | visual | copy/ação | move | som |
|---|---|---|---|---|---|
| 0-2 | - | GitHub icon | Hook | scale back.out | whoosh |
| 2-5 | - | arrow → App Store 3 apps | GitHub→App Store | arrow draw | tick |
| ... | ... | ... | ... | ... | ... |
