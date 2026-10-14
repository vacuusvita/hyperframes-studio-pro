# Shorts Format - 20-30s 1080x1920 Loopable

## Brief

| Campo | Valor |
|---|---|
| Length | 20-30s |
| Frame | 1080x1920 @60fps |
| Rules | Uma ideia por beat, texto fora UI TikTok/IG (top 10%, bottom 15%, sides 5%), hook 0.3s |
| Facts | Todo número tem source em brief.md |
| Ending | Último frame = primeiro frame para loop perfeito |
| Audio | Captions queimados? `npx hyperframes init --video` transcreve |

## Beat 24s

| t | copy | visual | move |
|---|---|---|---|
| 0.0-0.3 | HOOK grande | "720 screenshots" | scale 0.8→1 back.out(1.7) |
| 0.3-3.0 | "make one 12-second video." | número + sub | stagger word 40ms |
| 3.0-6.0 | "Every frame is a function of t" | code | typewriter |
| 6.0-9.0 | "Same t. Same pixels." | split render1 vs render2 | hard cut |
| 9.0-15.0 | 3 features | icons + kinetic type | slide + blur |
| 15.0-23.0 | Build final | montagem 0.8s cada | punch power4.out |
| 23.0-24.0 | Loop frame | volta ao frame 0 | match first |

## Template

```html
<div id="root" data-composition-id="shorts-v1" data-width="1080" data-height="1920" data-duration="24" style="background:#000;color:#fff">
  <div class="clip" data-start="0" data-duration="3" data-track-index="1" id="hook" style="display:flex;flex-direction:column;justify-content:center;align-items:center;padding:80px">
    <div class="num" style="font:900 220px/1 Inter">720</div>
    <div class="sub" style="font:600 48px/1.2 Inter">screenshots</div>
  </div>
</div>
<script>
window.__timelines={};
const tl=gsap.timeline({paused:true});
tl.from("#hook .num",{scale:0.8,opacity:0,duration:0.5,ease:"back.out(1.7)"},0);
tl.from("#hook .sub",{y:20,opacity:0,duration:0.4,ease:"power3.out"},0.25);
window.__timelines["shorts-v1"]=tl;
</script>
```

## Safe Zones

Top 10% = TikTok UI, Bottom 15% = captions+buttons, Sides 5%. Use guides Studio.

## QA

- [ ] Hook 0.3s?
- [ ] Texto fora UI nativa?
- [ ] Loop perfeito? snapshot --at 0,23.99
- [ ] Uma ideia por beat?
- [ ] Legendas legíveis?
