# Contributing to hyperframes-studio-pro

## Estrutura da MEGA skill

Esta skill une 4 repos + vídeo de ensino. Ao contribuir:

1. Leia `SKILL.md` completo
2. Leia `references/` - cheatsheet, edit-verbs, pitfalls, craft-bar
3. Teste com `npx hyperframes doctor && npx hyperframes preview`
4. Um edit por vez, valor absoluto, freeze clause
5. Sempre `lint` + `check` + `snapshot` antes de `render`
6. Gere `CREDITS.txt` para sons

## Como testar

```bash
npx hyperframes init test-20251014 --example warm-grain
cd test-20251014
cp ../templates/educational-template.html compositions/index.html
npx hyperframes preview
npx hyperframes snapshot --at 0,3,6 --out out/stills
npx hyperframes render --output out/video.mp4 --fps 60 --quality high
```

## Formatos

- Launch: 30s 1920x1080 keynote
- Shorts: 20-30s 1080x1920 loopable
- High-energy: 12-20s hype
- Default: 45-90s clean demo
- B-roll: transcript → B-roll
- Object separation: alpha webm/mov
- Sound effects: licensing + CREDITS.txt
- Educational: dot grid + App Store mock (do vídeo ensino)
- Raw to skill: bruto.mov → skill via linguagem natural

## Edição

Use NLE verbs: Move (data-start), Trim (data-duration), Restack (data-track-index), Retime, Level (data-volume), Swap (src), Change copy, Adjust keyframe, Feel (ease), Split, Timeline edit (abrir timeline/mexer keyframe).

## Pull Request

- Descreva formato afetado
- Inclua beats.md antes/depois
- Inclua stills de QA
- Inclua CREDITS.txt se usou som
