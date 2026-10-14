# Exemplos de prompts que LANDAM em 1 pass

## Edição

```
Trim intro so it ends at 0:03. intro clip duration = 3s; leave its animation and position alone. Also adjust scene2 start to 3s to avoid gap.

Swap the logo for assets/logo-2025.svg and keep its animation. Path is assets/logo-2025.svg.

title copy: "Ship faster." - exact text, keep styling. Element is #t1.

Move lower third to start at 6.0s. Clip id is #scene3, set data-start=6.0, keep duration 3s.

Make scene 2 run 4 seconds instead of 2.5 — keep the animation, just give it more room. scene 2 duration = 4s, same motion, add extra time as hold at end. Also bump root data-duration from 12 to 12.5 if needed.

Audio bed volume = 0.3. Set data-volume=0.3 on #bg-music.

Split scene 2 at 0:04 so I can drop a transition between the two halves. Create scene2a data-start=2.5 duration=1.5 and scene2b data-start=4.0 duration=2.5.

Title slides in from too far — change its entrance to travel 40px, not 200. In GSAP tl.from("#t1", x:-40 not -200).

Make scene 2 snappier — quicker entrances, harder cuts. Change ease to power4.out, duration 0.35 to 0.25.

Captions rendering behind video — put them on higher track so they sit on top. Set captions clip data-track-index=5 and z-index:5.

abrir timeline, mexer em keyframe: adjust keyframe at 2.5s for #title, x from -200 to -40, keep y and opacity.
```

## Criação

```
Make a launch video for our app from iOS simulator, 30s, 1920x1080, blur crossfade, every frame function of t

Make a YouTube Short explaining compound interest, 24s, 1080x1920, loopable, hook in 0.3s, one idea per beat, safe zones

Make a high-energy 15s hype promo for product X, beat-locked kinetic type, shape transitions, power4.out, hard cuts

Make a 60s clean product demo, UI rebuilt close-up while used, slow push 1→1.04, parallax

Make an educational video explaining GitHub → App Store → Claude Code workflow, dot grid style, App Store mockup 8 apps, chat bubbles VOCÊ, labels blue mono, pills 1 2 3, bruto.mov card, HF + skills PASTA → SKILL, Gmail/Sheets/Calendar prompts

Transform bruto.mov into a skill: pasta bruto.mov → skill, agent works with Gmail, natural language "Olha meus e-mails de hoje e separa tudo que precisa de resposta", abrir timeline, mexer em keyframe, render via hyperframes
```

## Natural language (do vídeo ensino)

```
Olha meus e-mails de hoje e separa tudo que precisa de resposta.
Pega as vendas dessa planilha, cria um relatório e coloca no Drive.
Analisa minhas reuniões da semana e prepara os documentos.
editar vídeo em linguagem natural
abrir timeline
mexer em keyframe
```
