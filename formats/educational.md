# Educational / Tutorial Format - Estilo Vídeo de Ensino (7min analisado)

> **NOVO - Transformado do vídeo de ensino enviado (bruto.mov 20MB, 420s, 1276x718, 30fps)**

## Análise do vídeo original

**Frames analisados:**
- 0s: dot grid light #F5F5F0
- 5s: GitHub icon → arrow → App Store window com 3 apps (masks, Gmail M, Instagram) + "instalar"
- 15s: App Store com 8 apps grid (blur motion)
- 25s: Icon laranja robot + "editar vídeo" + player mock
- 35s: "↓ EM LINGUAGEM NATURAL" + chat bubble "VOCÊ" vazio
- 45s: "↓ O CLAUDE CONSTRÓI" + HTML5 icon
- 55s: "1 2 3" pills azul + "↓ NUMA OPERAÇÃO COM IA"
- 65s: "Finalizar pedido / Comprar" app novo mock + cursor
- 75s: "material bruto" - card branco com play + "bruto.mov"
- 85s: "↓ O AGENTE TRABALHA COM" + Gmail M icon
- 95s: "HF + skills" - PASTA bruto.mov → SKILL
- 110s: "abrir timeline / mexer em keyframe" pills
- 130s+: Gmail prompt "Olha meus e-mails de hoje e separa tudo que precisa de resposta." + Sheets "Pega as vendas dessa planilha..." + Calendar "Analisa minhas reuniões..."

**Estilo visual extraído:**
- Background: dot grid #E8E8E6 com dots #D0D0D0 2px a cada 40px
- Cards: branco #FFFFFF, radius 16-20px, shadow 0 8px 32px rgba(0,0,0,0.08), border 1px #F0F0F0
- Icons: 80x80, rounded 20px, shadow 0 4px 16px rgba(0,0,0,0.1), label Inter 700 14px abaixo
- Cores: azul #3B82F6 setas/CTAs, preto #0E1116 texto, cinza #8C8F96 secundário, azul claro #EFF6FF bg pill
- Tipografia: Inter 900 48px títulos, 400 20px corpo, JetBrains Mono 12px caps azul para labels "↓ EM LINGUAGEM NATURAL"
- Botões: "instalar" pill azul outline, "Comprar" solid azul #3B82F6 white 16px 600
- Chat bubbles: branco, radius 16px, padding 20px 24px, shadow, "VOCÊ" label azul dot + mono 10px, botão ↑ azul círculo
- Mockups: App Store window 800x500 white, header #F9F9F9 com dots, Browser window similar
- Animações: scale 0.9→1 back.out(1.7) 0.5s, x -40→0 power3.out 0.6s, stagger 80ms, blur crossfade 0.35s power2.inOut, arrow draw path 0.4s, cursor move 1s power2.inOut

**Narrativa (estrutura de 7min):**
1. Hook: problema "editar vídeo" é difícil
2. Solução: linguagem natural
3. Agente: Claude constrói HTML5
4. Operação com IA: 1,2,3 steps
5. Material bruto: bruto.mov
6. Agente trabalha com: Gmail, Sheets, Calendar, etc.
7. HF + skills: pasta → skill
8. Ações: abrir timeline, mexer keyframe
9. Exemplos naturais: e-mails, vendas, reuniões
10. Demo fluxo: GitHub → App Store → Claude Code → App novo → Finalizar pedido/Comprar
11. CTA: transformar seu bruto.mov em skill

## Brief para criar seu tutorial

| Campo | Valor |
|---|---|
| Length | 60s - 7min (original 7min) |
| Frame | 1920x1080 ou 1276x718 (original) @30fps ou 60fps |
| Style | Dot grid + cards brancos + icons App Store + chat bubbles + labels azuis mono |
| Workflow | Defina seu: ex GitHub→App Store, Gmail→Resposta, Planilha→Relatório |
| Icons | Gmail M vermelho, Sheets verde, Calendar azul 31, GitHub octocat, HTML5 laranja, HF azul, etc. |
| Mockups | App Store window, browser window, player, folder PASTA, skill box |
| Audio | Calm corporate, whoosh sutil a cada transição |

## Beat Structure (exemplo 90s tutorial GitHub→App Store)

| t | label azul | visual | copy/ação | move | som |
|---|---|---|---|---|---|
| 0-2 | - | dot grid + GitHub icon | Hook: GitHub | scale 0.8→1 back.out | whoosh |
| 2-5 | - | arrow draw → App Store window 3 apps | "GitHub → App Store" | arrow path draw + window scale 0.9→1 | tick |
| 5-8 | - | App Store 8 apps grid blur | Mostra variedade | stagger 80ms | - |
| 8-12 | "editar vídeo" | player mock + icon robot | Problema | y 20→0 | - |
| 12-16 | "↓ EM LINGUAGEM NATURAL" | chat bubble "VOCÊ" vazio | Solução | slide x -40→0 | whoosh |
| 16-20 | "↓ O CLAUDE CONSTRÓI" | HTML5 icon | Agente constrói | scale punch | hit |
| 20-26 | "↓ NUMA OPERAÇÃO COM IA" | pills 1 2 3 azul | Steps | stagger | tick seq |
| 26-32 | "material bruto" | card bruto.mov | Input | y 20→0 | - |
| 32-38 | "↓ O AGENTE TRABALHA COM" | Gmail M + label | Ferramentas | scale | whoosh |
| 38-44 | - | chat bubble Gmail prompt | "Olha meus e-mails..." | typing effect | - |
| 44-50 | - | Sheets + Calendar prompts | Outros exemplos | slide | - |
| 50-56 | "HF + skills" | PASTA → SKILL diagram | Transformação | arrow draw | hit |
| 56-62 | - | pills "abrir timeline / mexer keyframe" | Ações | stagger | - |
| 62-75 | - | GitHub → App Store → Claude Code → App novo | Fluxo completo | blur crossfade | whoosh seq |
| 75-85 | "Finalizar pedido" | app novo mock + Comprar button + cursor | Demo compra | cursor move 1s | click |
| 85-90 | CTA | Logo + "Transforme seu bruto.mov em skill" | CTA | overshoot | final hit |

## Template Hyperframes (educational)

```html
<!DOCTYPE html><html><head><meta charset="utf-8">
<style>
  body{margin:0;width:1920px;height:1080px;overflow:hidden;background:#F5F5F0;font-family:Inter,sans-serif}
  #root{position:relative;width:1920px;height:1080px;background:#F5F5F0;overflow:hidden}
  #root::before{content:'';position:absolute;inset:0;background-image:radial-gradient(#D0D0D0 1.5px, transparent 1.5px);background-size:40px 40px;opacity:0.6}
  .clip{position:absolute;inset:0}
  .card{background:#fff;border-radius:20px;box-shadow:0 8px 32px rgba(0,0,0,0.08);border:1px solid #F0F0F0;padding:24px}
  .icon{width:80px;height:80px;border-radius:20px;box-shadow:0 4px 16px rgba(0,0,0,0.1);display:flex;align-items:center;justify-content:center;font-size:40px}
  .label-blue{font:700 12px/1 JetBrains Mono, monospace;color:#3B82F6;letter-spacing:0.1em;text-transform:uppercase}
  .chat{ background:#fff;border-radius:16px;padding:20px 24px;box-shadow:0 8px 32px rgba(0,0,0,0.08);max-width:800px}
  .chat .you{font:700 10px JetBrains Mono;color:#3B82F6;display:flex;align-items:center;gap:6px;margin-bottom:8px}
  .chat .you::before{content:'';width:6px;height:6px;background:#3B82F6;border-radius:50%;display:inline-block}
  .chat .text{font:500 20px/1.4 Inter;color:#0E1116}
  .pill{background:#fff;border-radius:999px;padding:12px 24px;box-shadow:0 4px 16px rgba(0,0,0,0.06);font:700 18px Inter;color:#0E1116;display:inline-block}
  .pill-blue{background:#3B82F6;color:#fff}
  .appstore{width:800px;height:500px;background:#fff;border-radius:16px;box-shadow:0 20px 60px rgba(0,0,0,0.12);overflow:hidden}
  .appstore-header{height:40px;background:#F9F9F9;display:flex;align-items:center;padding:0 16px;gap:6px}
  .appstore-dot{width:10px;height:10px;border-radius:50%;background:#E5E7EB}
  .arrow{width:120px;height:2px;background:#3B82F6;position:relative}
  .arrow::after{content:'';position:absolute;right:0;top:50%;transform:translateY(-50%) rotate(45deg);width:8px;height:8px;border-top:2px solid #3B82F6;border-right:2px solid #3B82F6}
</style>
<script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
</head><body>
<div id="root" data-composition-id="educational-v1" data-width="1920" data-height="1080" data-duration="90">

  <div class="clip" data-start="0" data-duration="5" data-track-index="1" id="scene-github">
    <div style="position:absolute;left:200px;top:50%;transform:translateY(-50%)">
      <div class="card" style="width:120px;height:120px;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:8px" id="gh-card">
        <div style="width:60px;height:60px;background:#000;border-radius:12px;display:flex;align-items:center;justify-content:center;color:#fff;font-size:32px">🐙</div>
        <div style="font:700 14px Inter">GitHub</div>
      </div>
    </div>
    <div style="position:absolute;left:400px;top:50%;transform:translateY(-50%)" id="arrow1"><div class="arrow"></div></div>
    <div style="position:absolute;left:560px;top:50%;transform:translateY(-50%)" id="appstore-card">
      <div class="appstore" style="width:700px;height:400px">
        <div class="appstore-header"><div class="appstore-dot"></div><div class="appstore-dot"></div><div class="appstore-dot"></div><span style="margin-left:12px;font:500 12px Inter;color:#8C8F96">App Store</span></div>
        <div style="padding:32px;display:flex;gap:24px">
          <div style="text-align:center"><div class="icon" style="background:#E8F5E9">🎭</div><div style="margin-top:8px;font:600 12px Inter;color:#3B82F6;border:1px solid #3B82F6;border-radius:999px;padding:4px 12px">instalar</div></div>
          <div style="text-align:center"><div class="icon" style="background:#FFEBEE;color:#D32F2F">M</div><div style="margin-top:8px;font:600 12px Inter;color:#3B82F6;border:1px solid #3B82F6;border-radius:999px;padding:4px 12px">instalar</div></div>
          <div style="text-align:center"><div class="icon" style="background:#FCE4EC;color:#E91E63">📷</div><div style="margin-top:8px;font:600 12px Inter;color:#3B82F6;border:1px solid #3B82F6;border-radius:999px;padding:4px 12px">instalar</div></div>
        </div>
      </div>
    </div>
  </div>

  <div class="clip" data-start="8" data-duration="6" data-track-index="1" id="scene-natural">
    <div style="position:absolute;left:50%;top:40%;transform:translate(-50%,-50%);text-align:center">
      <div class="label-blue" id="label-natural">↓ EM LINGUAGEM NATURAL</div>
      <div class="chat" style="margin-top:16px;width:700px" id="chat-natural">
        <div class="you">VOCÊ</div>
        <div class="text">Olha meus e-mails de hoje e separa tudo que precisa de resposta.</div>
      </div>
    </div>
  </div>

  <!-- more scenes... -->

</div>
<script>
window.__timelines={};
const tl=gsap.timeline({paused:true});
// GitHub → App Store
tl.from("#gh-card",{scale:0.8,opacity:0,duration:0.5,ease:"back.out(1.7)"},0.2);
tl.from("#arrow1",{scaleX:0,opacity:0,duration:0.4,ease:"power2.out"},0.5);
tl.from("#appstore-card",{scale:0.9,y:20,opacity:0,duration:0.6,ease:"power3.out"},0.7);
// Natural language
tl.from("#label-natural",{y:10,opacity:0,duration:0.3},8);
tl.from("#chat-natural",{y:20,opacity:0,duration:0.5,ease:"power3.out"},8.2);
window.__timelines["educational-v1"]=tl;
</script></body></html>
```

## Prompts naturais (do vídeo)

- "Olha meus e-mails de hoje e separa tudo que precisa de resposta."
- "Pega as vendas dessa planilha, cria um relatório e coloca no Drive."
- "Analisa minhas reuniões da semana e prepara os documentos."
- "editar vídeo"
- "abrir timeline"
- "mexer em keyframe"

Esses prompts viram skills que trabalham com Gmail, Sheets, Drive, Calendar.

## QA Educational

- [ ] Dot grid background?
- [ ] Cards brancos com shadow?
- [ ] Icons App Store style?
- [ ] Labels azuis mono caps?
- [ ] Chat bubbles "VOCÊ"?
- [ ] Arrow draw animation?
- [ ] Blur crossfade entre cenas?
- [ ] Cursor move para "Comprar"?
- [ ] Narrativa clara: problema → solução → agente → operação IA → material bruto → ferramentas → transformação → ações → exemplos → demo → CTA?
