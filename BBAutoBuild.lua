--[[
    Synapse Xen v1.1.2 by Synapse GP
    VM Hash: 436232a2dc9ae086c079b0c8bf418a2c1201c23b0a256fe5911ee975d9101672
]]

--This file was obfuscated using PSU Obfuscator 4.0.A | https://www.psu.dev

--[[
Gogo1000 was here!
Powered by IronBrew!
Good luck with deobfuscation tho its impossible... Ok bye!
]]

-- This file was generated using Luraph Obfuscator v15

-- Protected by Moonsec V2

-- This file was protected with MoonSec V3

--[[
IronBrew obfuscation; Version 2.7.2
]]

--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]

-- // Protected by luaGuard - Script ID 69420 Account ID: 1

--// Obfuscated with LuaSeel 1.1 

-- 77fuscator 0.3.6

-- discord.gg/boronide, code generated using luamin.js

-- Boronide Premium Obfuscation, v0.6.4


local t=string.byte;local r=string.char;local c=string.sub;local s=table.concat;local h=math.ldexp;local E=getfenv or function()return _ENV end;local l=setmetatable;local u=select;local f=unpack;local i=tonumber;local function T(t)local o,e,d="","",{}local a=256;local n={}for l=0,a-1 do n[l]=r(l)end;local l=1;local function f()local o=i(c(t,l,l),36)l=l+1;local e=i(c(t,l,l+o-1),36)l=l+o;return e end;o=r(f())d[1]=o;while l<#t do local l=f()if n[l]then e=n[l]else e=o..c(o,1,1)end;n[a]=o..c(e,1,1)d[#d+1],o,a=e,e,a+1 end;return table.concat(d)end;local a=T('21T27427422127527222124X25A26D27721T26Y22927B26M22927426Z22123521T26M27E26Q22P27I22P27L22H27426M27X21T27321T27V26M27527322127K27Q27428727Y27E21X27521T22327521921A1W21121E21H21F21421B21221T28F2742121W21821021T21Y2751921H21H21D1621021H21T23E27521529521D21E23F23223221E1Y28Q21D21H21E23321921G1W21I2192331Y21A21823221521A28O21021123223923923623A23223723423B23523C23213131021G21H21A1321G21421921129R29T');local n=bit and bit.bxor or function(l,o)local e,n=1,0 while l>0 and o>0 do local c,a=l%2,o%2 if c~=a then n=n+e end l,o,e=(l-c)/2,(o-a)/2,e*2 end if l<o then l=o end while l>0 do local o=l%2 if o>0 then n=n+e end l,e=(l-o)/2,e*2 end return n end local function o(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function e()local e,c,o,a=t(a,l,l+3);e=n(e,65)c=n(c,65)o=n(o,65)a=n(a,65)l=l+4;return(a*16777216)+(o*65536)+(c*256)+e;end;local function d()local o=n(t(a,l,l),65);l=l+1;return o;end;local function T()local n=e();local l=e();local c=1;local n=(o(l,1,20)*(2^32))+n;local e=o(l,21,31);local l=((-1)^o(l,32));if(e==0)then if(n==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return h(l,e-1023)*(c+(n/(2^52)));end;local i=e;local function h(o)local e;if(not o)then o=i();if(o==0)then return'';end;end;e=c(a,l,l+o-1);l=l+o;local o={}for l=1,#e do o[l]=r(n(t(c(e,l,l)),65))end return s(o);end;local l=e;local function i(...)return{...},u('#',...)end local function b()local t={0,0,0,0,0,0,0,0};local l={};local c={};local a={t,nil,l,nil,c};a[4]=d();for o=1,e()do l[o-1]=b();end;for a=1,e()do local c=n(e(),190);local e=n(e(),175);local n=o(c,1,2);local l=o(e,1,11);local l={l,o(c,3,11),nil,nil,e};if(n==0)then l[3]=o(c,12,20);l[5]=o(c,21,29);elseif(n==1)then l[3]=o(e,12,33);elseif(n==2)then l[3]=o(e,12,32)-1048575;elseif(n==3)then l[3]=o(e,12,32)-1048575;l[5]=o(c,21,29);end;t[a]=l;end;local l=e()local e={0,0,0,0};for n=1,l do local o=d();local l;if(o==2)then l=(d()~=0);elseif(o==1)then l=T();elseif(o==0)then l=h();end;e[n]=l;end;a[2]=e return a;end;local function H(l,o,h)local n=l[1];local e=l[2];local o=l[3];local l=l[4];return function(...)local r=n;local t=e;local o=o;local n=l;local s=i local e=1;local d=-1;local i={};local c={...};local a=u('#',...)-1;local l={};local o={};for l=0,a do if(l>=n)then i[l-n]=c[l+1];else o[l]=c[l+1];end;end;local l=a-n+1 local l;local a;while true do l=r[e];a=l[1];if a<=6 then if a<=2 then if a<=0 then o[l[2]]=t[l[3]];elseif a>1 then local n=l[2];local a={};local e=0;local c=d;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](f(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else o[l[2]]();d=A;end;elseif a<=4 then if a==3 then do return end;else o[l[2]]=h[t[l[3]]];end;elseif a==5 then o[l[2]]=t[l[3]];else local e=l[2];local n=o[l[3]];o[e+1]=n;o[e]=n[t[l[5]]];end;elseif a<=10 then if a<=8 then if a>7 then local n=l[2];local a={};local e=0;local c=d;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](f(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else o[l[2]]();d=A;end;elseif a>9 then local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=s(o[n](f(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else local n=l[2];local e=o[l[3]];o[n+1]=e;o[n]=e[t[l[5]]];end;elseif a<=12 then if a>11 then do return end;else local n;local u,n;local a;local c;local i;local T;local n;o[l[2]]=h[t[l[3]]];e=e+1;l=r[e];o[l[2]]=h[t[l[3]]];e=e+1;l=r[e];n=l[2];T=o[l[3]];o[n+1]=T;o[n]=T[t[l[5]]];e=e+1;l=r[e];o[l[2]]=t[l[3]];e=e+1;l=r[e];n=l[2];i={};c=0;a=n+l[3]-1;for l=n+1,a do c=c+1;i[c]=o[l];end;u,a=s(o[n](f(i,1,a-n)));a=a+n-1;c=0;for l=n,a do c=c+1;o[l]=u[c];end;d=a;e=e+1;l=r[e];n=l[2];i={};c=0;a=d;for l=n+1,a do c=c+1;i[c]=o[l];end;u={o[n](f(i,1,a-n))};a=n+l[5]-2;c=0;for l=n,a do c=c+1;o[l]=u[c];end;d=a;e=e+1;l=r[e];o[l[2]]();d=n;e=e+1;l=r[e];do return end;end;elseif a>13 then local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=s(o[n](f(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else o[l[2]]=h[t[l[3]]];end;e=e+1;end;end;end;return H(b(),{},E())();
