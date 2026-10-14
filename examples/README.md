# Exemplos gerados com a própria skill

## hyperframes-presentation-35s.mp4

Video de 35s, 1920x1080, 60fps, 9MB, 2100 frames, renderizado com Hyperframes usando a própria skill hyperframes-studio-pro.

**Beats:**
- 0-3.5s: Hook "Vídeos como código" - HTML is Video
- 3.2-7s: Old way "Timeline manual. Keyframe a keyframe." cruzado
- 7-12.5s: New way "Edite vídeo como conversa" - chat bubbles VOCÊ com prompts naturais
- 12.2-18s: Hyperframes Engine - HTML puro, GSAP pausado, render determinístico + code snippet data-*
- 18-24s: Como funciona 3 passos - Escreva HTML, Preview Studio, Render MP4
- 24-30s: Edição profissional NLE verbs - valor absoluto, uma coisa por vez, Move/Trim/Swap/Retime/Restack/Level
- 30-35s: CTA hyperframes-studio-pro + npx skills add vacuusvita/hyperframes-studio-pro + qualquer agent

**Como foi feito:**
- Composition: compositions/presentation.html (single HTML, data-composition-id, clips data-start/duration/track-index, GSAP paused timeline window.__timelines)
- CLI: npx hyperframes render --composition compositions/presentation.html --output out/video.mp4 --fps 60 --quality high
- Render: 3m37s, screenshot capture, software GPU, 2100 frames

**Frames:**
- 1.5s: Vídeos como código
- 5s: Timeline manual cruzado
- 9.5s: Edite vídeo como conversa
- 14.5s: HTML puro + code
- 20.5s: 3 passos
- 26.5s: Valor absoluto + NLE verbs
- 32.5s: CTA final

Feito 100% com prompts + HTML, sem voz narrativa, só motion graphics, totalmente profissional.
