---
title: "Borneo: Malaysia Edition"
subtitle: "Five-star jungles, ancient caves, and a laptop left at the gate"
date: 2026-03-21
location: "Borneo, Malaysia"
locationEmoji: "🇲🇾"
heroImage: "/media/posts/15/gallery/malaysia-cave-mouth-jungle-view.jpg"
heroColor: "#166534"
excerpt: "We came for the Marriott points. We stayed for the oldest rainforest on earth, caves the size of airports, and the most terrifying night walk of Meg's life."
tags:
  - { label: "🌿 Borneo", color: "#166534" }
  - { label: "🦇 Caves", color: "#44403C" }
  - { label: "💳 Points Hacking", color: "#7C3AED" }
  - { label: "🌴 Jungle", color: "#15803D" }
status: "published"
---

<canvas id="borneo-bg" style="position:fixed;inset:0;width:100%;height:100%;pointer-events:none;z-index:0;"></canvas>
<script>
(function(){
const canvas=document.getElementById('borneo-bg');
if(!canvas)return;
const ctx=canvas.getContext('2d');
function resize(){canvas.width=window.innerWidth;canvas.height=window.innerHeight;}
resize();
window.addEventListener('resize',resize);
// fireflies
function mkFF(){return{x:Math.random()*canvas.width,y:Math.random()*canvas.height,vx:(Math.random()-0.5)*0.4,vy:(Math.random()-0.5)*0.3,r:1.5+Math.random()*2,phase:Math.random()*Math.PI*2,ps:0.02+Math.random()*0.03,op:0};}
const flies=Array.from({length:40},mkFF);
// bats
function mkBat(){const side=Math.random()>0.5?1:-1;return{x:side===1?-30:canvas.width+30,y:canvas.height*0.1+Math.random()*canvas.height*0.5,side,speed:0.8+Math.random()*1.2,vy:(Math.random()-0.5)*0.4,wing:0,ws:0.18+Math.random()*0.12,size:6+Math.random()*6,op:0.12+Math.random()*0.1};}
const bats=Array.from({length:10},mkBat);
// vines on edges
function drawVines(){
  ctx.save();ctx.strokeStyle='rgba(21,128,61,0.06)';ctx.lineWidth=2;
  for(let i=0;i<6;i++){
    const x=i*(canvas.width/5);
    ctx.beginPath();ctx.moveTo(x,0);
    for(let y=0;y<canvas.height;y+=20){ctx.lineTo(x+Math.sin(y*0.05+i)*18,y);}
    ctx.stroke();
  }
  ctx.restore();
}
function drawBat(b){
  ctx.save();ctx.globalAlpha=b.op;ctx.translate(b.x,b.y);if(b.side===-1)ctx.scale(-1,1);
  const w=b.size,flap=Math.sin(b.wing)*w*0.9;
  ctx.beginPath();
  ctx.moveTo(0,0);ctx.bezierCurveTo(-w*0.3,-flap,-w,-flap*0.5,-w*1.2,0);
  ctx.bezierCurveTo(-w,-flap*0.3,-w*0.3,flap*0.1,0,0);
  ctx.moveTo(0,0);ctx.bezierCurveTo(w*0.3,-flap,w,-flap*0.5,w*1.2,0);
  ctx.bezierCurveTo(w,-flap*0.3,w*0.3,flap*0.1,0,0);
  ctx.fillStyle='rgba(30,20,40,0.7)';ctx.fill();
  ctx.restore();
}
function drawFirefly(f){
  const glow=0.5+0.5*Math.sin(f.phase);
  ctx.save();ctx.globalAlpha=glow*0.55;
  const g=ctx.createRadialGradient(f.x,f.y,0,f.x,f.y,f.r*4);
  g.addColorStop(0,'rgba(220,255,120,0.9)');g.addColorStop(1,'rgba(180,255,80,0)');
  ctx.fillStyle=g;ctx.beginPath();ctx.arc(f.x,f.y,f.r*4,0,Math.PI*2);ctx.fill();
  ctx.restore();
}
let t=0;
function animate(){
  ctx.clearRect(0,0,canvas.width,canvas.height);
  drawVines();
  flies.forEach((f,i)=>{
    f.phase+=f.ps;f.x+=f.vx;f.y+=f.vy;
    if(f.x<0||f.x>canvas.width||f.y<0||f.y>canvas.height)flies[i]=mkFF();
    drawFirefly(f);
  });
  bats.forEach((b,i)=>{
    b.wing+=b.ws;b.x+=b.speed*b.side;b.y+=b.vy;
    if(b.side===1&&b.x>canvas.width+40)bats[i]=mkBat();
    if(b.side===-1&&b.x<-40)bats[i]=mkBat();
    drawBat(b);
  });
  t++;
  requestAnimationFrame(animate);
}
animate();
})();
</script>

## Yet Another Travel Day

Our route to Malaysia took us from Bali to Singapore for a long layover before landing in Kota Kinabalu. In Singapore we took advantage of our lounge access, getting a delicious dinner and of course, a couple of drinks. Ryker and I had been pretty light on food this day so Ryker's couple of beers and my couple glasses of wine, hit pretty immediately. We lounged about before sauntering towards our gate, we arrived with plenty of time and plunked down, plugged in our devices and I half-heartedly tried to download some shows using the slow airport WiFi.

The time came to board the plane, and we went through the motions. Line, ticket scanning, passport check, another line, finding our seats, and Ryker did what Ryker always does; put our bags in the overhead bin, but first he grabs the laptop so he can use it on the flight. But this time he reached into his bag and nothing, he looked up at me, "do you have the laptop?"

"No? Don't you?"

*cue bags being opened*

"fuck."

This was a problem, see airplanes have this fun rule where once you board a plane, you can't leave the plane. We called over a flight attendant and explained where the laptop was, he said he would look into it. Ryker was in full panic mode, looking defeated he ran some numbers in his head. "The laptop's worth more than the flight. It makes more sense to deplane and get the laptop than to leave it." "Oh" We were saved by a fairly empty flight and being early, the flight attendant tipped Ryker off to run and grab the device. A miracle had taken place, permission to leave and come back. Ryker zipped off the plane. This is where I was worried he wouldn't make it back on in time, and then I would be all alone. He did make it back on. And now for the foreseeable future, every time we board a flight I get to turn to Ryker with a knowing smirk and ask, "you have the laptop, right?"

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-couple-selfie-maswings-tarmac.jpg" alt="Ryker and Meg selfie on the tarmac in front of the MASWings propeller plane" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-woman-posing-maswings-tarmac.jpg" alt="Meg posing triumphantly on the Mulu tarmac in front of the MASWings plane" /></figure>
</div>

## Mulu

We had a night's rest before heading back to the airport and taking a quick 40 min hopper flight to the middle of Borneo; Mulu National Park. This little town had 3 cafes, one mini mart, a massive national park, and a 5-star Marriott. We had come for the Marriott, the national park was a plus. The point redemption was too good to pass up. 34,000 points for a 3 night stay, and due to my credit card appointed platinum status, we got free breakfast, and upgraded to the most massive suite I have ever seen. This was two huge rooms, a balcony, a massive king bed, and bigger than our apartment in Seattle.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-honeymoon-hotel-bed-setup.jpg" alt="Marriott Mulu honeymoon suite — towel swans, red balloons, rose petals and Happy Honeymoon letters on the bed" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-man-hotel-room-welcome-drink.jpg" alt="Ryker holding the hotel welcome drink tray with a big grin in the Mulu suite" /></figure>
</div>

While at the hotel we made the most of sitting in the various chairs and I donned the cushy white robe the second we entered the room. We settled into a mini routine; breakfast, park tour, lunch & lounge, park tour, dinner, and sleep. We came for the Marriott but would come back for the park.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-couple-limestone-cliffs.jpg" alt="Meg and Ryker arms wide open in front of the dramatic Mulu limestone cliffs and lush green jungle" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-jungle-river-pavilion-limestone-cliffs.jpg" alt="Jungle river with a wooden pavilion and towering limestone karst cliffs behind, Mulu National Park" /></figure>
</div>

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/15/gallery/malaysia-couple-selfie-resort-pool.jpg" alt="Ryker and Meg selfie at the Marriott Mulu pool restaurant with beers and the lush jungle pool behind them" />
  <figcaption>Vacation from our vacation, activated.</figcaption>
</figure>

## The Show Caves

Mulu National Park extends over a massive jungle, containing many glorious caves throughout. We did two different tours and saw four caves. Deer cave, which has the largest cave opening in the world, for scale it could fit 40 Boeing 747s in its mouth, as well as millions of bats. Lang cave filled with stalactites, stalagmites, and a new one called an elephant's trunk, which was a stalagmite that hung from the ceiling with a plate-like formation that poured water like a waterfall shower head. Wind cave was in fact just another cave.

<div class="cave-facts-widget" style="margin:2rem 0;display:grid;grid-template-columns:repeat(auto-fit,minmax(160px,1fr));gap:12px;">
<style>
.cf-card{background:var(--color-background-secondary);border:0.5px solid var(--color-border-tertiary);border-radius:var(--border-radius-lg);padding:1rem 1.25rem;text-align:center;}
.cf-num{font-size:28px;font-weight:500;color:var(--color-text-primary);line-height:1.1;}
.cf-label{font-size:12px;color:var(--color-text-secondary);margin-top:6px;line-height:1.4;}
</style>
<div class="cf-card"><div class="cf-num">40</div><div class="cf-label">Boeing 747s fit inside Deer Cave's mouth</div></div>
<div class="cf-card"><div class="cf-num">250km</div><div class="cf-label">of Clearwater Cave explored so far</div></div>
<div class="cf-card"><div class="cf-num">8th</div><div class="cf-label">largest cave system in the world</div></div>
<div class="cf-card"><div class="cf-num">#1</div><div class="cf-label">largest cave system in Southeast Asia</div></div>
</div>

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/15/gallery/malaysia-cave-mouth-jungle-view.jpg" alt="Looking out from inside a massive Mulu cave mouth — lush green jungle framed by dark rock" />
  <figcaption>The cave that fits 40 Boeing 747s. With room to spare.</figcaption>
</figure>

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-cave-rock-formations.jpg" alt="Dramatic cave ceiling with ancient stalactite formations lit in amber and gold" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-cave-interior-lit-boardwalk.jpg" alt="Ryker on the illuminated cave boardwalk above a green glowing underground river, light shaft pouring in from above" /></figure>
</div>

Clearwater cave was my favorite, like something out of Indiana Jones. A massive river running through the cave system which spans 250 kilometers (well that is only the amount that's been explored). It's the 8th largest cave system in the world and the largest in Southeast Asia. As you walk through the cave light pours in from above group openings, creating a similar effect as the scene from Pirates of the Caribbean 4 when they find the fountain of youth.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-two-women-cave-light-opening.jpg" alt="Meg and Ryker sitting on a cave boardwalk with a dramatic shaft of light and green jungle visible through the rock opening above" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-couple-selfie-dark-cave.jpg" alt="Ryker and Meg smiling selfie deep inside a dark cave on the boardwalk" /></figure>
</div>

After leaving the cave, you came down about a thousand steps to a platform which faced the start of a stream. This stream is crystal clear and bubbles up from underground, somehow connected to the river in Clearwater cave. Being swimsuit-less was not going to stop me from taking a dunk. Nothing feels so good as slipping into perfectly cool water and feeling it wash away three hours of accumulated gunk, sweat, and grime of cave scrambling.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/15/gallery/malaysia-jungle-river-through-trees.jpg" alt="Crystal clear jungle river winding through dense Borneo rainforest, sky visible through the canopy above" />
  <figcaption>The stream that bubbles up from underground. Perfectly cool. Worth every step.</figcaption>
</figure>

Being in these caves makes you feel small, literally in size but also in history. Limestone, which forms these caves, is soluble in carbon dioxide rich water. Meaning they formed via the rock literally dissolving, over millions of years. It's hard to describe the scale of these caves, the smell, even the energy in the air is ancient. Not in a spooky, creepy way but in a way that shows there is much to the world that we do not understand. Humans will rise and fall, and these caves will still stand, shrinking and expanding in tune with time, all through the power of water and some fascinating chemistry.

## The Jungles of Borneo

Ryker LOVES a documentary, his new fascination is with the uncontacted tribes living in the Amazon rainforest. This interest started when he was just a little guy, and watched show after show on 'the Jungles of Borneo.' He signed us up for a night tour. We arrived and were accompanied by a guide and a mother/daughter duo.

I, personally, have not spent time in a jungle, but I haven't spent lots of time in the woods. I associate the woods, especially in the PNW with silence, maybe the sound of a far off river, wind blowing through the trees. The jungle is not quiet, it shouts and screams at the top of its lungs, a constant symphony, critters and crawlers.

<div class="photo-trio">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-woman-jungle-boardwalk.jpg" alt="Meg laughing and skipping down the jungle boardwalk in Mulu National Park" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-man-jungle-trail-rainforest.jpg" alt="Ryker smiling on a jungle trail surrounded by towering Borneo rainforest, holding a snack bag" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-towering-rainforest-tree.jpg" alt="Looking straight up at a massive Borneo rainforest tree disappearing into the jungle canopy" /></figure>
</div>

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-man-suspension-bridge-rainforest.jpg" alt="Ryker walking across a long suspension bridge high in the Borneo rainforest canopy" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-couple-selfie-canopy-walkway.jpg" alt="Ryker and Meg selfie on the canopy walkway high above the jungle floor, dense green below" /></figure>
</div>

Luckily Mulu National park is filled with board walks that sit about a foot off the ground. That foot of airspace was to me like a teddy bear to a child, my literal safety blanket. Two big mistakes become clear right away. I, for some godforsaken reason, had chosen to wear my open-toed sandals. The second was not really our fault, we were supposed to bring our own flashlights? I had a mini flashlight I got for free at a fair with me, but who travels with a full sized military grade flashlight? (maybe Rudy).

We left the main boardwalk for an offshoot that took us off on a loop, and we walked into pitch black night, reliant on our guide to quite literally guide us. As I clutched my only light source (my iPhone on 34%) our guide warned us that my teddy bear had fled, the boardwalk was ending and we would be walking on bare jungle floor. Which might not sound that bad but don't worry it was bad, there were fire ants casually about, and my TOES WERE OUT.

Under 10 mins into the two hour walk and I was doing my best ballerina impression, anytime the guide spotted a fire ant. By the time the first creature was spotted I was about ready to tuck tail and run. It was a hammerhead worm. Just like a hammerhead shark with the weird horizontal face but attached to a squirmy worm body. Our next foe was a tarantula. I don't consider myself scared of spiders, but seeing this monstrosity in a tree 10 feet above, definitely had me questioning which animals I should fear. I had a full body reaction that I did not expect, nails digging into Ryker and everything.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-cave-dark-passage-headlamp.jpg" alt="Meg walking through a narrow dark cave passage, motion blur, headlamp light on the ancient rock walls" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-woman-portrait-inside-cave.jpg" alt="Meg wide-eyed and sweaty staring into the camera in pitch black jungle — pure terror face" /></figure>
</div>

<div class="fear-widget" style="margin:2rem 0;background:var(--color-background-secondary);border-radius:var(--border-radius-lg);border:0.5px solid var(--color-border-tertiary);padding:1.25rem 1.5rem;">
<style>
.fw-title{font-size:13px;font-weight:500;color:var(--color-text-secondary);text-transform:uppercase;letter-spacing:0.07em;margin-bottom:1rem;}
.fw-row{display:flex;align-items:center;gap:12px;margin-bottom:10px;}
.fw-label{font-size:14px;color:var(--color-text-primary);min-width:160px;}
.fw-bar-bg{flex:1;height:10px;background:var(--color-border-tertiary);border-radius:5px;overflow:hidden;}
.fw-bar{height:100%;border-radius:5px;transition:width 1s cubic-bezier(0.34,1.2,0.64,1);}
.fw-score{font-size:13px;font-weight:500;min-width:32px;text-align:right;}
</style>
<div class="fw-title">🪲 Meg's Borneo Fear-o-Meter</div>
<div class="fw-row"><div class="fw-label">Fire ants (toes out)</div><div class="fw-bar-bg"><div class="fw-bar" style="width:85%;background:#ef4444;"></div></div><div class="fw-score" style="color:#ef4444;">8.5</div></div>
<div class="fw-row"><div class="fw-label">Hammerhead worm</div><div class="fw-bar-bg"><div class="fw-bar" style="width:70%;background:#f97316;"></div></div><div class="fw-score" style="color:#f97316;">7.0</div></div>
<div class="fw-row"><div class="fw-label">Tarantula in tree</div><div class="fw-bar-bg"><div class="fw-bar" style="width:95%;background:#dc2626;"></div></div><div class="fw-score" style="color:#dc2626;">9.5</div></div>
<div class="fw-row"><div class="fw-label">iPhone at 34%</div><div class="fw-bar-bg"><div class="fw-bar" style="width:90%;background:#ea580c;"></div></div><div class="fw-score" style="color:#ea580c;">9.0</div></div>
<div class="fw-row"><div class="fw-label">No boardwalk</div><div class="fw-bar-bg"><div class="fw-bar" style="width:75%;background:#f59e0b;"></div></div><div class="fw-score" style="color:#f59e0b;">7.5</div></div>
<div class="fw-row"><div class="fw-label">Open-toed sandals</div><div class="fw-bar-bg"><div class="fw-bar" style="width:100%;background:#b91c1c;"></div></div><div class="fw-score" style="color:#b91c1c;">10</div></div>
</div>

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-blowpipe-cultural-experience.jpg" alt="Ryker aiming a traditional Borneo blowpipe, concentrating hard" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-man-kayaking-jungle-river.jpg" alt="Ryker lounging back in a blue kayak on a jungle river, totally at ease" /></figure>
</div>

## Kota Kinabalu

We landed back in Kota Kinabalu after a grueling 55 min flight. After landing on the tarmac, the stairs of the plane folded down for all of us 15 people to get off the plane. It was one of those little planes that don't even dock into the gate bridge… so we walked back into the KK airport, feeling as familiar with it as we are with the SEA airport LOL confidently walking through to the Grab (Uber) pick up area. we're experts already, since this was now our SECOND time there! We called a Grab and headed off to the Le Méridien.

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/15/gallery/malaysia-harbor-port-aerial-view.jpg" alt="Aerial view of Kota Kinabalu harbor with fishing boats, waterfront warehouses and islands in the distance" />
  <figcaption>Kota Kinabalu — our home base for the bougie recovery phase of this trip.</figcaption>
</figure>

In preparation for this trip, Meg and I have been saving and stacking credit card points. We have been opening new cards for their juicy sign up bonuses and are using them to pay for flights and hotel stays for this year. Before leaving work I was talking to my friend & teammate (Lee) who had spent 2 ½ years traveling around the world. He had a few pointers for me. Lee told me that Meg and I need to choose a hotel brand to get status at for the trip… confused, I said that we were mostly planning on staying at hostels, Airbnb's, guest houses… he said that you will get burnt out and tired of hostel hopping and will need a vacation from your traveling. A place to stay where you aren't scared of the water, get a comfortable bed and get a consistent work out in. BOY WAS HE RIGHT. THANK YOU LEE. After getting our butts handed to us in Bali (aka getting violently ill) and Meg not getting a solid nights sleep for the entire time we were in the Philippines… we were in need of a vacation from our travels. (Yes for those of you who are following along, the surf camp was very difficult and we needed a vacation.)

**LESSON TIME ABOUT CREDIT CARD POINTS AND TRAVEL HACKING:** I (Ryker) applied for the American Express Bonvoy Brilliant card, but was REJECTED! AN ABSOLUTE OUTRAGE. HAVE YOU SEEN MY CREDIT? I knew I had applied for too many cards recently… so I do what any logical credit card enthusiast would do. "Meg… what is your social security number?" I shout from the other side of the room. So, yes - it is Meg who is the Platinum member at Marriott and it is Meg who got the 200k sign up bonus. But you know what that means right? I have an opportunity to open another Bonvoy Brilliant card again in the future heheheeh.

So… what does a platinum status and 200 - 250k Marriott points get you? Well good question. Quite a lot actually. Especially for what we needed it for. 3 nights at the 5-star Marriott property in the middle of the jungle? (Marriott's top 9 most unique properties and one of their most remote) - only 38k points. And then 3 nights at the Le Méridien? 52k points. At Mulu we automatically upgraded to a suite… which was larger than our Queen Anne apartment! and the Le Méridien, we got upgraded to a top floor ocean view, welcome wine and room service and had access to the Marriott lounge, which you can think of like an airport lounge. Complimentary breakfast, afternoon snacks, happy hour, drinks, dinner.

<div class="points-widget" style="margin:2rem 0;background:var(--color-background-secondary);border-radius:var(--border-radius-lg);border:0.5px solid var(--color-border-tertiary);padding:1.25rem 1.5rem;">
<style>
.pw-title{font-size:13px;font-weight:500;color:var(--color-text-secondary);text-transform:uppercase;letter-spacing:0.07em;margin-bottom:1rem;}
.pw-row{display:flex;align-items:center;justify-content:space-between;padding:10px 0;border-bottom:0.5px solid var(--color-border-tertiary);}
.pw-row:last-child{border-bottom:none;}
.pw-desc{font-size:14px;color:var(--color-text-primary);}
.pw-sub{font-size:12px;color:var(--color-text-secondary);margin-top:2px;}
.pw-pts{font-size:15px;font-weight:500;}
.pw-spent{color:#ef4444;}
.pw-remain{color:#16a34a;}
.pw-total{display:flex;justify-content:space-between;margin-top:1rem;padding-top:1rem;border-top:1px solid var(--color-border-secondary);}
.pw-total-label{font-size:13px;color:var(--color-text-secondary);}
.pw-total-val{font-size:15px;font-weight:500;color:var(--color-text-primary);}
</style>
<div class="pw-title">💳 Marriott Points Ledger — Meg's Card</div>
<div class="pw-row">
  <div><div class="pw-desc">Marriott Mulu — 3 nights</div><div class="pw-sub">Top 9 most unique Marriott properties · Suite upgrade · Free breakfast</div></div>
  <div class="pw-pts pw-spent">−38,000</div>
</div>
<div class="pw-row">
  <div><div class="pw-desc">Le Méridien KK — 3 nights</div><div class="pw-sub">Ocean view upgrade · Welcome wine · Lounge access · Happy hour</div></div>
  <div class="pw-pts pw-spent">−52,000</div>
</div>
<div class="pw-total">
  <div>
    <div class="pw-total-label">Total spent</div>
    <div class="pw-total-val">90,000 pts</div>
  </div>
  <div style="text-align:right;">
    <div class="pw-total-label">Still remaining</div>
    <div class="pw-total-val pw-remain">~130,000 pts</div>
  </div>
</div>
</div>

So… essentially 1 week of very bougie living for 90k points?? And we still have 130k left? Just on that one card! I call that good value. Okay okay, enough about the credit cards. Unless you want to hear more…. (Let me know ;-)…. )

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-hotel-room-ocean-sunset-view.jpg" alt="Meg sitting at the Le Méridien desk in a white robe, South China Sea sunset glowing through the floor-to-ceiling window" /></figure>
  <figure><img loading="lazy" src="/media/posts/15/gallery/malaysia-woman-rooftop-restaurant-city-view.jpg" alt="Meg at the Marriott lounge with snacks and a Carlsberg, Kota Kinabalu cityscape and waterfront at sunset behind her" /></figure>
</div>

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/15/gallery/malaysia-golden-sunset-ocean.jpg" alt="Molten golden sunset over the South China Sea from Kota Kinabalu, lone fishing boat silhouetted on the glowing water" />
  <figcaption>The South China Sea doing its thing.</figcaption>
</figure>

Our time in Kota Kinabalu was almost entirely blobbing around the hotel. Eating. Working out. Taking advantage of the free booze. And working on planning out our next journey in Taiwan and Vietnam with August and Chantel!

*Stay tuned for our next adventure as we head back to Taipei and take on **VIETNAM** with special appearances from the **BROTHER AND MOTHER**.*
