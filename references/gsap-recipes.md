# GSAP Recipes - Receitas prontas Hyperframes

## Entradas

```js
// Título slide + fade
tl.from("#title", {x:-40, opacity:0, duration:0.6, ease:"power3.out"}, 0.2);

// Sub slide up
tl.from("#sub", {y:15, opacity:0, duration:0.4, ease:"power2.out"}, 0.5);

// Scale punch back
tl.from("#card", {scale:0.8, opacity:0, duration:0.5, ease:"back.out(1.7)"}, 0.3);

// Stagger words
tl.from(".word", {y:20, opacity:0, duration:0.3, stagger:0.04, ease:"power3.out"}, 0.2);

// Stagger icons App Store
tl.from(".icon", {scale:0.8, y:20, opacity:0, duration:0.4, stagger:0.08, ease:"back.out(1.4)"}, 0.5);

// Typewriter
tl.from("#text", {width:0, duration:1, ease:"none"});
```

## Transições

```js
// Blur crossfade (padrão)
tl.to("#scene1", {filter:"blur(8px)", scale:1.03, opacity:0, duration:0.35, ease:"power2.inOut"}, 2.2);
tl.fromTo("#scene2", {filter:"blur(8px)", scale:0.97, opacity:0}, {filter:"blur(0px)", scale:1, opacity:1, duration:0.35, ease:"power2.inOut"}, 2.28);

// Hard cut
tl.to("#scene1", {opacity:0, duration:0.1}, 5);

// Slide
tl.to("#scene1", {x:-40, opacity:0, duration:0.3, ease:"power2.in"}, 5);
tl.from("#scene2", {x:40, opacity:0, duration:0.4, ease:"power3.out"}, 5.1);

// Shape morph
tl.to("#shape", {borderRadius:"50%", scale:1.2, rotation:180, duration:0.4, ease:"power2.inOut"});

// Arrow draw
tl.fromTo("#arrow", {scaleX:0, transformOrigin:"left"}, {scaleX:1, duration:0.4, ease:"power2.out"}, 0.5);
```

## Motion Path / Arc

```js
// Arco ao invés de diagonal
tl.to("#item", {
  motionPath: {
    path: [{x:0,y:0}, {x:100,y:-50}, {x:200,y:0}],
    curviness: 1.5
  },
  duration:0.6,
  ease:"power2.inOut"
});

// Ou bezier simples
tl.to("#item", {x:200, y:0, duration:0.6, ease:"power2.inOut"});
// com yoyo via keyframes
```

## Slow Push / Parallax

```js
// Slow push 1→1.04 em held shot
tl.to("#bg", {scale:1.04, duration:10, ease:"none"}, 0);

// Parallax 2-3 layers
tl.to("#layer1", {y:-20, duration:10, ease:"none"}, 0);
tl.to("#layer2", {y:-40, duration:10, ease:"none"}, 0);
tl.to("#layer3", {y:-60, duration:10, ease:"none"}, 0);
```

## Progress / Counter

```js
// Progress bar
tl.to("#progress", {width:"100%", duration:30, ease:"none"}, 0);

// Counter 0→720
let counter = {val:0};
tl.to(counter, {val:720, duration:2, ease:"power2.out", onUpdate: () => {
  document.getElementById("num").textContent = Math.round(counter.val);
}}, 0);
```

## Chat / Typing

```js
// Chat bubble
tl.from("#chat", {y:20, opacity:0, duration:0.5, ease:"power3.out"}, 0.2);

// Typing effect
tl.from("#text span", {opacity:0, duration:0.05, stagger:0.03}, 0.3);
```

## Educational específico

```js
// App Store window scale
tl.from("#appstore", {scale:0.9, y:20, opacity:0, duration:0.6, ease:"power3.out"}, 0.5);

// Icon install stagger
tl.from(".app-icon", {scale:0.8, opacity:0, duration:0.4, stagger:0.08, ease:"back.out(1.4)"}, 0.7);

// Pill 1 2 3
tl.from(".pill", {scale:0.8, opacity:0, duration:0.3, stagger:0.08, ease:"back.out(1.7)"}, 0.2);

// Cursor move to Comprar
tl.to("#cursor", {x:100, y:50, duration:1, ease:"power2.inOut"}, 2);
tl.to("#comprar", {scale:0.95, duration:0.1, yoyo:true, repeat:1}, 3);
```

## Determinismo

- Sempre paused:true
- Não use Math.random, Date.now
- Use data-composition-variables para parametrizar
- Timeline length >= data-duration, mas duração vem de data-duration
