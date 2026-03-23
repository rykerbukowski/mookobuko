---
title: "Bali"
subtitle: "Surf camp, sewage, new friends, and a hard-won redemption wave"
date: 2026-03-01
location: "Bali, Indonesia"
locationEmoji: "🇮🇩"
heroImage: "/media/posts/14/gallery/bali-sunset-beach-orange.jpg"
heroColor: "#F59E0B"
excerpt: "We came for the surf. We got E. Coli, an IV drip, and some of our favorite people on earth. Bali delivered — eventually."
tags:
  - { label: "🏄 Surfing", color: "#0891B2" }
  - { label: "🌴 Bali", color: "#10B981" }
  - { label: "🤒 Chaos", color: "#F59E0B" }
  - { label: "🫶 New Friends", color: "#D4537E" }
status: "published"
---

<canvas id="bali-bg" style="position:fixed;inset:0;width:100%;height:100%;pointer-events:none;z-index:0;"></canvas>
<script>
(function(){
const canvas=document.getElementById('bali-bg');
if(!canvas)return;
const ctx=canvas.getContext('2d');
function resize(){canvas.width=window.innerWidth;canvas.height=window.innerHeight;}
resize();
window.addEventListener('resize',resize);
function mkWave(y,amp,speed,phase,op){return{y,amp,speed,phase,op};}
const waves=[
  mkWave(0.82,18,0.006,0,0.04),
  mkWave(0.87,14,0.009,1.2,0.05),
  mkWave(0.92,10,0.013,2.5,0.06),
  mkWave(0.96,7,0.018,0.7,0.07),
];
function mkBoard(){const side=Math.random()>0.5?1:-1;return{x:side===1?-120:canvas.width+120,y:canvas.height*0.6+Math.random()*canvas.height*0.3,side,speed:0.25+Math.random()*0.3,angle:-0.15+Math.random()*0.1,op:0.06+Math.random()*0.06};}
const boards=Array.from({length:3},mkBoard);
let t=0;
function drawWave(w){
  const y=canvas.height*w.y;
  ctx.beginPath();
  ctx.moveTo(0,canvas.height);
  for(let x=0;x<=canvas.width;x+=6){
    const wy=y+Math.sin(x*0.012+t*w.speed+w.phase)*w.amp+Math.sin(x*0.025+t*w.speed*1.4+w.phase)*w.amp*0.4;
    x===0?ctx.moveTo(x,wy):ctx.lineTo(x,wy);
  }
  ctx.lineTo(canvas.width,canvas.height);
  ctx.closePath();
  ctx.fillStyle=`rgba(14,165,233,${w.op})`;
  ctx.fill();
}
function drawBoard(b){
  ctx.save();
  ctx.globalAlpha=b.op;
  ctx.translate(b.x,b.y);
  ctx.rotate(b.angle*(b.side===-1?-1:1));
  if(b.side===-1)ctx.scale(-1,1);
  ctx.beginPath();
  ctx.ellipse(0,0,32,9,0,0,Math.PI*2);
  ctx.fillStyle='#f97316';
  ctx.fill();
  ctx.beginPath();
  ctx.moveTo(-32,0);ctx.lineTo(-38,2);ctx.lineTo(-36,-1);ctx.closePath();
  ctx.fillStyle='#ea580c';
  ctx.fill();
  ctx.restore();
}
function animate(){
  ctx.clearRect(0,0,canvas.width,canvas.height);
  t++;
  waves.forEach(drawWave);
  boards.forEach((b,i)=>{
    b.x+=b.speed*b.side;
    const waveY=canvas.height*(0.82+i*0.05)+Math.sin(b.x*0.012+t*waves[i%waves.length].speed)*waves[i%waves.length].amp;
    b.y+=(waveY-b.y)*0.03;
    if(b.side===1&&b.x>canvas.width+140)boards[i]=mkBoard();
    if(b.side===-1&&b.x<-140)boards[i]=mkBoard();
    drawBoard(b);
  });
  requestAnimationFrame(animate);
}
animate();
})();
</script>

We were chomping at the bit to leave the Philippines. Out of excitement for our 10 day surf camp and because the whole time we were in country, our tummies had not been cooperating. We had reduced ourselves to McDonald's and ramen. At this point in the trip our bodies had just finally started to acclimate to the heat and humidity. Becoming more efficient at sweating, we've stopped breaking out, I find I notice the heat significantly less. Another side effect that has taken place that combines the heat and constant rumbly tummy is that we aren't ever really hungry. We are pretty much down to a small breakfast, coffee, smoothie, and a package of ramen a day. Talk about skinny queens!

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/14/gallery/ryker-airport-leaving-philippines.jpg" alt="Ryker at the tarmac looking at a Cebu Pacific propeller plane, leaving the Philippines" />
  <figcaption>Philippines: we loved you. Our stomachs did not.</figcaption>
</figure>

Our travels took us on the littlest plane, with propellers and everything, to a small airport just outside Manila. I knew the traffic was supposed to be bad, but honestly every single city I have ever been to people say the same thing "traffic is really the worst in X place, it takes forever to get around." I think it's just cities, all traffic is bad in cities, sky trains and light rails help substantially but if you're in a car, suck it up, it's bad everywhere and you're not special with your city's traffic. Also everyone thinks they have the worst drivers, maybe humans are just bad drivers. Who has ever said, "my city has great drivers." No one. People just like to complain but life is good, we fling our bodies around in giant metal machines at insane speeds and cover great distances. I'm just grateful I don't have to walk, or boat, or horse and buggy places (and I bet you people then complained all the time about the horse traffic. At least now the roads aren't filled with literal shit). Please note: Delhi, India is an exception, for lack of a better term, traffic in Delhi is fucked.

We planned on spending the day in Manila but after our bus took 3 hours to make it from one airport to the other, we opted to just relax in the airport and wait for our flight. Things went smoothly and we entered the famous (maybe now notorious) Bali, peak tourism.

## Learn to Surf, In Sewage?

Bali was never a place we intended to go. Back in Thailand when Ryker was doing Muay Thai and I was scuba diving we discovered that many places combine activities and accommodation. Making it much cheaper to do the activities and meet people. We discovered this too late to take advantage in Thailand, but it planted a seed, "what activities do we want to do in the future that this could apply to?" Naturally we landed on surfing. Surfing was always something we wanted to try out on this trip. We just didn't know any of the logistics around the when and how. So back in Thailand I started searching for surfing programs with accommodation, and I found Kima Surf, with locations in Sri Lanka and Bali. After checking flights, and scoring a timely Valentine's Day discount at Kima, we were booked for Bali.

After arrival we were shuttled to camp. Camp is beautiful, we booked a private room, beautiful, spacious, a HOT shower, COLD AC, top floor. The camp itself also had good food, lots of seating, two pools, and lots of area to lounge about. We settled in and mentally prepared for a 5:30am wake up for the five day learn to surf program.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/14/gallery/kima-camp-bamboo-walkway.jpg" alt="Beautiful bamboo and white-walled walkway at KIMA surf camp with tropical plants" /></figure>
  <figure><img loading="lazy" src="/media/posts/14/gallery/ryker-celebrating-pool-beer.jpg" alt="Ryker celebrating poolside at KIMA with a raised beer can and big grin" /></figure>
</div>

Alarm blaring and bleary-eyed we stumbled downstairs and met our future friends, Laurens and Anna and off we went to the ocean. When we arrived I was incredibly confused… where was the crystal clear blue water in the brochure?...on the website? Standing before me was dark brown frothing waves of trash. So much trash was piled up on the beach that tractors drove up and down, creating piles taller than Ryker. We were supposed to go into that water? We later learned it was the tail end of wet season, meaning all the rainfall literally washed sewage and trash into the water. And we were about to be getting dunked by the waves, face first into it. (There is actual science documenting E. Coli in the water as well as sewage and trash, this is a well known problem, but we did not know this at the time. Furthermore about 7-8 months out of the year this is not the case and the water is clear and safe to swim).

<figure class="photo-polaroid">
  <img loading="lazy" src="/media/posts/14/gallery/bali-dirty-brown-beach-waves.jpg" alt="Bali beach with dark brown frothing contaminated waves during wet season, chairs and umbrellas in foreground" />
  <figcaption>Not exactly what the brochure showed.</figcaption>
</figure>

Bringing up our worries to our surf guides, we got serious looks and were told to close our mouths when we fell into the water. I brought up that I was just finishing a round of antibiotics, my immune system was wiped out, was I safe? I was told to just make EXTRA SURE I keep my mouth closed. Turns out not getting water in your mouth, ears, eyes, nose while learning to surf is near impossible. Ryker sprinted into action and he was determined to solve this problem and still learn to surf. We went with our group and emptied out a pharmacy in the act of trying to be preventative.

Now I strive to be a happy and positive person (being more positive was actually a new years resolution for me) but over the next three days in those waves, the complaining started and it did not stop. We spoke to the management, was there anywhere else we could go? Why was there no one else in the water? Is there nowhere else in Bali to learn? Everyone else at camp was being driven to other beaches with crystal clear blue clean water. We wanted to learn there. They refused to move to learn to surf, stating the sandbar at the dirty beach was safer to learn on than a reef break. While that may be true it was exchanging a possible injury with a much more likely possibility of sickness.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/14/gallery/meg-surfing-brown-water.jpg" alt="Meg standing on her surfboard riding a wave in the brown contaminated water at Seminyak beach" /></figure>
  <figure><img loading="lazy" src="/media/posts/14/gallery/ryker-surfing-brown-water.jpg" alt="Ryker riding a wave on his surfboard in the murky brown Bali surf" /></figure>
</div>

Ryker was determined to stay positive, valiantly taking his charcoal pills and rinsing out his eyes, ears and nose with saline after each session. Ryker was the first to fall. 3am on the bathroom floor, violently ill. The next morning I took him to a clinic where we got an IV treatment and a bunch of other medicine, they sent us home with extras. The IV stabilized him enough that he was able to sleep, for a solid 16 and ½ hours. Luckily the sickness was quick, but far from painless.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/14/gallery/ryker-charcoal-pills-banyan-tree.jpg" alt="Ryker holding charcoal pills triumphantly in front of a massive Bali banyan tree, holding a Hydro Coco" /></figure>
  <figure><img loading="lazy" src="/media/posts/14/gallery/ryker-peeling-rash-guard-beach.jpg" alt="Ryker peeling off a soaking wet black rash guard on the beach after surfing in the dirty water" /></figure>
</div>

24 hours later I went down; stomach cramping, full body rigors, numb legs, and 100 degree fever. Back to the clinic we went this time with blood test on top of the IV. I was taken out for 48 hours before I had enough energy to leave the room. At this point I refused to go back to where we were surfing, unwilling to risk getting sick again. Both Ryker and I were on antibiotics (me on my 2nd round with a yeast infection starting to fester). We went back to management and this time they relented, arranging for our group to go to a new spot, yes with a reef, but at this point I would take a reef over E. Coli. The surf was arranged for the following morning, it was our last chance to surf before leaving Bali.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/14/gallery/ryker-iv-clinic-sick.jpg" alt="Ryker in the clinic recliner chair with an IV in his arm, looking deeply unimpressed" /></figure>
  <figure><img loading="lazy" src="/media/posts/14/gallery/meg-clinic-iv-chair.jpg" alt="Meg slumped in a clinic recliner looking exhausted and pale, clutching a water bottle" /></figure>
</div>

We woke up to a massive rainstorm, just my luck. As it dumped from the sky and I questioned my life decisions we loaded into a van and drove to the east side of the island. As we arrived the rain had calmed to a pitter-patter. I did not know how to feel. Before me was the most beautiful beach I had ever seen with a massive volcano in the background looming over. Glossy waves and smooth ocean. Water so clear I could see the reef 9 ft below my board. We stayed out for hours, and the weather got better and better. The last hour in the sun, the water was the bluest I had ever seen, this was the Bali I had been craving to experience.

I caught some of my best waves that last day. See on a reef break the waves are much more consistent than the sand break I had been surfing. They lasted much longer too. I was able to stand and even turn my foam top board.

I am immensely grateful for my last day in the water. Catching waves and even just sitting in the ocean waiting for the next one was so calming. Every molecule of my being was satiated, I felt at peace. Then a wave would come, excitement, adrenaline, shock that I was standing. If not for that last day I would be telling you to never go to Bali, and I would have written it off on my "I Never Want To Go Here Again" list. I would stress to NEVER go during the rainy season and no matter how much a big German corporation tells you the dark brown water is safe, maybe don't go in.

At the time of writing Ryker and I have contacted Kima to state our concerns. We believe the Learn to Surf program should go on hiatus during the wet season and resume when the water is again safe or at the very least, MOVE TO ANOTHER BEACH. I felt it is unethical to allow people to book and pay for a service that does not exist. To not warn people, is an irresponsible, disgusting business practice, as well as a clear money grab. Many folks feel as we did upon arrival, we had already paid so much money to come there and be at that camp, all we wanted was to surf. Kima has other camps in other locations they could re-direct customers. They could focus on intermediate or advanced surfing only during that time. I felt like I was tricked into paying for an experience (learning to surf in famous clean Bali waters) that did not exist, and when I brought up my fears of the water, I was told I was being dramatic, that this was the only option, to just close my mouth and it would be fine.

We have also asked for a refund for the days we were sick and unable to surf. It should be noted this experience was not isolated. Almost everyone who went surfing in that water did get sick!! It was not uncommon at camp for people to disappear for 24-48 hours, only to reemerge with the same story; the water got them sick.

UPDATE: we heard back from Kima, and after pressuring them in multiple emails, we have received a vague 'coupon' that we can redeem for the missed days of surfing that can be used at any location and doesn't expire… trying to get them to clarify what that means. But you have to push these companies! You never settle with the first response. We kept hammering them. The first response is to brush you off their shoulder. "Oh this wasn't our fault, we can't control the weather". We hit back with a, "NO. this is ur fault. If you make us surf in unclean water when 1/ there is no one else surfing in that water and 2/ there are clear alternatives and 3/ EVERYONE gets sick… it's kinda ur fault." So anyways… we are working on getting a clear resolution and a change to their learn to surf program, because we are spiteful heroes that don't wear capes. You're welcome. -RYKER

## Friends Made & a New Holiday

Not to be all doom and gloom! There was one thing about Bali that made it absolutely worth it to get a bacterial infection; new friends! The people at Kima, surfers and staff were all amazing. We got to spend a lot of time with our new British friends, Anna and Fraser, who used all sorts of fun words that I very much enjoyed hearing.

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/14/gallery/group-kima-pool-new-friends.jpg" alt="Group of five friends standing at the edge of the KIMA pool in the sunshine — Laurens, Ryker, Meg, Anna, and Fraser" /></figure>
  <figure><img loading="lazy" src="/media/posts/14/gallery/fraser-surf-popup-deck.jpg" alt="Fraser practicing his surf pop-up move flat on the wooden deck of KIMA camp, grinning wildly" /></figure>
</div>

<div class="british-slang-widget">
<style>
.british-slang-widget{margin:2rem 0;background:var(--color-background-secondary);border-radius:var(--border-radius-lg);border:0.5px solid var(--color-border-tertiary);padding:1.25rem 1.5rem;}
.bsw-title{font-size:13px;font-weight:500;color:var(--color-text-secondary);margin-bottom:1rem;text-transform:uppercase;letter-spacing:0.07em;}
.bsw-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(160px,1fr));gap:10px;}
.bsw-card{background:var(--color-background-primary);border:0.5px solid var(--color-border-tertiary);border-radius:var(--border-radius-md);padding:10px 14px;cursor:pointer;transition:background 0.15s,border-color 0.15s;}
.bsw-card:hover,.bsw-card.flipped{background:#FBEAF0;border-color:#D4537E;}
.bsw-british{font-size:16px;font-weight:500;color:var(--color-text-primary);}
.bsw-american{font-size:13px;color:#993556;margin-top:4px;display:none;}
.bsw-card.flipped .bsw-american{display:block;}
.bsw-hint{font-size:11px;color:var(--color-text-tertiary);margin-top:0.75rem;}
</style>
<div class="bsw-title">🇬🇧 British Slang Decoder — tap to translate</div>
<div class="bsw-grid">
  <div class="bsw-card" onclick="this.classList.toggle('flipped')"><div class="bsw-british">"carnage"</div><div class="bsw-american">any activity that ended in complete chaos</div></div>
  <div class="bsw-card" onclick="this.classList.toggle('flipped')"><div class="bsw-british">"smashed"</div><div class="bsw-american">drunk — but more fun to say</div></div>
  <div class="bsw-card" onclick="this.classList.toggle('flipped')"><div class="bsw-british">"proper"</div><div class="bsw-american">very / genuinely / extremely</div></div>
  <div class="bsw-card" onclick="this.classList.toggle('flipped')"><div class="bsw-british">"the lads"</div><div class="bsw-american">the guys / the group / the whole crew</div></div>
  <div class="bsw-card" onclick="this.classList.toggle('flipped')"><div class="bsw-british">"a lay down"</div><div class="bsw-american">a nap — far more dignified sounding</div></div>
  <div class="bsw-card" onclick="this.classList.toggle('flipped')"><div class="bsw-british">"plait"</div><div class="bsw-american">braid — as in hair</div></div>
</div>
<div class="bsw-hint">Meg's favorite: "carnage." She will be using this forever.</div>
</div>

Being American, all of our fun words and mannerisms are constantly on display via Hollywood and the export of American media. Everyone already knows what to expect from us. I aspire to add some of these sayings into my vocabulary, 'carnage' is a favorite.

Between surf lessons there was lots of time for a chat and a beer. Who doesn't love a good chat. We got to hit all the fun topics; "why did you bomb Iran?" "what's with the gun obsession?" "How come you don't have healthcare." "Why do you use the imperial system instead of metric"... the thing about traveling, is suddenly you become a spokesperson for your entire country. Lord knows I will die defending the imperial system. No better system than miles, gallons, and fahrenheit. Jokes aside, these can lead to some interesting conversations that I enjoy and I in turn get to learn about how other countries have things set up. Like did you know the Netherlands has a King? That is now something I know. These conversations can be delicate and depending on the tone can get old really quickly. Luckily for us the people we met just wanted to chat, and learn. Pure curiosity. Also, The White House twitter account is insane.

<div class="photo-masonry">
  <img loading="lazy" src="/media/posts/14/gallery/kima-pool-party-night.jpg" alt="Night pool party at KIMA with surfboard beer pong floating in the pool and bamboo teepees lit up in the background" />
  <img loading="lazy" src="/media/posts/14/gallery/old-mans-bali-neon-sign.jpg" alt="Old Man's bar neon sign at night — a skeleton drinking from a bottle in vivid neon colors" />
  <img loading="lazy" src="/media/posts/14/gallery/balinese-food-spread-sate-rice.jpg" alt="Overhead shot of a Balinese food feast — chicken sate with peanut sauce, nasi goreng, mie goreng, and fresh juice" />
  <img loading="lazy" src="/media/posts/14/gallery/ryker-anna-restaurant-bali.jpg" alt="Ryker and Anna smiling at a flowery Bali restaurant over beers and green cocktails" />
</div>

<div class="photo-duo">
  <figure><img loading="lazy" src="/media/posts/14/gallery/bali-sunset-beach-orange.jpg" alt="Sweeping Bali beach at sunset with orange and pink sky, silhouetted figures walking the shore" /></figure>
  <figure><img loading="lazy" src="/media/posts/14/gallery/ryker-sunset-beach-smiling.jpg" alt="Ryker grinning ear to ear at the Bali sunset in his green patterned shirt, beach behind him" /></figure>
</div>

That's all for now. Tune in next time for another exciting story.
