# Análise Completa do Vídeo de Ensino

**Arquivo:** SaveClip.App_AQMG3HxnbtVliJfhDQcDt2RBBGn5ZkKV4YzXkQQekFC14aLnSK9R5ok2GI9ZMpmrKx0Nffyl0jy4l0Qx5EuT65nm92fQH5KT95z9gXk.mp4
**Tamanho:** 20MB
**Duração:** 420.7s (7min)
**Resolução:** 1276x718
**FPS:** 30
**Frames:** 12621
**Fonte:** MediaFire, uploaded from Brazil 2026-10-14

## Frames chave extraídos

- 0s: dot grid light
- 5s: GitHub icon → arrow blue → App Store window 3 apps (masks, Gmail M, Instagram) + instalar pills
- 10s: App Store 8 apps grid blur motion
- 15s: robot icon laranja + editar vídeo + player mock
- 20s: EM LINGUAGEM NATURAL + chat bubble VOCÊ vazio
- 25s: O CLAUDE CONSTRÓI + HTML5 icon laranja
- 30s: 1 2 3 pills azul + NUMA OPERAÇÃO COM IA
- 35s: Finalizar pedido / Comprar app novo mock + cursor
- 40s: material bruto card branco play + bruto.mov pill preto
- 45s: O AGENTE TRABALHA COM Gmail M icon
- 50s: HF + skills PASTA bruto.mov → SKILL diagram
- 55s: abrir timeline / mexer em keyframe pills brancas
- 60s+: Gmail prompt "Olha meus e-mails de hoje e separa tudo que precisa de resposta." + Sheets "Pega as vendas dessa planilha, cria um relatório e coloca no Drive." + Calendar "Analisa minhas reuniões da semana e prepara os documentos."

## Estilo visual

- Background: #F5F5F0 dot grid com dots #D0D0D0 2px a cada 40px radial-gradient
- Cards: #FFFFFF radius 16-20px shadow 0 8px 32px rgba(0,0,0,0.08) border #F0F0F0
- Icons: 80x80 radius 20px shadow 0 4px 16px rgba(0,0,0,0.1)
- Cores: azul #3B82F6 arrows/CTAs, preto #0E1116 texto, cinza #8C8F96 secundário, azul claro #EFF6FF
- Tipografia: Inter 900 48px títulos, 400 20px corpo, JetBrains Mono 12px caps azul labels
- Botões: instalar pill outline azul, Comprar solid azul #3B82F6 white 600 16px
- Chat: branco radius 16px padding 20px 24px shadow, YOU label azul dot + mono 10px, botão ↑ azul círculo
- Mockups: App Store window 800x500 white header #F9F9F9 dots, browser similar
- Animações: scale 0.9→1 back.out(1.7) 0.5s, x -40→0 power3.out 0.6s, stagger 80ms, blur crossfade 0.35s power2.inOut, arrow draw path 0.4s, cursor move 1s power2.inOut

## Narrativa (7min)

1. Hook: editar vídeo difícil
2. Solução: linguagem natural
3. Agente: Claude constrói HTML5
4. Operação IA: 1,2,3
5. Material bruto: bruto.mov
6. Agente trabalha com: Gmail, Sheets, Calendar
7. HF + skills: pasta → skill
8. Ações: abrir timeline, mexer keyframe
9. Exemplos: e-mails, vendas, reuniões
10. Demo: GitHub → App Store → Claude Code → App novo → Finalizar pedido/Comprar
11. CTA: transforme seu bruto.mov em skill

## Transformação em skill

Criados:

- formats/educational.md: tutorial completo 90s beat structure, template, prompts naturais
- formats/raw-to-skill.md: workflow bruto.mov → skill, HF + skills, linguagem natural → NLE verbs, Gmail/Sheets/Calendar integração
- templates/educational-template.html: 90s completo com todas cenas do vídeo, GSAP paused timelines, data-* attributes, dot grid, App Store mock, chat bubbles, pills, cursor
- references: edit-verbs inclui "abrir timeline / mexer em keyframe"
- SKILL.md: seção 6.8 e 6.9 detalhando estilo e workflow

## Prompts naturais extraídos (verbatim)

- "Olha meus e-mails de hoje e separa tudo que precisa de resposta."
- "Pega as vendas dessa planilha, cria um relatório e coloca no Drive."
- "Analisa minhas reuniões da semana e prepara os documentos."
- "editar vídeo"
- "abrir timeline"
- "mexer em keyframe"
- "EM LINGUAGEM NATURAL"
- "O CLAUDE CONSTRÓI"
- "NUMA OPERAÇÃO COM IA"
- "material bruto"
- "O AGENTE TRABALHA COM"
- "HF + skills"
- "PASTA / SKILL"
- "Finalizar pedido / Comprar"
- "instalar"

## Uso futuro

Qualquer pessoa pode usar educational-template.html para criar seu próprio tutorial explicando qualquer workflow (GitHub→X, Gmail→Y, etc.) trocando icons e chat bubbles.

Raw-to-skill permite transformar qualquer bruto.mov em skill reutilizável via linguagem natural.
