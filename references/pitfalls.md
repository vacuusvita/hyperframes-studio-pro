# Pitfalls - O que NÃO fazer

## Determinismo

- ❌ Date.now(), performance.now(), requestAnimationFrame, Math.random na render
- ✅ data-composition-variables ou seed fixo

## Timing

- ❌ tl.set({}, {}, 5) sentinel para estender duração
- ✅ Duração vem de data-duration root e clip
- ❌ Root duration < último clip
- ✅ root data-duration >= max(clip start+duration)
- ❌ Mover clip para 0:08 em vídeo 10s com duração 4s
- ✅ Cheque bounds

## Animação

- ❌ Linear para tudo
- ✅ Springs / power3.out / power4.out + overshoot, stagger 30-60ms
- ❌ Motion blur sempre
- ✅ Só moves rápidos
- ❌ Scale 1→2 em held shot
- ✅ Slow push 1→1.04 sutil

## Assets

- ❌ Inventar telas app
- ✅ Só UI capturada: npx hyperframes capture, iOS Sim, Android, screenrecord
- ❌ Imagem sem manifest
- ✅ assets/manifest.md: file | source | license | what it shows
- ❌ Som sem licença
- ✅ Pergunte onde publica, cheque Freesound CC0 / Mixkit / Kenney, gere CREDITS.txt

## Copy

- ❌ Texto some rápido
- ✅ Fica tempo para ler 2x
- ❌ Fora safe zones (Shorts: top 10%, bottom 15%, sides 5%)
- ✅ ?guides=1 ou Studio guides
- ❌ Copy sem aspas quando quer verbatim
- ✅ "Ship faster." com aspas = exato

## Edição

- ❌ 5 edits por vez
- ✅ 1 por render, snapshot, valida, próximo
- ❌ "um pouco mais curto", "logo novo"
- ✅ "duration=3s", "swap for assets/logo-2025.svg"
- ❌ Reescrever vídeo inteiro para 1 asset swap
- ✅ Edita atributo mínimo

## Render

- ❌ 2 renders full paralelo (10min cada)
- ✅ 1 por vez, stills primeiro
- ❌ Sem grain em flat fills (banda)
- ✅ Grain 0.05 opacity
- ❌ Sem loop check Shorts
- ✅ snapshot --at 0,final
