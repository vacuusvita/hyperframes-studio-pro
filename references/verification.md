# Verification & Critique Loop - De JakeB-5

## Verify record.js output

> Harden the critique loop and verify record.js output (phase 1.1)

- Render para `<out>.part.mp4`
- Checa com ffprobe: playable, last video packet within 0.5s of film length, not truncated
- Só então move para --out
- Exit 1 se falhar
- --verify-only checa MP4 existente, recusa se mais antigo que render interrompido
- Espere record.js antes de reportar ou terminar turn, timeout = film length + 120s

## Critique Loop

- Reviewer separado com fresh context score film quando host pode iniciar (self-review sob mesmas regras caso contrário)
- Defect table com file-and-time evidence vem primeiro e FAIL caps axes at 6
- Qualquer 8+ deve nomear evidence
- Builder-written cue-check.md alimenta sound axis
- No máximo 3 rounds revisados, com itens não resolvidos listados em review_log.md e delivery report

## Check.js

- Strips/phone sheet/determinism checks
- Text overflow e layout problems across timeline

## Record.js

- Renders to <out>.part.mp4
- Checks with ffprobe
- Only then moves to --out

## Steps

1. Render
2. Verify com ffprobe
3. Critique com reviewer separado
4. Defect table
5. Fix
6. Re-render até pass ou 3 rounds
7. Log unresolved em review_log.md

## Checklist

- [ ] Render .part.mp4 → ffprobe → move para final?
- [ ] Check.js strips/phone sheet/determinism?
- [ ] Critique com evidence?
- [ ] Defect table com file-and-time?
- [ ] Max 3 rounds?
- [ ] review_log.md com unresolved?
