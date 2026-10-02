<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<title>NigguneiChabad</title>
<style>
:root{color-scheme:dark;--bg:#0b0b0d;--p1:#111113;--p2:#171719;--p3:#1c1c20;--p4:#29292d;--tx:#f5f5f5;--mu:#888;--ln:#242426}
*{box-sizing:border-box}
body{margin:0;background:var(--bg);color:var(--tx);font-family:Arial,Helvetica,sans-serif}
button{font-family:inherit;cursor:pointer}
.side{width:230px;background:var(--p1);border-right:1px solid var(--ln);padding:25px 15px;position:fixed;top:0;left:0;bottom:82px}
.logo{font-size:21px;font-weight:bold;padding:5px 12px 26px}
.mt{color:#777;font-size:11px;text-transform:uppercase;letter-spacing:1px;padding:0 12px;margin:0 0 8px}
.nav{margin-bottom:26px}
.nav a{display:flex;gap:13px;padding:11px 12px;border-radius:7px;color:#a7a7aa;text-decoration:none;font-size:14px;margin-bottom:3px}
.nav a:hover,.nav a.on{background:#222225;color:#fff}
.main{margin-left:230px;padding:25px 35px 110px}
.top{display:flex;justify-content:space-between;gap:10px;margin-bottom:28px}
.search{background:#1b1b1f;border:1px solid #29292d;border-radius:20px;padding:10px 16px;width:300px;max-width:100%;color:#fff;outline:0}
.acc{display:flex;gap:8px;align-items:center;font-size:13px;color:#ccc}
.btn{border-radius:20px;padding:9px 16px;font-size:13px;border:1px solid #29292d;background:#1b1b1f;color:#ddd;white-space:nowrap}
.btn.w{background:#fff;color:#000;border:0;font-weight:bold}
.feature{display:flex;gap:28px;background:linear-gradient(145deg,#1b1b1f,#111113);border-radius:14px;padding:24px;margin-bottom:36px;align-items:center}
.fc{width:200px;height:200px;flex:none;background:var(--p4);border-radius:8px;display:flex;align-items:center;justify-content:center;font-size:70px}
.feature h1{font-size:32px;margin:8px 0}
.lbl{color:#999;font-size:12px;text-transform:uppercase;letter-spacing:1px}
.feature p{color:#999;margin:0 0 18px}
.pb{width:50px;height:50px;border:0;border-radius:50%;background:#fff;color:#000;font-size:20px}
h2{font-size:21px;margin:0}
.sec{margin-bottom:38px}
.sh{display:flex;align-items:center;gap:12px;margin-bottom:16px}
.empty{color:var(--mu);font-size:14px;padding:18px 0}
.list{background:var(--p1);border-radius:8px;overflow:hidden}
.song{display:grid;grid-template-columns:36px 46px 1fr 170px 70px 60px;align-items:center;gap:12px;padding:9px 14px;border-bottom:1px solid #1d1d20;cursor:pointer}
.song:last-child{border:0}
.song:hover{background:var(--p3)}
.song.cur .st{color:#4ade80}
.n{color:#777;text-align:center}
.sc{width:44px;height:44px;background:var(--p4);border-radius:4px;display:flex;align-items:center;justify-content:center}
.st{font-size:14px;margin-bottom:4px}
.sa,.sl,.tm{color:#777;font-size:12px}
.acts{display:flex;gap:4px;justify-content:flex-end}
.ib{background:none;border:0;color:#888;font-size:17px;padding:2px 4px}
.ib:hover,.ib.on{color:#fff}.ib.on{color:#f472b6}
.cards{display:grid;grid-template-columns:repeat(auto-fill,minmax(165px,1fr));gap:16px}
.card{background:#141416;padding:14px;border-radius:7px;cursor:pointer}
.card:hover{background:var(--p3)}
.cc{aspect-ratio:1;background:var(--p4);border-radius:4px;display:flex;align-items:center;justify-content:center;font-size:44px;margin-bottom:12px}
.ct{font-size:14px;font-weight:bold;margin-bottom:5px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.cs{font-size:12px;color:#777}
.player{position:fixed;left:0;right:0;bottom:0;height:82px;background:var(--p2);border-top:1px solid #29292d;display:grid;grid-template-columns:280px 1fr 280px;align-items:center;padding:0 20px;z-index:100}
.np{display:flex;gap:12px;align-items:center;min-width:0}
.nc{width:48px;height:48px;background:var(--p4);border-radius:4px;display:flex;align-items:center;justify-content:center;flex:none}
.nt{font-size:13px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.na{color:#777;font-size:11px;margin-top:4px}
.ctl{display:flex;justify-content:center;align-items:center;gap:16px}
.c{border:0;background:none;color:#aaa;font-size:17px}.c:hover{color:#fff}.c.on{color:#4ade80}
.c.m{width:38px;height:38px;border-radius:50%;background:#fff;color:#000}
.pr{display:flex;align-items:center;gap:8px;margin-top:6px}
.pr span{font-size:10px;color:#777;width:32px;text-align:center}
input[type=range]{accent-color:#fff;flex:1;height:3px;cursor:pointer}
.vol{display:flex;justify-content:flex-end;align-items:center;gap:8px;color:#777}
.vol input{flex:none;width:100px}
.pop{display:none;position:fixed;inset:0;background:rgba(0,0,0,.75);align-items:center;justify-content:center;z-index:500}
.box{width:380px;max-width:92%;background:#18181b;border:1px solid #303035;border-radius:12px;padding:26px;max-height:85vh;overflow:auto}
.box h2{margin-bottom:8px}.box p{color:#888;font-size:13px;margin:0 0 18px}
.box input[type=text],.box input[type=email],.box input[type=password]{width:100%;background:#101012;border:1px solid #303035;border-radius:7px;padding:12px;color:#fff;margin-bottom:12px;outline:0;font-size:16px}
.sub{width:100%;border:0;background:#fff;color:#000;padding:12px;border-radius:7px;font-weight:bold}
.x{float:right;border:0;background:none;color:#888;font-size:22px}
.pl{display:block;width:100%;text-align:left;background:#101012;border:1px solid #303035;color:#fff;padding:12px;border-radius:7px;margin-bottom:8px}
.sw{text-align:center;margin-top:16px;color:#777;font-size:12px}.sw button{background:none;border:0;color:#fff}
.mnav{display:none}
@media(max-width:800px){
.side{display:none}.main{margin:0;padding:0 16px 150px}
.top{position:sticky;top:0;z-index:50;margin:0 -16px 16px;padding:calc(12px + env(safe-area-inset-top,0px)) 16px 10px;background:rgba(9,9,11,.95);flex-direction:column-reverse}
.acc{justify-content:flex-end}.search{width:100%;height:44px}
.feature{flex-direction:column;align-items:stretch;padding:18px}.fc{width:100%;height:auto;aspect-ratio:1}
.song{grid-template-columns:44px 1fr auto;padding:10px 12px}.n,.sl,.tm{display:none}
.cards{display:flex;overflow-x:auto;margin:0 -16px;padding:2px 16px}.card{flex:0 0 145px}
.player{left:8px;right:8px;bottom:calc(64px + env(safe-area-inset-bottom,0px));height:70px;border:1px solid #303035;border-radius:14px;grid-template-columns:1fr auto;padding:6px 10px}
.vol,.pr span,.c.sh,.c.rp{display:none}
.pr{position:absolute;left:10px;right:10px;bottom:2px;margin:0}
.ctl{gap:8px}
.mnav{display:flex;position:fixed;left:0;right:0;bottom:0;z-index:110;background:#111113;border-top:1px solid #29292d;padding:7px 6px calc(7px + env(safe-area-inset-bottom,0px))}
.mnav a{flex:1;display:flex;flex-direction:column;align-items:center;gap:3px;color:#777;text-decoration:none;font-size:10px}
.mnav a.on{color:#fff}.mnav b{font-size:20px;font-weight:normal;line-height:20px}
.pop{align-items:flex-end}.box{width:100%;max-width:none;border-radius:20px 20px 0 0}
}
</style>
</head>
<body>
<aside class="side">
 <div class="logo">🎵 NigguneiChabad</div>
 <div class="mt">Library</div>
 <div class="nav" id="nav1"></div>
 <div class="mt">Your Music</div>
 <div class="nav" id="nav2"></div>
</aside>
<main class="main">
 <div class="top">
  <input class="search" id="q" placeholder="Search niggunim, artists, albums...">
  <div class="acc" id="acc"></div>
 </div>
 <div id="view"></div>
</main>
<nav class="mnav" id="mnav"></nav>

<div class="player">
 <div class="np"><div class="nc" id="nc">🎵</div><div style="min-width:0"><div class="nt" id="nt">Nothing playing</div><div class="na" id="na">NigguneiChabad</div></div></div>
 <div>
  <div class="ctl">
   <button class="c sh" id="shuf" title="Shuffle">⇄</button>
   <button class="c" id="prev">⏮</button>
   <button class="c m" id="play">▶</button>
   <button class="c" id="next">⏭</button>
   <button class="c rp" id="rep" title="Repeat">↻</button>
  </div>
  <div class="pr"><span id="cur">0:00</span><input type="range" id="seek" min="0" max="100" value="0" step="0.1"><span id="dur">0:00</span></div>
 </div>
 <div class="vol">🔊<input type="range" id="vol" min="0" max="1" step="0.01" value="0.8"></div>
</div>

<div class="pop" id="pop"><div class="box"><button class="x" id="close">×</button><div id="pc"></div></div></div>

<script>
/* ---- DATA: add your real audio file URLs in `url`. Empty url = demo playback with no sound. ---- */
const SONGS=[
 {id:1,title:"Sample Niggun",artist:"Chabad Niggunim",album:"Chabad Classics",dur:261,icon:"🎵",url:"GITT.mp3"},
 {id:2,title:"Traditional Niggun",artist:"Chabad Collection",album:"Niggunim of the Rebbeim",dur:308,icon:"🎶",url:""},
 {id:3,title:"Shabbos Niggun",artist:"Shabbos Collection",album:"Shabbos Niggunim",dur:372,icon:"🕯️",url:""},
 {id:4,title:"Farbrengen Niggun",artist:"Farbrengen Collection",album:"Farbrengen",dur:285,icon:"🔥",url:""},
 {id:5,title:"Niggun Simcha",artist:"Chabad Niggunim",album:"Chabad Classics",dur:196,icon:"🎵",url:""},
 {id:6,title:"Niggun Hakafos",artist:"Chabad Collection",album:"Niggunim of the Rebbeim",dur:240,icon:"🎼",url:""}
];
const ALBUM_ICON={"Chabad Classics":"💿","Niggunim of the Rebbeim":"🎼","Shabbos Niggunim":"🕯️","Farbrengen":"🔥"};
const $=id=>document.getElementById(id);
const esc=s=>String(s).replace(/[&<>"']/g,c=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[c]));
const fmt=s=>{s=Math.max(0,Math.floor(s||0));return Math.floor(s/60)+":"+String(s%60).padStart(2,"0")};
const load=(k,d)=>{try{const v=localStorage.getItem(k);return v?JSON.parse(v):d}catch(e){return d}};
const save=(k,v)=>{try{localStorage.setItem(k,JSON.stringify(v))}catch(e){}};

let favs=load("nc_favs",[]),lists=load("nc_lists",[]),recent=load("nc_recent",[]),user=load("nc_user",null);
let view={n:"home",a:null},queue=[],qi=-1,playing=false,shuffle=false,repeat=false,tick=null,pos=0,len=0;
const audio=new Audio();audio.volume=.8;
const byId=id=>SONGS.find(s=>s.id===id);
const cur=()=>queue[qi]!=null?byId(queue[qi]):null;

/* ---- NAV ---- */
const N1=[["home","⌂","Home"],["songs","♪","Songs"],["artists","●","Artists"],["albums","▣","Albums"]];
const N2=[["favorites","♡","Favorites"],["playlists","☷","Playlists"],["recent","↺","Recently Played"]];
const MN=[["home","⌂","Home"],["songs","♪","Songs"],["favorites","♡","Favorites"],["playlists","▣","Library"]];
function go(n,a){view={n,a:a??null};$("q").value="";render();scrollTo(0,0)}
function navHtml(arr,m){return arr.map(([n,i,l])=>m?`<a href="#" data-go="${n}" class="${view.n===n?"on":""}"><b>${i}</b>${l}</a>`:`<a href="#" data-go="${n}" class="${view.n===n?"on":""}"><span>${i}</span>${l}</a>`).join("")}

/* ---- RENDER ---- */
function songRow(s,i,ids){
 const c=cur()&&cur().id===s.id;
 return `<div class="song ${c?"cur":""}" data-play="${s.id}" data-ctx='${ids.join(",")}'>
 <div class="n">${c&&playing?"♪":i+1}</div><div class="sc">${s.icon}</div>
 <div><div class="st">${esc(s.title)}</div><div class="sa">${esc(s.artist)}</div></div>
 <div class="sl">${esc(s.album)}</div><div class="tm">${fmt(s.dur)}</div>
 <div class="acts"><button class="ib ${favs.includes(s.id)?"on":""}" data-fav="${s.id}" title="Favorite">${favs.includes(s.id)?"♥":"♡"}</button><button class="ib" data-add="${s.id}" title="Add to playlist">＋</button></div></div>`}
function songList(ids,msg){
 if(!ids.length)return `<div class="empty">${msg||"Nothing here yet."}</div>`;
 return `<div class="list">${ids.map((id,i)=>songRow(byId(id),i,ids)).join("")}</div>`}
function card(go_,arg,icon,t,sub){return `<div class="card" data-go="${go_}" data-arg="${esc(arg)}"><div class="cc">${icon}</div><div class="ct">${esc(t)}</div><div class="cs">${esc(sub)}</div></div>`}
const albums=()=>[...new Set(SONGS.map(s=>s.album))];
const artists=()=>[...new Set(SONGS.map(s=>s.artist))];
const plCards=()=>`<div class="card" data-newpl="1"><div class="cc">+</div><div class="ct">Create Playlist</div><div class="cs">Make your own collection</div></div>`+lists.map((l,i)=>card("playlist",i,"🎧",l.name,l.ids.length+" songs")).join("");
const head=(t,extra)=>`<div class="sh"><h2>${t}</h2>${extra||""}</div>`;

function render(){
 $("nav1").innerHTML=navHtml(N1);$("nav2").innerHTML=navHtml(N2);$("mnav").innerHTML=navHtml(MN,1);
 $("acc").innerHTML=user?`<span>👤 ${esc(user.name)}</span><button class="btn" data-logout="1">Sign out</button>`:`<button class="btn" data-login="1">Sign in</button><button class="btn w" data-signup="1">Create account</button>`;
 const q=$("q").value.trim().toLowerCase(),v=$("view");
 if(q){const ids=SONGS.filter(s=>(s.title+s.artist+s.album).toLowerCase().includes(q)).map(s=>s.id);
  v.innerHTML=head(`Results for “${esc(q)}”`)+songList(ids,"No matches found.");return}
 const all=SONGS.map(s=>s.id),rec=recent.filter(id=>byId(id));
 switch(view.n){
 case"home":{const f=SONGS[0];
  v.innerHTML=`<div class="feature"><div class="fc">🎶</div><div><div class="lbl">Featured Niggun</div><h1>${esc(f.title)}</h1><p>Discover a beautiful Chabad melody.</p><button class="pb" data-play="${f.id}" data-ctx="${all.join(",")}">▶</button></div></div>
  <div class="sec">${head("Recently Played",`<a href="#" data-go="recent" style="color:#888;font-size:13px;margin-left:auto;text-decoration:none">See all</a>`)}${songList(rec.slice(0,3),"Play something and it will show up here.")}</div>
  <div class="sec">${head("Albums")}<div class="cards">${albums().map(a=>card("album",a,ALBUM_ICON[a]||"💿",a,SONGS.filter(s=>s.album===a).length+" songs")).join("")}</div></div>
  <div class="sec">${head("Your Playlists")}<div class="cards">${plCards()}</div></div>`;break}
 case"songs":v.innerHTML=head("All Songs")+songList(all);break;
 case"artists":v.innerHTML=head("Artists")+`<div class="cards">${artists().map(a=>card("artist",a,"●",a,SONGS.filter(s=>s.artist===a).length+" songs")).join("")}</div>`;break;
 case"albums":v.innerHTML=head("Albums")+`<div class="cards">${albums().map(a=>card("album",a,ALBUM_ICON[a]||"💿",a,SONGS.filter(s=>s.album===a).length+" songs")).join("")}</div>`;break;
 case"artist":v.innerHTML=head(esc(view.a))+songList(SONGS.filter(s=>s.artist===view.a).map(s=>s.id));break;
 case"album":v.innerHTML=head(esc(view.a))+songList(SONGS.filter(s=>s.album===view.a).map(s=>s.id));break;
 case"favorites":v.innerHTML=head("Favorites")+songList(favs.filter(id=>byId(id)),"Tap ♡ on a song to save it here.");break;
 case"recent":v.innerHTML=head("Recently Played")+songList(rec,"Nothing played yet.");break;
 case"playlists":v.innerHTML=head("Your Playlists")+`<div class="cards">${plCards()}</div>`;break;
 case"playlist":{const l=lists[view.a];if(!l){go("playlists");return}
  v.innerHTML=head(esc(l.name),`<button class="btn" data-delpl="${view.a}" style="margin-left:auto">Delete playlist</button>`)+songList(l.ids.filter(id=>byId(id)),"Empty. Use ＋ on any song to add it here.");break}}
}

/* ---- PLAYBACK ---- */
function setQueue(ids,id){queue=ids.slice();qi=queue.indexOf(id)}
function start(){
 const s=cur();if(!s)return;
 stopEngine();pos=0;len=s.dur;
 recent=[s.id,...recent.filter(x=>x!==s.id)].slice(0,20);save("nc_recent",recent);
 $("nt").textContent=s.title;$("na").textContent=s.artist;$("nc").textContent=s.icon;
 if(s.url){audio.src=s.url;audio.play().then(()=>{playing=true;ui()}).catch(()=>{playing=false;ui()})}
 else{playing=true;tick=setInterval(()=>{pos+=.25;if(pos>=len)ended();else ui()},250)}
 playing=true;ui();render();
}
function stopEngine(){clearInterval(tick);tick=null;audio.pause()}
function pauseResume(){
 const s=cur();if(!s){if(SONGS.length){setQueue(SONGS.map(x=>x.id),SONGS[0].id);start()}return}
 if(playing){playing=false;if(s.url)audio.pause();else{clearInterval(tick);tick=null}}
 else{playing=true;if(s.url)audio.play();else tick=setInterval(()=>{pos+=.25;if(pos>=len)ended();else ui()},250)}
 ui();render();
}
function ended(){if(repeat){start();return}step(1,true)}
function step(d,auto){
 if(!queue.length)return;
 if(shuffle&&queue.length>1){let n;do n=Math.floor(Math.random()*queue.length);while(n===qi);qi=n}
 else{let n=qi+d;if(n>=queue.length){if(auto){stopEngine();playing=false;pos=0;ui();render();return}n=0}if(n<0)n=0;qi=n}
 start();
}
function ui(){
 const s=cur(),p=s?(s.url&&audio.duration?audio.currentTime:pos):0,l=s?(s.url&&audio.duration?audio.duration:len):0;
 $("play").textContent=playing?"❚❚":"▶";
 $("cur").textContent=fmt(p);$("dur").textContent=fmt(l);
 if(!seeking)$("seek").value=l?p/l*100:0;
}
let seeking=false;
$("seek").oninput=()=>{seeking=true};
$("seek").onchange=e=>{const s=cur();if(s){const f=e.target.value/100;if(s.url&&audio.duration)audio.currentTime=f*audio.duration;else pos=f*len}seeking=false;ui()};
audio.ontimeupdate=ui;audio.onended=ended;audio.onloadedmetadata=ui;
audio.onerror=()=>{playing=false;ui();alert("Could not load this audio file. Check the URL.")};
$("play").onclick=pauseResume;$("next").onclick=()=>step(1);
$("prev").onclick=()=>{const s=cur();if(s&&(s.url?audio.currentTime:pos)>3){s.url?audio.currentTime=0:pos=0;ui()}else step(-1)};
$("shuf").onclick=e=>{shuffle=!shuffle;e.currentTarget.classList.toggle("on",shuffle)};
$("rep").onclick=e=>{repeat=!repeat;e.currentTarget.classList.toggle("on",repeat)};
$("vol").oninput=e=>{audio.volume=+e.target.value};

/* ---- POPUPS ---- */
function popup(h){$("pc").innerHTML=h;$("pop").style.display="flex"}
function closePop(){$("pop").style.display="none"}
$("close").onclick=closePop;$("pop").onclick=e=>{if(e.target===$("pop"))closePop()};
function authForm(signup){
 popup(`<h2>${signup?"Create your account":"Welcome back"}</h2><p>${signup?"Join NigguneiChabad and build your personal music library.":"Sign in to your NigguneiChabad account."}<br>(Saved on this device only for now.)</p>
 ${signup?'<input type="text" id="an" placeholder="Your name">':""}<input type="email" id="ae" placeholder="Email"><input type="password" id="ap" placeholder="Password">
 <button class="sub" id="asub">${signup?"Create account":"Sign in"}</button>
 <div class="sw">${signup?"Already have an account?":"Don't have an account?"} <button id="aswap">${signup?"Sign in":"Create one"}</button></div>`);
 $("aswap").onclick=()=>authForm(!signup);
 $("asub").onclick=()=>{const e=$("ae").value.trim(),p=$("ap").value;
  if(!e.includes("@")||p.length<4){alert("Enter a valid email and a password of at least 4 characters.");return}
  const name=signup?($("an").value.trim()||e.split("@")[0]):(load("nc_user",null)?.name||e.split("@")[0]);
  user={name,email:e};save("nc_user",user);closePop();render()};
}
function newPlaylist(afterId){
 popup(`<h2>Create a playlist</h2><p>Give your new playlist a name.</p><input type="text" id="pn" placeholder="Playlist name"><button class="sub" id="pcreate">Create Playlist</button>`);
 $("pn").focus();
 const mk=()=>{const n=$("pn").value.trim();if(!n)return;lists.push({name:n,ids:afterId?[afterId]:[]});save("nc_lists",lists);closePop();render()};
 $("pcreate").onclick=mk;$("pn").onkeydown=e=>{if(e.key==="Enter")mk()};
}
function addTo(id){
 popup(`<h2>Add to playlist</h2><p>${esc(byId(id).title)}</p>${lists.map((l,i)=>`<button class="pl" data-pick="${i}">${esc(l.name)} <span style="color:#777">· ${l.ids.length}</span></button>`).join("")}<button class="pl" data-newfor="1">+ New playlist</button>`);
 $("pc").onclick=e=>{const b=e.target.closest("button");if(!b)return;
  if(b.dataset.newfor)newPlaylist(id);
  else if(b.dataset.pick!=null){const l=lists[+b.dataset.pick];if(!l.ids.includes(id))l.ids.push(id);save("nc_lists",lists);closePop();render()}};
}

/* ---- EVENTS ---- */
document.addEventListener("click",e=>{
 const t=e.target;let el;
 if(el=t.closest("[data-fav]")){const id=+el.dataset.fav;favs=favs.includes(id)?favs.filter(x=>x!==id):[...favs,id];save("nc_favs",favs);render();return}
 if(el=t.closest("[data-add]")){addTo(+el.dataset.add);return}
 if(el=t.closest("[data-play]")){const ids=el.dataset.ctx.split(",").map(Number);setQueue(ids,+el.dataset.play);start();return}
 if(el=t.closest("[data-newpl]")){newPlaylist();return}
 if(el=t.closest("[data-delpl]")){if(confirm("Delete this playlist?")){lists.splice(+el.dataset.delpl,1);save("nc_lists",lists);go("playlists")}return}
 if(el=t.closest("[data-login]")){authForm(false);return}
 if(el=t.closest("[data-signup]")){authForm(true);return}
 if(el=t.closest("[data-logout]")){user=null;save("nc_user",null);render();return}
 if(el=t.closest("[data-go]")){e.preventDefault();const g=el.dataset.go,a=el.dataset.arg;go(g,g==="playlist"?+a:a);return}
});
$("q").oninput=render;
document.addEventListener("keydown",e=>{if(e.code==="Space"&&!/INPUT|TEXTAREA/.test(document.activeElement.tagName)){e.preventDefault();pauseResume()}});
render();
</script>
</body>
</html>
