# Merge Analysis - 4 Skills → MEGA Skill

## cskwork/motion-graphics-skill

**URL:** https://github.com/cskwork/motion-graphics-skill + https://cskwork.github.io/motion-graphics-skill/
**Core:** MG.scene(0,3,(t)=>{MG.set(card,{s:MG.spring(t), r:MG.tween(t,[[0,-12],[1.2,0]])})}); // no clock, no randomness
**Engine:** engine/runtime.css + engine/runtime.js, MG.* helpers (scene, always, prog, tween, spring, split, set, clip, rng, noise, fmt, captions), render via node engine/render.mjs --html motion.html --config motion.json --stills --out video.mp4, headless Chromium + ffmpeg, workers 4, 60fps
**Formats:** launch-video 30s 1920x1080 keynote SaaS X, shorts 20-30s 1080x1920 hook 0.3s one idea per beat safe zones loop
**Workflow:** brief → capture real stills/clips iOS Sim/Android/web/macOS → beat sheet time/copy/asset/move/transition/accent → compose one HTML page scenes springs kinetic type screen recordings seek exact frame → render → QA stills contact sheet safe zones loudness
**Craft bar:** frame 0 moving, change every 0.8-2s, springs ease-out-expo stagger 30-60ms linear only ticker, motion blur fast moves, slow push 1→1.04, parallax 2-3 layers, one bg family one text one accent grain gradient noise, copy read twice safe zones, beats on sound
**QA:** stills every beat, inside every tween, spring overshoot peak
**What we kept:** beat sheet, craft bar, QA, brief table, capture real UI manifest, deterministic, 60fps

## JakeB-5/motion-graphic-skill

**URL:** https://github.com/JakeB-5/motion-graphic-skill
**Core:** brief + references → beat-synced single-file canvas motion graphic HTML with synthesized sound, mobile player, automated verification
**Features:** v0.4.0 springs, motion checks, scored critique loop, separate reviewer fresh context, defect table file-and-time evidence FAIL caps axes at 6, 8+ must name evidence, builder-written cue-check.md sound axis, max 3 rounds unresolved review_log.md delivery report, record.js renders to <out>.part.mp4 checks ffprobe playable last packet within 0.5s not truncated only then moves to --out, --verify-only checks existing MP4 refuses older than interrupted render, check.js strips/phone sheet/determinism text overflow layout
**What we kept:** verification, critique loop, review_log.md, check.js ideas, record.js .part.mp4 pattern

## Barty-Bart/motion-graphics

**URL:** https://github.com/Barty-Bart/motion-graphics
**Skills:**
- motion-broll: video + transcript → motion-graphic B-roll timed to words
- object-separation: person/product/hand from background on your computer local
- explainer-high-energy: 12-20s hype promo beat-locked kinetic type shape transitions
- explainer-default: clean 45-90s product demo UI rebuilt filmed close while used
- sound-effects: licence check CREDITS.txt suggested music, step 0 before final export ask where published, open licence page every source, check terms, table Freesound CC0 Kenney Mixkit sounds music allow checked 13 Oct 2026, every run writes CREDITS.txt paste-ready YouTube IG TikTok names sound without known free licence flags music until licence confirmed flags use-case conflicts Mixkit music on TV/game, --music-source --music-license --use-case flags, MUSIC.md 12 suggested free Mixkit tracks by feel downloaded runtime never stored repo, Find more sounds check licence first, remove __pycache__
**What we kept:** all 5 skills as formats, licensing table, CREDITS.txt, MUSIC.md concept, object separation alpha webm/mov, B-roll chain generate-motion-graphic add-animated-overlay sync-captions batch

## heygen-com/hyperframes (official)

**URL:** https://github.com/heygen-com/hyperframes + https://hyperframes.heygen.com
**Core:** Write HTML. Render video. Built for agents. Open-source Apache 2.0. HTML + CSS + JS, data-* hooks timing, variables data-composition-variables override at render time to produce many videos from one bundle, frame adapters custom runtimes, deterministic rendering byte-for-byte identical frames across machines, compositions self-contained HTML page layout CSS motion GSAP, preview iterate local tooling community playground, render MP4 MOV WebM GIF PNG sequence local or HeyGen cloud via Cloud Rendering API POST /v3/assets upload zip → asset_id → POST /v3/hyperframes/renders → render_id queued → poll GET /renders/{id} queued→rendering→completed → presigned video_url thumbnail_url short-lived, variables, quality draft standard high, format mp4 webm mov webm mov alpha, resolution 1080p 4k, aspect 16:9 9:16 1:1, composition entry HTML path, title, callback_id callback_url webhook hyperframes_video.success/fail, upload once render many, combine HeyGen avatar video music sfx Hyperframes graphics one finished video, avatar IV V III, audio sounds API
**CLI:** npx hyperframes init my-video --example warm-grain --video source.mp4, capture https://example.com, preview Studio live, lint structural, check headless Chrome runtime errors overflow, snapshot --at 1,3,5, render --output final.mp4 --fps --quality, publish shareable URL, doctor Node FFmpeg Chrome Docker, docs, upgrade, prompting editing-existing-videos verb→edit map Move data-start Restack data-track-index+z-index Trim right data-duration Trim front media only data-media-start Retime data-duration+GSAP Level data-volume, trim move restack pure timing, split Studio no split yet agent edits HTML 1 clip→2, retime render duration from data-duration not GSAP timeline length don't pad tl.set({}, {}, <sec>) sentinel, snappier feel mapping vocabulary power4.out tight durations dreamy slow symmetrical bouncy overshoot, adjust keyframe property target absolutely Move X=40 arc curviness 1.5 Design Panel clipboard icon copies structured context id position size animation, swap asset name path rule, change copy verbatim quoted, video editor cheatsheet, data attributes root data-composition-id data-width data-height timed class clip data-start data-duration data-track-index GSAP paused registered window.__timelines
**What we kept:** everything as base engine, replacing MG.* custom engine

## Teaching Video

**File:** bruto.mov 20MB 420s 1276x718 30fps
**Style:** dot grid, App Store mock, chat bubbles VOCÊ, labels blue mono, pills, GitHub→App Store→Claude Code flow, material bruto PASTA→SKILL, Gmail/Sheets/Calendar natural language prompts, abrir timeline/mexer keyframe, finalizar pedido/comprar
**Transformed into:** educational.md + raw-to-skill.md + educational-template.html 90s complete + docs/TEACHING_VIDEO_ANALYSIS.md

## MEGA Skill Result

- SKILL.md 2500+ linhas, 13 seções, router 10 formatos, 2 hábitos edição, mapa NLE completo, craft bar, 6 workflows específicos, QA, cloud API, anti-padrões, entrega, templates/scripts, prompts que funcionam
- 10 formats, 8 references, 3 templates, 3 scripts, examples, docs, plugins for Claude Codex Cursor Gemini
- GitHub: https://github.com/vacuusvita/hyperframes-studio-pro
- Install: npx skills add heygen-com/hyperframes + npx skills add vacuusvita/hyperframes-studio-pro
- Size: gigante profissional, como pedido
