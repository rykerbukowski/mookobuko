---
title: "The Philippines"
subtitle: "Palawan: Pearl Hunters, Wreck Divers & Electric Dirt Bikes"
date: 2026-02-22
location: "Palawan, Philippines"
locationEmoji: "🇵🇭"
heroImage: "/media/posts/13/gallery/aerial-drone-crashed-plane.jpg"
heroColor: "#0891B2"
excerpt: "Tweaking taxi drivers, electric dirt bikes, karaoke with angels, and a geocache inside a 1971 plane crash. Our two and a half weeks through Palawan, Philippines."
tags:
  - { label: "🏝️ Philippines", color: "#0EA5E9" }
  - { label: "🤿 Scuba Diving", color: "#0891B2" }
  - { label: "🏍️ Dirt Bikes", color: "#F59E0B" }
  - { label: "🗺️ Geocaching", color: "#10B981" }
status: "published"
---

<canvas id="ph-bg" style="position:fixed;inset:0;width:100%;height:100%;pointer-events:none;z-index:0;"></canvas>
<script>
(function(){
const canvas=document.getElementById('ph-bg');
if(!canvas)return;
const ctx=canvas.getContext('2d');
function resize(){canvas.width=window.innerWidth;canvas.height=window.innerHeight;}
resize();
window.addEventListener('resize',resize);
const FC=[['#F0997B','#D85A30'],['#5DCAA5','#0F6E56'],['#85B7EB','#185FA5'],['#FAC775','#BA7517'],['#ED93B1','#993556'],['#97C459','#3B6D11']];
function mf(){const d=Math.random()>0.5?1:-1;const[body,fin]=FC[Math.floor(Math.random()*FC.length)];const s=10+Math.random()*16;return{x:d===1?-s*3:canvas.width+s*3,y:40+Math.random()*(canvas.height-80),dir:d,speed:0.3+Math.random()*0.5,size:s,body,fin,wobble:Math.random()*Math.PI*2,wobbleSpeed:0.03+Math.random()*0.02,opacity:0.13+Math.random()*0.13};}
function mb(){return{x:20+Math.random()*(canvas.width-40),y:canvas.height+10,r:2+Math.random()*5,speed:0.4+Math.random()*0.6,drift:(Math.random()-0.5)*0.3,opacity:0.06+Math.random()*0.1};}
const fish=Array.from({length:7},mf);
const bubbles=Array.from({length:20},()=>{const b=mb();b.y=Math.random()*canvas.height;return b;});
function df(f){ctx.save();ctx.globalAlpha=f.opacity;ctx.translate(f.x,f.y+Math.sin(f.wobble)*2);if(f.dir===-1)ctx.scale(-1,1);const s=f.size;ctx.beginPath();ctx.ellipse(0,0,s,s*0.55,0,0,Math.PI*2);ctx.fillStyle=f.body;ctx.fill();ctx.beginPath();ctx.moveTo(-s*0.8,0);ctx.lineTo(-s*1.5,-s*0.6);ctx.lineTo(-s*1.5,s*0.6);ctx.closePath();ctx.fillStyle=f.fin;ctx.fill();ctx.beginPath();ctx.arc(s*0.4,-s*0.1,s*0.12,0,Math.PI*2);ctx.fillStyle='rgba(255,255,255,0.7)';ctx.fill();ctx.restore();}
function db(b){ctx.save();ctx.globalAlpha=b.opacity;ctx.beginPath();ctx.arc(b.x,b.y,b.r,0,Math.PI*2);ctx.strokeStyle='#378ADD';ctx.lineWidth=0.8;ctx.stroke();ctx.restore();}
function animate(){ctx.clearRect(0,0,canvas.width,canvas.height);fish.forEach((f,i)=>{f.wobble+=f.wobbleSpeed;f.x+=f.speed*f.dir;if(f.dir===1&&f.x>canvas.width+f.size*3)fish[i]=mf();if(f.dir===-1&&f.x<-f.size*3)fish[i]=mf();df(f);});bubbles.forEach((b,i)=>{b.y-=b.speed;b.x+=b.drift;if(b.y<-b.r*2)bubbles[i]=mb();db(b);});requestAnimationFrame(animate);}
animate();
})();
</script>

<canvas id="ph-bg" style="position:fixed;top:0;left:0;width:100%;height:100%;pointer-events:none;z-index:0;"></canvas>
<script>
(function(){
const canvas = document.getElementById('ph-bg');
if (!canvas) return;
const ctx = canvas.getContext('2d');
function resize(){ canvas.width = window.innerWidth; canvas.height = window.innerHeight; }
resize();
window.addEventListener('resize', resize);

const COLORS = [
  ['#F0997B','#D85A30'],['#5DCAA5','#0F6E56'],['#85B7EB','#185FA5'],
  ['#FAC775','#BA7517'],['#ED93B1','#993556'],['#97C459','#3B6D11'],
];

function makeFish() {
  const dir = Math.random() > 0.5 ? 1 : -1;
  const [body, fin] = COLORS[Math.floor(Math.random() * COLORS.length)];
  const size = 10 + Math.random() * 18;
  return {
    x: dir === 1 ? -size * 4 : canvas.width + size * 4,
    y: 60 + Math.random() * (canvas.height - 120),
    dir, speed: 0.25 + Math.random() * 0.5, size, body, fin,
    wobble: Math.random() * Math.PI * 2,
    wobbleSpeed: 0.025 + Math.random() * 0.02,
    opacity: 0.13 + Math.random() * 0.14,
  };
}

function makeBubble() {
  return {
    x: 20 + Math.random() * (canvas.width - 40),
    y: canvas.height + 10,
    r: 2 + Math.random() * 5,
    speed: 0.35 + Math.random() * 0.55,
    drift: (Math.random() - 0.5) * 0.25,
    opacity: 0.07 + Math.random() * 0.1,
  };
}

const fish = Array.from({length: 8}, makeFish);
const bubbles = Array.from({length: 22}, () => {
  const b = makeBubble(); b.y = Math.random() * canvas.height; return b;
});

function drawFish(f) {
  ctx.save();
  ctx.globalAlpha = f.opacity;
  ctx.translate(f.x, f.y + Math.sin(f.wobble) * 2);
  if (f.dir === -1) ctx.scale(-1, 1);
  const s = f.size;
  ctx.beginPath(); ctx.ellipse(0, 0, s, s * 0.55, 0, 0, Math.PI * 2);
  ctx.fillStyle = f.body; ctx.fill();
  ctx.beginPath(); ctx.moveTo(-s * 0.8, 0); ctx.lineTo(-s * 1.5, -s * 0.6); ctx.lineTo(-s * 1.5, s * 0.6); ctx.closePath();
  ctx.fillStyle = f.fin; ctx.fill();
  ctx.beginPath(); ctx.arc(s * 0.4, -s * 0.1, s * 0.12, 0, Math.PI * 2);
  ctx.fillStyle = 'rgba(255,255,255,0.65)'; ctx.fill();
  ctx.restore();
}

function drawBubble(b) {
  ctx.save(); ctx.globalAlpha = b.opacity;
  ctx.beginPath(); ctx.arc(b.x, b.y, b.r, 0, Math.PI * 2);
  ctx.strokeStyle = '#378ADD'; ctx.lineWidth = 0.8; ctx.stroke();
  ctx.restore();
}

let raf;
function animate() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  fish.forEach((f, i) => {
    f.wobble += f.wobbleSpeed; f.x += f.speed * f.dir;
    if (f.dir === 1 && f.x > canvas.width + f.size * 4) fish[i] = makeFish();
    if (f.dir === -1 && f.x < -f.size * 4) fish[i] = makeFish();
    drawFish(f);
  });
  bubbles.forEach((b, i) => {
    b.y -= b.speed; b.x += b.drift;
    if (b.y < -b.r * 2) bubbles[i] = makeBubble();
    drawBubble(b);
  });
  raf = requestAnimationFrame(animate);
}
animate();
})();
</script>

We arrived in the Philippines exhausted after a 15-hour travel day and a 5-hour airport layover with no lounges (I know, poor us, traveling the world with no lounges at the airport, life is hard). We took a taxi to our hotel.

This should have been a 5-minute ride and our driver seemed normal at first, but as he crept along at a snail's pace it became clear something was very off about him. He spent the first couple of minutes trying to upsell us into hiring him as our driver for future days. He was babbling on, I was clinging to the seat in front of me, the car jerked forward and back as he constantly stalled. Ryker slyly passed me his phone. "I think this guy is on something" was written in his notes app. The taxi driver was either tweaking or incredibly drunk, neither a good scenario for someone driving you around. We attempted to appease his chattering, fingers crossed we would make it to our hotel. Which we did, 17 minutes later. An odd introduction to the Philippines that proved to be, thankfully, the worst interaction we would have with the locals.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/tricycle-pov-puerto-princesa.jpg" alt="POV from inside a Filipino tricycle taxi in Puerto Princesa" />
  <figcaption>The Filipino tricycle: our preferred alternative to possibly-drunk taxi drivers.</figcaption>
</figure>

Ryker and I never intended to visit the Philippines on this trip. Miles (Ryker's little brother) was the great mind behind the idea. Despite that, Ryker and I handled the vast majority of the planning.

I have started to LOVE reading guidebooks. I do not care if that makes me a tourist, I am one, and it's a great way to get good information and learn a lot about a place. I also find them exceedingly helpful and consistently more objective than social media recommendations, which tend to all be the exact same places. Furthermore, guidebooks allow me to read about a place without seeing a place. Social media tends to romanticize things and edit videos and photos to paint a very particular and oftentimes inaccurate or overblown picture. So guidebooks carry the added bonus of managing expectations and letting me see and explore things for the first time without feeling like I've already seen 100 videos of the exact place I am going. I have gotten all my guidebooks on my iPad from the Seattle Public Library. After reading Lonely Planet's book on the Philippines, we settled on a route through Palawan, aiming to avoid the monsoons that oftentimes hit the country in the east. See my hand-drawn map of our route below!

## Our First Visitor

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/miles-ryker-meg-tuk-tuk.jpg" alt="Miles, Ryker, and Meg smiling inside a tuk-tuk in the Philippines" />
  <figcaption>The whole crew, assembled and ready to cause trouble.</figcaption>
</figure>

Ryker's brother graced us with his presence for a full 8 days. He was working remotely the whole time so we had a fun time navigating WiFi in a country with some of the least reliable infrastructure I have ever seen.

## Puerto Princesa

Did we want to go here? No, but it's where the airport is on Palawan, so to Puerto Princesa we went. We arranged to have one rest day here (Miles had already been there for a week or so) and then continue on.

I had two goals: get a Geocache and visit one specific brewery. The Geocache was a complete fail. I, as many of you know, love Geocaching, especially while traveling, as it brings me to cool places and gives my exploring a sense of purpose and direction. The Philippines in general have very few Geocaches and the whole island of Palawan has less than 10. The one in Puerto Princesa was a virtual cache (meaning I had to go to a specific place and provide answers to questions that could only be found there). It happened to be in the port where the cruise ships dock. I dragged Ryker all around trying to get in and was turned away by security guards at every entrance. It turned out this Geocache was only for the cruisers (which is against the rules, they're supposed to be in public places, but I digress).

My second goal was a stunning success. We went to the Palawan Brewery, which has the following awards:

<div class="awards-wrap" style="padding:1.5rem 0.5rem;display:flex;flex-direction:column;gap:14px;">
<style>
@keyframes pop-in{0%{transform:scale(0.5) translateY(20px);opacity:0}70%{transform:scale(1.08) translateY(-4px)}100%{transform:scale(1) translateY(0);opacity:1}}
@keyframes spin-medal{0%{transform:rotateY(0deg)}100%{transform:rotateY(360deg)}}
@keyframes star-twinkle{0%,100%{opacity:1;transform:scale(1)}50%{opacity:0.4;transform:scale(0.7)}}
@keyframes ribbon-wave{0%,100%{transform:skewX(0deg)}25%{transform:skewX(2deg)}75%{transform:skewX(-2deg)}}
@keyframes float{0%,100%{transform:translateY(0)}50%{transform:translateY(-5px)}}
.award-card{display:flex;align-items:center;gap:16px;background:#fff;border:1.5px solid #EF9F27;border-radius:12px;padding:14px 18px;opacity:0;animation:pop-in 0.5s cubic-bezier(0.34,1.56,0.64,1) forwards;cursor:default;transition:border-color 0.2s,background 0.2s;}
.award-card:hover{background:#FAEEDA;border-color:#BA7517;}
.award-card:nth-child(1){animation-delay:0.1s}.award-card:nth-child(2){animation-delay:0.25s}.award-card:nth-child(3){animation-delay:0.4s}.award-card:nth-child(4){animation-delay:0.55s}
.medal-wrap{flex-shrink:0;display:flex;flex-direction:column;align-items:center;gap:3px;animation:float 3s ease-in-out infinite;}
.award-card:nth-child(2) .medal-wrap{animation-delay:0.3s}.award-card:nth-child(3) .medal-wrap{animation-delay:0.6s}.award-card:nth-child(4) .medal-wrap{animation-delay:0.9s}
.medal{width:48px;height:48px;border-radius:50%;background:#EF9F27;border:3px solid #BA7517;display:flex;align-items:center;justify-content:center;font-size:22px;animation:spin-medal 4s ease-in-out infinite;}
.medal-ribbon{width:12px;height:10px;background:#D4537E;border-radius:1px;animation:ribbon-wave 2s ease-in-out infinite;}
.medal-ribbon-2{background:#D85A30;}
.award-stars{display:flex;gap:3px;margin-top:2px;}
.award-star{width:10px;height:10px;background:#EF9F27;clip-path:polygon(50% 0%,61% 35%,98% 35%,68% 57%,79% 91%,50% 70%,21% 91%,32% 57%,2% 35%,39% 35%);}
.award-star:nth-child(1){animation:star-twinkle 1.4s ease-in-out infinite;animation-delay:0s}.award-star:nth-child(2){animation:star-twinkle 1.4s ease-in-out infinite;animation-delay:0.2s}.award-star:nth-child(3){animation:star-twinkle 1.4s ease-in-out infinite;animation-delay:0.4s}
.award-text{flex:1;}
.award-number{font-size:10px;font-weight:500;color:#BA7517;text-transform:uppercase;letter-spacing:0.08em;margin-bottom:3px;}
.award-title{font-size:17px;font-weight:500;color:#1a1a1a;line-height:1.3;}
.award-badge{flex-shrink:0;background:#FAEEDA;border:1px solid #EF9F27;border-radius:20px;padding:4px 10px;font-size:11px;font-weight:500;color:#854F0B;transition:background 0.2s,color 0.2s;}
.award-card:hover .award-badge{background:#EF9F27;color:#412402;}
.confetti-row{display:flex;justify-content:center;gap:6px;padding:6px 0 0;opacity:0;animation:pop-in 0.4s ease forwards;animation-delay:0.9s;}
.conf{width:8px;height:8px;border-radius:2px;animation:star-twinkle 1s ease-in-out infinite;}
.conf:nth-child(1){background:#D4537E;animation-delay:0.0s}.conf:nth-child(2){background:#EF9F27;animation-delay:0.1s}.conf:nth-child(3){background:#1D9E75;animation-delay:0.2s}.conf:nth-child(4){background:#378ADD;animation-delay:0.3s}.conf:nth-child(5){background:#EF9F27;animation-delay:0.4s}.conf:nth-child(6){background:#D85A30;animation-delay:0.5s}.conf:nth-child(7){background:#7F77DD;animation-delay:0.6s}
</style>
<div class="award-card">
  <div class="medal-wrap"><div class="medal-ribbon"></div><div class="medal">🥇</div><div class="award-stars"><div class="award-star"></div><div class="award-star"></div><div class="award-star"></div></div></div>
  <div class="award-text"><div class="award-number">Award 1</div><div class="award-title">1st Craft Beer Brewery in Palawan, The Last Frontier's First Craft Beers</div></div>
  <div class="award-badge">Palawan</div>
</div>
<div class="award-card">
  <div class="medal-wrap"><div class="medal-ribbon medal-ribbon-2"></div><div class="medal">🏆</div><div class="award-stars"><div class="award-star"></div><div class="award-star"></div><div class="award-star"></div></div></div>
  <div class="award-text"><div class="award-number">Award 2</div><div class="award-title">1st Female Craft Beer Brewers in the Philippines!</div></div>
  <div class="award-badge">Historic</div>
</div>
<div class="award-card">
  <div class="medal-wrap"><div class="medal-ribbon"></div><div class="medal">🎖️</div><div class="award-stars"><div class="award-star"></div><div class="award-star"></div><div class="award-star"></div></div></div>
  <div class="award-text"><div class="award-number">Award 3</div><div class="award-title">The 1st Microbrewery Tour in the Philippines</div></div>
  <div class="award-badge">National</div>
</div>
<div class="award-card">
  <div class="medal-wrap"><div class="medal-ribbon medal-ribbon-2"></div><div class="medal">⭐</div><div class="award-stars"><div class="award-star"></div><div class="award-star"></div><div class="award-star"></div></div></div>
  <div class="award-text"><div class="award-number">Award 4</div><div class="award-title">The First Offshore Philippine Craft Beer Brand</div></div>
  <div class="award-badge">Global</div>
</div>
<div class="confetti-row"><div class="conf"></div><div class="conf"></div><div class="conf"></div><div class="conf"></div><div class="conf"></div><div class="conf"></div><div class="conf"></div></div>
</div>

Given that stunning list of accolades I expected the place to be packed. It was empty, completely. Not a soul but the three of us. The beer and rum was amazing, the kind of place that makes you contemplate if sending back a six-pack or a fifth is worth the cost: deep dark purple ube cream ale, sweet coconut rum, and even an IPA! Naturally we had to try it all. Good thing we are on vacation, except poor Miles who had to work the next day.

After about an hour, an eclectic group arrived at the restaurant, a mix of Filipinos and Canadians we later found out. They sat down and seconds later a karaoke machine materialized out of thin air. Did you know that in the Philippines, if you click your heels three times, a woman with perfect pitch will appear and start singing your favorite Adele song? We had heard that karaoke was taken seriously here but we were not prepared for how absolutely amazing the singing was, like jaw-on-the-ground, conversation-stopping good.

In good fun we all joined in. Miles and Ryker did some duets: Cee Lo Green's "Fuck You" and a deep-voiced Morgan Wallen. I also tried my best with Taylor Swift and Miranda Lambert. Really we were just singing to give the woman with the voice of an angel a break. But the most important part was that we had fun and got to check karaoke in the Philippines off the bucket list.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/ryker-miles-brewery-night.jpg" alt="Ryker and Miles at the Palawan Brewery at night" />
  <figcaption>Ryker and Miles at the Palawan Brewery, pre-karaoke, blissfully unaware of what's about to happen.</figcaption>
</figure>

## Port Barton

In my guidebook reading, Port Barton was the place I was most excited to see in Palawan, much to the dismay of Miles who wanted to spend more time in El Nido (but Port Barton eventually won him over). It's a small fishing village north of Puerto Princesa and smack in the middle of Palawan. We were told there are only 1,000 beds available for sleeping, compared to El Nido's 5,000, to give a sense of scale.

Now despite really wanting to go here, I had no idea what there was to do. In fact, I had left most of the day-to-day activities up to Ryker. So you can see how we ended up riding dirt bikes for the 3 days we were there.

Ryker and Miles "were basically born on those machines" and are "dirt-bike natives," according to their mother, Janine. So day one, I dipped my toes in by being a backpack (the act of riding as a passenger on a bike). After two wrong turns and an escort by an elementary-school-aged child, Ryker dropped me at a secluded beach to read, and the brothers raced off into the jungle.

They appeared 2 hours later, grinning and covered in dirt.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/13/gallery/ryker-dirt-bike-beach.jpg" alt="Ryker on a Surron electric dirt bike on a white sand beach in Port Barton" /></figure>
  <figure><img loading="lazy" src="/media/posts/13/gallery/ryker-dirt-bike-hilltop.jpg" alt="Ryker on a Surron dirt bike at a hilltop overlook with ocean views behind him" /></figure>
</div>

Ryker: Dirt bike riding in Port Barton was tied for the highlight of the trip. If I think back to all of the good memories that I had growing up with my brothers, it was always on a dirt bike. It was the only activity we could do as a family because of one crucial detail: no one was able to talk!

The first day of dirt bike riding, Miles and I explored the mountains and beaches surrounding Port Barton. And in all honesty, dirt bike riding was probably the most effective way of seeing the area. The infrastructure and roads of the Philippines are famously bad, no central planning. As soon as you left the town, the roads immediately turned to dirt. Half of them were eroded by rain, there were lots of rocks, and it was a very bumpy ride. Perfect for a dirt bike.

Miles and I were both very excited to ride because they were electric dirt bikes! Miles and I were able to rent Surron Ultra Bees. I had never ridden a Surron Ultra Bee and my God are those things ridiculous. We ventured out of town maybe 15 km and found our way up to the top of the mountain where we were able to take in the beautiful view, the clearest blue water you've ever seen, white fluffy clouds, and islands rising out of the ocean.

On the ride back, I stopped to put away my Insta360 camera into my backpack. I pulled off to the shoulder and while Miles was waiting, he was doing wheelies. And if you know my brother, he is famous for crashing while doing wheelies. Please guess what happened next.

He crashed.

After throwing the Surron into sport mode, he gave it just a little too much throttle and the whole thing came crashing down. Luckily he wasn't hurt too badly, just road rash on his ass cheek and a dinged-up knee. The bike wasn't in too bad of condition either, just a few plastic pieces broken.

The next day, Miles and I went out with a guide, essentially a wild Eastern European man who had been riding around the Philippines on dirt bikes for the past couple of months and was a friend of the owners. Free of charge, he took Miles and me out to some of his favorite beaches and showed us all the spots he'd found. We hauled ass. I'm surprised we made it out of there alive. There were some really sketchy spots he took us to, but luckily, having grown up riding these machines, Miles and I managed with no difficulties.

Miles had to catch a 1 PM van to El Nido so he took off that afternoon, leaving the Surron to Meg and me to ride around. Meg and I spent the afternoon riding the Surrons and exploring. She did wonderfully! For those of you who don't know, Meg also has her motorcycle license and has plenty of experience riding the Honda 90, a cute little motorcycle from the 80s.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/meg-dirt-bike-jungle-road.jpg" alt="Meg riding a Surron electric dirt bike on a jungle dirt road in Port Barton" />
  <figcaption>Meg, absolutely in her element.</figcaption>
</figure>

Meg was riding up over logs and through rivers without crashing. We are very proud of Meg. I took her out to a beach that the wild Eastern European man (who has probably killed people) showed Miles and me that morning. You had to pop over a log to get out to the beach. Meg took it nice and easy, but unfortunately, taking it nice and easy makes it quite a bit more difficult. Long story short, she almost sent the Surron flying into the ocean.

What a wonderful way to spend a couple of days in Port Barton. Two takeaways from this adventure. Number one: riding dirt bikes is probably the best way to get around Southeast Asia, and I loved it so much. Takeaway number two: I will be promptly buying an electric dirt bike as soon as we arrive home after this world trip.

Thank you for your attention to this matter.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/meg-waterfall-port-barton.jpg" alt="Meg sitting on rocks in front of a waterfall near Port Barton" />
  <figcaption>Between all the dirt bikes, there was also this.</figcaption>
</figure>

## Traveling North

Our travels from Port Barton to Coron took 48 hours. First, a van. We had learned from our mistakes the first time around. Sitting in the back was akin to feeding Ryker a rotten apple. Prepared, we walked up and asked the driver to sit in front, explaining Ryker's car sickness, and we thought all was well. However, our fellow travelers, overhearing this conversation, all spontaneously also developed extreme car sickness, another group lunging into the front seat before we had even blinked. We were dumbfounded. Really? This behavior is to be expected of children vying for a spot in the front of the lunch line, but grown adults? Luckily our driver shooed out the imposters, who retreated to the back of the van feigning innocence, but we stared them down anyway, wanting them to feel the shame they deserved. Ryker slyly palmed the driver a hefty tip and we got rocked, bumped, jolted, and thrashed over the next 4 hours by the fraught road. I have never been so happy to be in the front seat.

We reached our destination for the night: El Nido. A very popular and highly recommended tourist town sitting below sweeping limestone cliffs. While El Nido was beautiful, all my research pointed towards not spending much time there, the only real activity was to do 1 of 4 boat tours that seemed crowded and expensive. So despite Miles's pleas, we ate dinner, slept, and headed out the next day on a ferry for our final destination in the Philippines: Coron.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/13/gallery/el-nido-limestone-cliffs.jpg" alt="Towering limestone cliffs looming over El Nido rooftops and town" /></figure>
  <figure><img loading="lazy" src="/media/posts/13/gallery/ryker-el-nido-harbor.jpg" alt="Ryker with backpack looking out at El Nido harbor and boats" /></figure>
</div>

The one win I will award Coron was the best food item of the Philippines, which came in an unexpected form: juice. Buko juice, to be exact, young coconut blended with ice. A surprisingly sweet and creamy combo that was the perfect satisfying sip to ward off the heat and humidity. "Buko" holds a special place in the hearts of the Bukowski brothers as they all grew up playing video games with the gamertags BukoBoot1, BukoBoots2, etc. Hence where the "Buko" of mookoBUKO comes from, and in the Philippines it's a flavor: young coconut.

## Coron

Coron was our big stop on Palawan, the head honcho. Ryker and I planned to have about 6 days to explore while Miles ducked back to China in just two. We all stayed just out of town at a lovely Airbnb that had freestanding bamboo huts, little porches attached and everything, and most importantly strong AC. Included for free was hot water and an adorable, out-of-place-looking golden retriever and a rambunctious kitten.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/13/gallery/coron-airbnb-bamboo-hut.jpg" alt="Bamboo hut with porch and potted plants at the Coron Airbnb" /></figure>
  <figure><img loading="lazy" src="/media/posts/13/gallery/miles-airbnb-kitten.jpg" alt="Miles holding the rambunctious Airbnb kitten up to his face with delight" /></figure>
</div>

We had our first truly Filipino meal at the aptly named Island Boy and got to try Sligsig, a delicious and very sour soup.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/meg-gives-ryker-haircut.jpg" alt="Meg giving Ryker a haircut with clippers in the Coron Airbnb bathroom" />
  <figcaption>Life on the road means Meg is now also my barber. She did great.</figcaption>
</figure>

## WWII Wrecks: Up Close, Scuba Diving

Fun fact time! The Philippines was absolutely ravaged by World War Two. Manila (the capital) actually sustained the 2nd most damage right behind Warsaw, Poland. Planes went down, ships went down, a lot of things got wrecked, and many years later that same damage led to a very niche tourism industry: wreck diving. It's said that the Open Water Course is to Koh Tao as Wreck Certification is to Coron.

I personally have no interest in getting wreck certified or going into these underwater sunken ships. I clearly remember Ariel doing that and then having to go head-to-head with a shark, no thank you. My more serious reasoning is silt. This very fine muck found on the sea floor absolutely dusts the inside of every surface of these wrecks. Silt is not at all harmful by itself, but all it takes is one idiot kicking in the wrong direction, then bam: silt fills the water fast, swarming your vision. All you can see is the glass on the inside of your goggles going gray. Now imagine that scenario but you're breathing through a tank that will run out of air, you can't swim up because you're inside a ship, you don't know which way is up or down, and you can't hear anything. That sounds like my worst nightmare, which is why I chose to swim my little self around the outside of the ships, oohing and aahing from a safe distance.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/wreck-dive-illustration.jpg" alt="Illustrated scene of two divers giving peace signs in front of a coral-covered WWII shipwreck, with Miles waving from a porthole" />
  <figcaption>An accurate depiction of events. Miles is the one in the porthole.</figcaption>
</figure>

Miles, being insane, went into all the ships, to each their own.

We dove at a total of 3 sites that day: two wrecks and a coral reef. The first was Teru Kade Maru, an anti-sub boat that's 90 ft long and sunk 60 ft underwater. The second was Morazan Maru, a 300-ft-long former US ship sitting 75 ft underwater.

I was feeling off and a bit nauseous and decided to sit the third dive out, but I had a wonderful time paddling about on the surface. Ryker reports that I missed a stingray sighting.

<div class="photo-trio">
  <figure><img loading="lazy" src="/media/posts/13/gallery/meg-ryker-dive-boat-outrigger.jpg" alt="Meg and Ryker sitting on the dive boat outrigger with Coron islands in the background" /></figure>
  <figure><img loading="lazy" src="/media/posts/13/gallery/divers-surface-peace-signs.jpg" alt="Two divers surfacing near the dive boat throwing peace signs" /></figure>
  <figure><img loading="lazy" src="/media/posts/13/gallery/three-divers-clear-water.jpg" alt="Three divers in crystal-clear shallow water giving shaka signs near the wreck site" /></figure>
</div>

## Once Upon a Time a Spaniard and a German Crashed an Airplane While Hunting for Pearls

It surprises no one that I prioritize geocaching while traveling. I find it's a great way to explore new places with a purpose and often takes me to places I never would have found on my own. Ryker is tepid on geocaching, he'll come along and patiently wait while I search, but I think this experience finally got him a bit more hooked.

Geocaching is more popular in some countries than others. The US and Germany are littered with them; this was not the case in the Philippines. After failing in Puerto Princesa, a cache in Coron was my last chance. Ryker had the scooter rented and I talked him into an hour-long drive west for an adventure.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/meg-ryker-scooter-mountain-road.jpg" alt="Meg and Ryker selfie on a scooter on a mountain dirt road in Coron" />
  <figcaption>The hour-long scooter drive west. Worth every single bump.</figcaption>
</figure>

The geocache I sought sat on an airplane that had crashed in the ocean in 1971. A Spaniard and a German came to Coron, on the island of Busuanga, to hunt for a very rare type of pearl. They crashed with over $3 million USD worth of cargo in a tropical storm and had to survive for 2 months before a fisherman found them. The plane still sits half submerged in the water.

We rented a kayak and paddled 20 minutes over and it was even cooler than I thought it would be. I have never felt more like Indiana Jones. We managed to get our kayak inside the plane and could step out in about 2 feet of water. We could climb on top and walk the wings of the plane. We were not alone, two French girls were also exploring the plane and helped me find the geocache. They also brought a drone and were able to share some amazing photos with us.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/aerial-drone-crashed-plane.jpg" alt="Aerial drone shot of the 1971 crashed plane half-submerged in a mangrove lagoon near Coron — kayak visible inside the fuselage" />
  <figcaption>The French girls' drone shot. You can see our kayak tucked right inside the fuselage.</figcaption>
</figure>

Overall, the coolest location for a geocache I have ever seen. I felt so lucky to have experienced it, and even more so when our Airbnb host informed us the government was planning on removing the plane from the water the following year.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/13/gallery/meg-ryker-geocache-waterfront.jpg" alt="Meg and Ryker smiling at the waterfront near the crashed plane geocache location" /></figure>
  <figure><img loading="lazy" src="/media/posts/13/gallery/palawan-island-panorama.jpg" alt="Panoramic view of Palawan islands and open ocean from a hillside along the scooter route" /></figure>
</div>

## The Super Ultimate Island Hopping Coron Experience Tour

This tour is the talk of the town, the thing to do in Coron, and like most things it starts very early in the morning. We got picked up around 7 AM and taken to the pier, then loaded onto a boat with about 15 other people. The tour was actually a big highlight of the trip, a full day boating around to different interesting locations in the area. Here are those spots:

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/ryker-meg-boat-bow-limestone.jpg" alt="Ryker and Meg sitting together on the bow of the island hopping boat with limestone karst islands behind them" />
  <figcaption>Our floating office for the day.</figcaption>
</figure>

Kayangan Lake: The cleanest lake in the Philippines! Sacred to the indigenous people, who performed a ritual asking the nature spirits for permission before tourists were allowed in at all.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/meg-ryker-kayangan-viewpoint.jpg" alt="Meg and Ryker at the Kayangan Lake viewpoint overlooking karst limestone islands and fish farms" />
  <figcaption>The viewpoint hike before descending to Kayangan Lake. That water color is completely real.</figcaption>
</figure>

Barracuda Lake: THIS ONE WAS THE COOLEST. Barracuda Lake sits in a volcanic crater, as you descend the water goes from comfortable to literal hot tub temperature at 14 meters, then cools again. One of only two places in the world where this happens. It makes for insane free diving. While we were there, Ryker (ME) dove down probably about 25 ft, you can go deep with flippers on. I found a lost snorkeling mask, which we were looking to buy anyway. Apparently a few people have died here from drinking and diving stupidly, and now you can't free dive unless you're certified... but I did anyway because, fuck 'em, that's why. [Insert cool emoji here.]

Twin Lagoon: Two lagoons divided by a limestone wall with a narrow passage that only opens at low tide, so whether you can swim between them is entirely the ocean's decision.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/13/gallery/meg-kayaking-limestone-lagoon.jpg" alt="Meg kayaking toward towering limestone cliffs in the Twin Lagoon area of Coron" />
  <figcaption>Paddling into Twin Lagoon. The walls go straight up on both sides.</figcaption>
</figure>

Twin Peaks Coral Garden & Balinsasayaw Reef: Named after the swiftlet bird whose saliva-built nests are harvested by the local people and sold for bird's nest soup. A single kg can sell for up to $2,000 USD. The reef below was neons and purples. This snorkeling experience was the single most alive reef that either Meg or I had ever been to. It was insane.

CYC Beach: Honestly... just a beach with a little store to buy beer.

Beach 91: Buffet lunch on the beach.

At the end of our time, back on the boat with no plans to reenter the water, our guide turned and in a most serious tone asked me what animals I feared while swimming in the deep dark blue. Now I grew up loving when teachers asked me questions, especially when I knew the answer, this felt like that, except I had not studied. I felt "shark" was too basic and not the correct answer; "giant squid" also felt a little too out there. "Jellyfish" is what I settled on, and I was met with a nod of approval.

Our guide went on to tell us about all the dangerous animals lurking in the waters we had just swum.

Rockfish: Looks exactly like a rock, sits motionless on the ocean floor, and has 13 venomous spines along its back that inject venom when stepped on, pain so severe people have reportedly begged for amputation.

Box Jelly: The most venomous marine animal on earth, nearly invisible in the water, tentacles up to 10 feet long, capable of stopping your heart in under five minutes.

Sea Snake: More venomous than almost any land snake, though bites are rare as they only attack when cornered or handled. Still very scary.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/13/gallery/coron-hilltop-cross-trail.jpg" alt="Trail leading up to the hilltop cross above Coron town, ocean visible below" /></figure>
  <figure><img loading="lazy" src="/media/posts/13/gallery/ryker-meg-coron-bay-overlook.jpg" alt="Ryker and Meg selfie at the hilltop overlook above Coron town and bay" /></figure>
</div>

Would Recommend:

Palawan Brewery in Puerto Princesa 
La Santa in Port Barton 
Bikes and Bites in Port Barton

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/13/gallery/ryker-airport-cebu-pacific.jpg" alt="Ryker at the tarmac of a small Philippine airport looking at a Cebu Pacific propeller plane" /></figure>
  <figure><img loading="lazy" src="/media/posts/13/gallery/cebu-pacific-window-palawan-islands.jpg" alt="View of Palawan islands from the window of a Cebu Pacific propeller plane" /></figure>
</div>
