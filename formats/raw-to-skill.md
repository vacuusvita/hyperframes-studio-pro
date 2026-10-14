# Raw to Skill Format - Transformar bruto.mov em Skill via Linguagem Natural

> **Core do vídeo de ensino:** HF + skills, PASTA bruto.mov → SKILL

## Objetivo

Transformar qualquer material bruto (bruto.mov, bruto.mp4, pasta com clips) em uma skill reutilizável que edita vídeo via linguagem natural, como ensinado no vídeo.

## Conceito do vídeo

```
PASTA
  bruto.mov  (material bruto)
  + skills (HF + skills)
      ↓
    SKILL (que edita vídeo)
      - abrir timeline
      - mexer em keyframe
      - trabalha com Gmail, Sheets, Calendar, Drive
      - prompts naturais: "Olha meus e-mails...", "Pega as vendas..."
```

## Workflow completo

### 1. Organize material bruto

```bash
mkdir meu-projeto && cd meu-projeto
mkdir assets
cp ~/bruto.mov assets/bruto.mov
# ou vários clips
cp ~/clips/*.mov assets/

# Crie manifest
echo "bruto.mov | captured from iPhone 15 Pro / 2026-10-14 | raw interview | own" > assets/manifest.md
```

### 2. Init Hyperframes com vídeo (gera captions auto)

```bash
npx hyperframes init . --video assets/bruto.mov
# Isso cria:
# compositions/index.html com o vídeo como clip
# + captions transcritas do áudio
# hyperframes.json
```

### 3. Defina skills que o agente terá (HF + skills)

No `brief.md`:

```md
# Brief - Raw to Skill

## Material bruto
- assets/bruto.mov - 420s, 1276x718, 30fps, entrevista sobre...

## Skills do agente
- Gmail: "Olha meus e-mails de hoje e separa tudo que precisa de resposta."
- Sheets: "Pega as vendas dessa planilha, cria um relatório e coloca no Drive."
- Calendar: "Analisa minhas reuniões da semana e prepara os documentos."
- Video editing: "editar vídeo", "abrir timeline", "mexer em keyframe"

## Output esperado
- Skill que edita bruto.mov via linguagem natural
- Relatório no Drive
- E-mails separados
- Documentos de reunião
```

### 4. Crie composition que ensina o workflow (educational template)

Use `templates/educational-template.html` como base, mas adapte para seu bruto.mov:

- Cena "material bruto" mostra card com seu bruto.mov
- Cena "O AGENTE TRABALHA COM" mostra icons Gmail, Sheets, Calendar, Drive
- Chat bubbles com prompts naturais que seu skill vai entender
- Cena "HF + skills" diagrama PASTA → SKILL
- Pills "abrir timeline / mexer em keyframe"

### 5. Implemente a skill (código)

A skill é a pasta Hyperframes + um wrapper que expõe comandos naturais:

```js
// skill.js - exemplo de skill que edita via linguagem natural
export const skill = {
  name: "editar-video",
  description: "Edita bruto.mov via linguagem natural",
  prompts: {
    "abrir timeline": () => { exec("npx hyperframes preview") },
    "mexer em keyframe": (args) => { /* edita GSAP tween */ },
    "Olha meus e-mails de hoje": async () => { /* Gmail API */ },
    "Pega as vendas dessa planilha": async (sheetUrl) => { /* Sheets + relatório Drive */ },
  }
}
```

### 6. Linguagem natural → NLE verbs

Mapeie frases do vídeo para edits Hyperframes:

| Frase natural | Verbo NLE | Ação |
|---|---|---|
| "editar vídeo" | - | Abre projeto |
| "abrir timeline" | - | `npx hyperframes preview` |
| "mexer em keyframe" | Adjust keyframe | Edita GSAP tween value/timing |
| "corta começo" | Trim front | `data-media-start` |
| "deixa mais curto" | Trim right | `data-duration=valor absoluto` |
| "começa mais tarde" | Move | `data-start` |
| "por cima" | Restack | `data-track-index` |
| "mais baixo" | Level | `data-volume` |

### 7. Teste com prompts reais do vídeo

```
VOCÊ: Olha meus e-mails de hoje e separa tudo que precisa de resposta.
AGENTE: [Gmail API] 5 e-mails precisam resposta, 2 urgentes...

VOCÊ: Pega as vendas dessa planilha, cria um relatório e coloca no Drive.
AGENTE: [Sheets API] Relatório criado, link Drive...

VOCÊ: Analisa minhas reuniões da semana e prepara os documentos.
AGENTE: [Calendar API] 3 reuniões, docs preparados...

VOCÊ: abrir timeline
AGENTE: npx hyperframes preview (abre Studio)

VOCÊ: mexer em keyframe, entrada do título 40px não 200
AGENTE: Editando tl.from("#title", x:-40) e snapshot...
```

### 8. Render e entrega

```bash
npx hyperframes lint
npx hyperframes check
npx hyperframes snapshot --at 0,5,10,15 --out out/stills
npx hyperframes render --output out/skill-demo.mp4 --fps 30 --quality high
npx hyperframes publish # URL shareable
```

## Template de skill (raw-to-skill)

Ver `templates/raw-to-skill-template.html` + `scripts/raw-to-skill.sh`.

## QA Raw to Skill

- [ ] bruto.mov importado e manifestado?
- [ ] Captions auto-geradas conferidas?
- [ ] Skills definidas (Gmail, Sheets, etc.)?
- [ ] Composition educational explicando fluxo PASTA → SKILL?
- [ ] Prompts naturais mapeados para NLE verbs com valor absoluto?
- [ ] "abrir timeline" e "mexer em keyframe" funcionam?
- [ ] Teste com prompts reais do vídeo?
- [ ] Render final + publish?
