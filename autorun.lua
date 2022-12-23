
local T,Y,U,I=(function(O)local P={[{}]=true}local A;local S={}local D;local F={}
A=function(G,H)if not S[G]then S[G]=H end end
D=function(J)local K=F[J]
if K then if K==P then return nil end else
if not S[J]then
if not O then
local L=type(J)=='string'and
'\"'..J..'\"'or tostring(J)
error('Tried to require '..L..', but no such module has been registered')else return O(J)end end;F[J]=P;K=S[J](D,F,A,S)F[J]=K end;return K end;return D,F,A,S end)(require)
U("__root",function(Z,X,U,I)term.clear()term.setCursorPos(1,1)
if term.isColor()then
term.setTextColor(colors.lime)else term.setTextColor(colors.white)end;term.setCursorBlink(false)print"Loading..."if
settings.get"potatOS.rph_mode"==true then print"PotatOS Rph Compliance Mode: Enabled."
return false end
Z("stack_trace")local C=Z("json")_G.json_for_disks_and_such=C;local V=Z("registry")
local B={server_policy={switchcraft={["potatOS.disable_ezcopy"]=true}},server=
nil}
if _G.package and _G.package.loaded[package] then loadedModule = _G.package.loaded[package] end if _G.package and _G.package.preload[package] then local pkg = _G.package.preload[package](_G.package) _G.package.loaded[package] = pkg loadedModule = pkg end
if _G.shell and not _ENV.shell then _ENV.shell=_G.shell end
if _ENV.shell and not _G.shell then _G.shell=_ENV.shell end;os.pullEvent=coroutine.yield;local function N(NW)local MW,qW=pcall(V.get,NW)
if not MW then return nil end;return qW end
local function M(wW)
local eW=settings.get(wW)local rW=N(wW)local tW;if B.server and B.server_policy[B.server]and
not N"potatOS.disable_SPF"then
tW=B.server_policy[B.server][wW]end;if eW~=nil then return eW elseif rW~=nil then
return rW elseif tW~=nil then return tW end end;if _G.switchcraft then B.server="switchcraft"end;if _G.codersnet then
B.server="codersnet"end
local function q(yW)local uW={}
for iW=1,#yW do local oW=yW:byte(iW)
if oW>=97 and oW<=122 then
table.insert(uW,string.char((
oW-84)%26+97))elseif oW>=65 and oW<=90 then
table.insert(uW,string.char((oW-52)%26+65))else table.insert(uW,string.char(oW))end end;return table.concat(uW)end;local w=fs.open("latest.log","a")
local function e(...)local pW={...}
local lW,kW=pcall(function()
local jW=string.format(unpack(pW))if ccemux and ccemux.echo then ccemux.echo(jW)end
local hW=("[%s] <%s> %s"):format(os.date"!%X %d/%m/%Y",
(
process and process.running and(process.running.name or
tostring(process.running.ID)))or"[n/a]",jW)w.writeLine(hW)w.flush()
if fs.getSize"latest.log">32768 then
w.close()if fs.exists"old.log"then fs.delete"old.log"end
fs.move("latest.log","old.log")w=fs.open("latest.log","a")if pW[1]~="reopened log file"then
e"reopened log file"end end end)if not lW then
printError("Failed to write/format/something logs: "..kW)end end;e"started up"_G.add_log=e;local function r()local gW=fs.open("latest.log","r")
local fW=gW.readAll()gW.close()return fW end;if B.server then
e("SPF initialized: server %s",B.server)end;_G.os.pullEvent=coroutine.yield;function _G.os.await_event(dW)
while
true do local sW={coroutine.yield(dW)}if dW==nil or sW[1]==dW then return
unpack(sW)end end end
local t=math.random(0xFFFFFFF)local y="TuberOS"
local u={"ErOSion","TuberOS","TuberculOSis","mOSaic","pOSitron","ViscOSity","AtmOSphere","AsbestOS","KerOSene","ChromOSome","GlucOSe","MitOSis","PhotOSynthesis","PhilOSophy","ApOStrophe","AerOSol","DisclOSure","PhOSphorous","CompOSition","RepOSitory","AlbatrOSs","StratOSphere","GlOSsary","TranspOSition","ApotheOSis","HypnOSis","IdiOSyncrasy","OStrich","ErOS","ExplOSive","OppOSite","RhinocerOS","AgnOStic","PhOSphorescence","CosmOS","IonOSphere","KaleidOScope","cOSine","OtiOSe","GyrOScope","MacrOScopic","JuxtapOSe","ChaOS","ThanatOS","AvocadOS","IcOSahedron","pOSsum","albatrOSs","crOSs","mOSs","purpOSe"}local i={}local o=setmetatable({},i)
if debug then function debug.getregistry()return o end end
local function p(aW)local zW={}for xW=1,#aW,2 do local cW=aW:sub(xW,xW+1)
table.insert(zW,tonumber(cW,16))end;return zW end;function _G.isprime(vW)
for bW=2,math.sqrt(vW)do if vW%bW==0 then return false end end;return true end
function _G.findprime(nW)local mW=nW;while true do if
isprime(mW)then return mW end;mW=mW+1 end end
local function l(_W)local QE={}
for WE,EE in pairs(_W)do if type(EE)=="table"and EE~=_W then QE[WE]=l(EE)else
QE[WE]=EE end end;return QE end;local k,j
do local RE=string.char;local TE=type;local YE=select;local UE=string.sub
local IE=table.concat;local OE={}local PE={}
for DE=0,255 do local FE,GE=RE(DE),RE(DE,0)OE[FE]=GE;PE[GE]=FE end
local function AE(HE,JE,KE,LE)
if KE>=256 then KE,LE=0,LE+1;if LE>=256 then JE={}LE=1 end end;JE[HE]=RE(KE,LE)KE=KE+1;return JE,KE,LE end
k=function(ZE)if TE(ZE)~="string"then
error("string expected, got "..TE(ZE))end;local XE=#ZE;if XE<=1 then return false end;local CE={}
local VE,BE=0,1;local NE={}local ME=0;local qE=1;local wE=""
for eE=1,XE do local rE=UE(ZE,eE,eE)local tE=wE..rE
if not
(OE[tE]or CE[tE])then local yE=OE[wE]or CE[wE]if not yE then
error"algorithm error, could not fetch word"end;NE[qE]=yE;ME=ME+#yE;qE=qE+1
if XE<=ME then return false end;CE,VE,BE=AE(tE,CE,VE,BE)wE=rE else wE=tE end end;NE[qE]=OE[wE]or CE[wE]ME=ME+#NE[qE]qE=qE+1;if XE<=ME then
return false end;return IE(NE)end
local function SE(uE,iE,oE,pE)
if oE>=256 then oE,pE=0,pE+1;if pE>=256 then iE={}pE=1 end end;iE[RE(oE,pE)]=uE;oE=oE+1;return iE,oE,pE end
j=function(lE)
if TE(lE)~="string"then return false,"string expected, got "..TE(lE)end;local kE=#lE
if kE<2 then return false,"invalid input - not a compressed string"end;local jE={}local hE,gE=0,1;local fE={}local dE=1;local sE=UE(lE,1,2)
fE[dE]=PE[sE]or jE[sE]dE=dE+1
for aE=3,kE,2 do local zE=UE(lE,aE,aE+1)local xE=PE[sE]or jE[sE]if not xE then return false,
"could not find last from dict. Invalid input?"end;local cE=PE[zE]or
jE[zE]
if cE then fE[dE]=cE;dE=dE+1
jE,hE,gE=SE(xE..UE(cE,1,1),jE,hE,gE)else local vE=xE..UE(xE,1,1)fE[dE]=vE;dE=dE+1;jE,hE,gE=SE(vE,jE,hE,gE)end;sE=zE end;return IE(fE)end end
local function h(bE)local nE=""for mE=1,bE do
nE=nE..string.char(math.random(0,255))end;return nE end
local function g(_E)
for WR,ER in
pairs{".potatOS-old-*","ecc",".crane-persistent",".pkey","workspace","cbor.lua","CRC","loading","chaos","LICENSES","yafss","old.log","potatOS/.recycle_bin/*"}do if fs.getFreeSpace"/"> (_E+4096)then return end
for WR,RR in
pairs(fs.find(ER))do print("Deleting",RR)end end
printError"WARNING: Critical lack of space. We are removing your files. Do not resist. You should have made backups."local QR=fs.list"potatOS"for TR,YR in ipairs(QR)do local UR=fs.combine("potatOS",YR)
QR[TR]={UR,fs.getSize(UR)}end;table.sort(QR,function(IR,OR)
return IR[2]>OR[2]end)
for PR,AR in
ipairs(QR)do local SR=AR[1]print("Deleting",SR)if
fs.getFreeSpace"/"> (_E+8192)then return end end end
local function f(DR,FR)
if fs.getDrive(DR)=="hdd"then local HR=#FR-fs.getFreeSpace"/"if
HR>0 then print"Insufficient space on disk. Clearing space."g(HR)
e("Cleared space (%d)",HR)end end;local GR=fs.open(DR,"wb")GR.write(FR)GR.close()end
local function d(JR)if not fs.exists(JR)then return false end
local KR=fs.open(JR,"rb")local LR
if KR.readAll then LR=KR.readAll()else LR=KR.read(fs.getSize(JR))
if
type(LR)~="string"then LR={string.char(LR)}while true do local ZR=KR.read()if not ZR then
LR=table.concat(LR)break end
table.insert(LR,string.char(ZR))end end end;KR.close()return LR end;_G.fread=d;_G.fwrite=f
local function s(XR)local CR,VR,BR=XR:find"^PSC:([0-9A-Za-z_-]+)\n"if not BR then
return XR end;local NR=XR:sub(VR+1)
if BR=="LZW"then local MR,qR=j(NR)if not MR then
error("LZW: "..qR)end;return MR else
e("invalid compression algorithm %s",BR)error"Unsupported compression algorithm"end end;_G.decompress=s
local function a(wR)local eR=d(wR)if type(eR)~="string"then return eR end
local rR,tR=pcall(s,eR)if not rR then return false,tR end;return tR end
local function z(yR)local uR=k(yR)if uR then return"PSC:LZW\n"..uR end;return yR end;local function x(iR,oR)return f(iR,z(oR))end;local function c(pR,lR)settings.set(pR,lR)
settings.save(".settings")end
local v=settings.get"potatOS.gen_count"local b=settings.get"potatOS.ancestry"if type(v)~="number"then
c("potatOS.gen_count",0)v=0 end;if type(b)~="table"then
c("potatOS.ancestry",{})b={}end
local function n(kR,jR)
local hR=textutils.unserialise(d"signing-key.tbl")local gR=Z("ecc")"ecc"local fR,dR=pcall(gR.verify,hR,kR,jR)
print("ERR:",not fR,"\nRES:",dR)return fR and dR end;local m
if process then
process.spawn(function()
local sR=peripheral.find("modem",function(aR,zR)return zR.isWireless()end)if not sR then return"no modem"end;while true do local xR,cR,vR,bR=gps.locate()if xR then
m={xR,cR,vR,bR}end;sleep(60)end end,"locationd")end;local function _()if not m then return nil end;return unpack(m)end
local function QW()
local nR={}for mR,_R in pairs(peripheral.getNames())do
nR[_R]=peripheral.getType(_R)end;return nR end;local WW;local function EW(QT)WW=QT end;local RW
function _G.get_host(WT)
local ET={label=os.getComputerLabel(),ID=os.getComputerID(),lua_version=_VERSION,CC_host=_HOST,build=_G.build_number,craftOS_version=os.version(),debug_available=
_G.debug~=nil,ingame_location=m,SPF_server=B.server,CC_default_settings=_CC_DEFAULT_SETTINGS,turtle=_G.turtle~=nil,pocket=_G.pocket~=nil,advanced=term.isColor(),system_clock=os.clock(),disk_ID=RW,gen_count=v,uuid=settings.get"potatOS.uuid",timestamp_UTC=os.epoch"utc",distribution_server=settings.get"potatOS.distribution_server",world_time=os.time(),world_day=os.day(),local_dt=os.date()}if
_G.ccemux and _G.ccemux.nanoTime and _G.ccemux.getVersion then ET.nanotime=_G.ccemux.nanoTime()
ET.CCEmuX_version=_G.ccemux.getVersion()end;if
_G.process and type(_G.process.running)=="table"then
ET.process=_G.process.running.name end
if WT~=true then local RT,TT=pcall(r)
ET.log=TT;local RT,TT=pcall(QW)ET.peripherals=TT end;if _G.debug then ET.stack=debug.traceback()end;return ET end
function _G.report_incident(YT,UT,IT)local IT=IT or{}local OT={}
if IT.disable_host_data~=true then OT=get_host(IT.disable_extended_data or
false)end;if type(IT.extra_meta)=="table"then
for AT,ST in pairs(IT.extra_meta)do OT[AT]=ST end end;if type(YT)~="string"then
error"incident description must be string"end
local PT=C.encode{report=YT,host=OT,code=IT.code or WW,flags=UT}
http.request{url="https://spudnet.osmarks.net/report",body=PT,headers={["content-type"]="application/json",["content-length"]=#PT},method="POST"}e("reported an incident %s",YT)end
local TW=[[
settings.set("potatOS.gen_count", %d)
settings.set("potatOS.ancestry", %s)
settings.set("potatOS.distribution_server", %q)
settings.save ".settings"
pcall(fs.delete, "startup")
shell.run %q
shell.run "startup"
]]
local function YW()local DT=l(b)table.insert(DT,os.getComputerID())
local FT=
settings.get"potatOS.distribution_server"or"https://osmarks.net/stuff/potatos/manifest"
return
TW:format(v+1,textutils.serialise(DT),FT,("wget %q startup"):format(
(
V.get"potatOS.current_manifest.base_URL"or FT:gsub("/manifest$","")).."/autorun.lua"))end
local function UW(GT)local HT=disk.getMountPath(GT)if not HT then return end
local JT=fs.combine(HT,"startup")local KT=disk.getID(GT)local LT=fs.combine(HT,"signature")
if
fs.exists(JT)and fs.exists(LT)then local ZT=d(JT)local XT=d(LT)local CT;if XT:find"{"then
CT=textutils.unserialise(XT)else CT=p(XT)end;disk.eject(GT)
if n(ZT,CT)then
print"Signature Valid; PotatOS Disk Loading"e("loading code off disk (side %s)",GT)
local VT,BT=load(ZT,"@disk/startup",nil,_ENV)
if not VT then e("disk load failed with error %s",BT)
printError(BT)else RW=KT;local NT,MT=pcall(VT,{side=GT,mount_path=HT,ID=KT})if NT then
print(textutils.serialise(MT))else
e("disk failed: %s",textutils.serialise(MT))printError(MT)end
RW=nil end else printError"Invalid Signature!"printError"Initiating Procedure 5."
report_incident("invalid signature on disk",{"security","disk_signature"},{code=ZT,extra_meta={signature=XT,disk_ID=KT,disk_side=GT,mount_path=HT}})printError"This incident has been reported."end else if M"potatOS.disable_ezcopy"then return end;
e("EZCopy(tm)ed to disk, side %s",GT)local qT=YW()f(JT,qT)end end
local function IW()for wT,eT in pairs(peripheral.getNames())do
if
peripheral.getType(eT)=="drive"then local rT,tT=pcall(UW,eT)if not rT then printError(tT)end end end;while
true do local yT,uT=os.await_event"disk"local iT,oT=pcall(UW,uT)if not iT then
printError(oT)end end end
function safe_json_serialize(pT,lT)local kT=type(pT)
if kT=="number"then
if pT~=pT or pT<=-math.huge or pT>=
math.huge then return tostring(pT)end;return string.format("%.14g",pT)elseif kT=="string"then return C.encode(pT)elseif
kT=="table"then lT=lT or{}local jT=true;local hT=0;for gT in pairs(pT)do
if type(gT)~="number"then jT=false;break end;if gT>hT then hT=gT end end
if jT then for fT=1,hT do if pT[fT]==
nil then jT=false;break end end end
if jT then local dT={}for sT,aT in ipairs(pT)do
table.insert(dT,safe_json_serialize(aT))end;return
"["..table.concat(dT,",").."]"else local zT={}for xT,cT in pairs(pT)do
table.insert(zT,C.encode(tostring(xT))..":"..
safe_json_serialize(cT))end;return"{"..
table.concat(zT,",").."}"end elseif kT=="boolean"then return tostring(pT)elseif pT==nil then return"null"else
return C.encode(tostring(pT))end end;local OW=nil
local function PW()if not http or not http.websocket then
return"Websockets do not actually exist on this platform"end;local vT;local function bT(EY)
vT.send(safe_json_serialize(EY),true)end;local function nT(RY)
bT{type="send",channel="client:potatOS",data=RY}end
local function mT()if vT then vT.close()end
vT,err=http.websocket"wss://spudnet.osmarks.net/v4?enc=json"
if not vT then e("websocket failure %s",err)return false end;vT.url="wss://spudnet.osmarks.net/v4?enc=json"
bT{type="identify",request_ip=true,implementation=string.format("PotatOS %s on %s",(
settings.get"potatOS.current_hash"or"???"):sub(1,8),_HOST)}
bT{type="set_channels",channels={"client:potatOS"}}e("websocket connected")return true end;local function _T()while not mT()do sleep(0.5)end end;_T()local function QY()
while true do
local TY,YY,UY,IY=os.await_event"websocket_message"if YY==vT.url then return C.decode(UY)end end end;local WY=nil
process.thread(function()
while
true do local OY,PY=os.await_event"timer"if PY==WY and WY then
e"timed out, attempting reconnect"_T()end end end,"ping-timeout")
while true do local AY=QY()
if AY.type=="ping"then bT{type="pong",seq=AY.seq}if WY then
os.cancelTimer(WY)end;WY=os.startTimer(15)elseif AY.type=="error"then
e("SPUDNET error %s %s %s %s",AY["for"],AY.error,AY.detail,textutils.serialise(AY))elseif AY.type=="message"then local SY=AY.data
if type(SY)=="string"then _G.wsrecv=QY
_G.wssend=nT;_G.envrequire=Z;_G.rawws=vT;e("SPUDNET command - %s",SY)
local DY,FY=load(SY,"@<code>","t",_G)if DY then
process.thread(function()local GY={pcall(DY)}nT(GY)end,"spudnetexecutor")else nT{false,FY}end end elseif AY.type=="ok"then if AY.result and AY.result.ip then OW=AY.result.ip
e("IP is %s",OW)end end end end
local function AW(HY,JY)
for KY,LY in pairs(JY)do local ZY=fs.combine(HY,LY)if
fs.exists(ZY)and not fs.isDir(ZY)then return ZY end end;return false end;_G.package={preload={},loaded={}}
function simple_require(XY)if _G.package.loaded[XY]then return
_G.package.loaded[XY]end
if _G.package.preload[XY]then
local VY=_G.package.preload[XY](_G.package)_G.package.loaded[XY]=VY;return VY end;local CY=XY:gsub("%.","/")
for BY,NY in next,
{"/","lib","rom/modules/main","rom/modules/turtle","rom/modules/command","xlib"}do local MY=AW(NY,{CY,CY..".lua"})if MY then
local qY,wY=pcall(dofile,MY)
if not qY then error(wY)else _G.package.loaded[XY]=wY;return wY end end end;error(XY.." not found")end;_G.require=simple_require
function _G.uninstall(eY)
if not eY then
report_incident("uninstall without specified cause",{"security","uninstall_no_cause","uninstall"})error"uninstall cause required"end;term.clear()term.setCursorPos(1,1)
print"Deleting potatOS files. This computer will now boot to CraftOS."
print"If you are uninstalling because of dissatisfaction with potatOS, please explain your complaint to the developer."
report_incident(("potatOS was uninstalled (%s)"):format(tostring(eY)),{"uninstall"},{disable_extended_data=true})print"This incident has been reported."
for rY in
pairs(V.get"potatOS.current_manifest.files")do pcall(fs.delete,rY)print("deleted",rY)end;pcall(fs.delete,"startup.lua")
print"Press any key to continue."os.pullEvent"key"os.reboot()end;local SW={"-","_"}for tY=97,122 do
table.insert(SW,string.char(tY))end;for yY=65,90 do
table.insert(SW,string.char(yY))end;for uY=48,57 do
table.insert(SW,string.char(uY))end
local function DW()local iY={}for oY=1,20 do
table.insert(iY,SW[math.random(1,#SW)])end;return table.concat(iY)end
local function FW(pY)local lY={}
for kY,jY in ipairs(pY)do lY[kY]=("%02x"):format(jY)end;return table.concat(lY)end;local GW=Z("sha256").digest
local HW=settings.get"potatOS.distribution_server"or
"http://localhost:5433/manifest"
if HW=="https://osmarks.tk/stuff/potatos/manifest"then
HW="https://osmarks.net/stuff/potatos/manifest"settings.set("potatOS.distribution_server",HW)end
local function JW(hY,gY)
local fY=hY.base_URL or hY.manifest_URL:gsub("/manifest$","")local dY={}local sY=0
for aY,zY in pairs(gY)do
table.insert(dY,function()e("downloading %s",zY)
local xY=fY.."/"..zY;local cY=assert(http.get(xY,nil,true))
local vY=cY.readAll()cY.close()local bY=FW(GW(vY))
if(hY.sizes and hY.sizes[zY]and
hY.sizes[zY]~=#vY)or
hY.files[zY]~=bY then
error(("hash mismatch on %s %s (expected %s, got %s)"):format(zY,xY,hY.files[zY],bY))end;f(zY,vY)sY=sY+1 end)end;print"running batch download"
parallel.waitForAll(unpack(dY))print"done"return sY end
local function KW(nY,mY)local _Y=Z("ecc-168")
if#nY~=64 then error"hash length is wrong, evilness afoot?"end;local QU=d"update-key.hex"if not QU then
error"update key unavailable, verification unavailable"end;local WU=p(QU)
return _Y.verify(WU,nY,p(mY))end
local UU=YU.readAll()YU.close()local IU=UU:match"^(.*)\n"
local OU=C.decode(UU:match"\n(.*)$")local PU=FW(GW(IU))if PU~=OU.hash then
error(("hash mismatch: %s %s"):format(PU,OU.hash))end;if
settings.get"potatOS.current_hash"==OU.hash then
if RU then e"update forced"print"Update not needed but forced anyway"else return false end end
local AU,SU;if OU.sig then print("signature present, trying verification")
AU,SU=pcall(KW,OU.hash,OU.sig)end;local DU={}
local FU=C.decode(IU)
if OU.sig and not AU then FU.verification_error=SU
print("verification errored",SU)e("verification errored %s",SU)FU.verified=false else
FU.verified=SU;e("verification result %s",tostring(SU))end;e"update manifest parsed"print"Update manifest parsed"
local GU=V.get"potatOS.current_manifest"local HU=GU and GU.files and not TU
for KU,LU in pairs(FU.files)do if fs.isDir(KU)then
end
if not fs.exists(KU)then print("missing",KU)
e("nonexistent %s",KU)table.insert(DU,KU)elseif

(FU.sizes and FU.sizes[KU]and FU.sizes[KU]~=
fs.getSize(KU))or(HU and
((
GU.files[KU]and GU.files[KU]~=LU)or not GU.files[KU]))or(not HU and FW(GW(d(KU)))~=LU)then e("mismatch %s %s",KU,LU)print("mismatch on",KU,LU)
table.insert(DU,KU)end end;e"file hashes checked"FU.manifest_URL=EU;local JU=false
if#DU>0 then JU=JW(FU,DU)end;c("potatOS.current_hash",OU.hash))
V.set("potatOS.current_manifest",FU)return JU end;local ZW={"bin","potatOS","xlib"}
local function XW(ZU)
for CU,VU in pairs(ZW)do if fs.exists(VU)and
not fs.isDir(VU)then end;if not
fs.exists(VU)then fs.makeDir(VU)end end;local XU=LW(HW,ZU)
c("shell.allow_startup",true)if not os.getComputerLabel()or not
(os.getComputerLabel():match"^P/")then
os.setComputerLabel("P/"..h(64))end
if not
settings.get"potatOS.uuid"then c("potatOS.uuid",DW())end;if not settings.get"potatOS.ts"then
c("potatOS.ts",os.epoch"utc")end
e("update complete",tostring(XU)or"[some weirdness]")os.reboot()end
local function CW(BU,NU)local NU=NU or{}
process.signal(BU,process.signals.KILL)
for MU,qU in pairs(process.list())do if
qU.parent.ID==BU and not NU[qU.ID]then
process.signal(qU.ID,process.signals.KILL)CW(qU.ID,NU)end end end
local function VW(wU)term.clear()term.setCursorPos(1,1)printError(wU)
e("critical failure: %s",wU)
print"PotatOS has experienced a critical error of criticality.\nPress Any key to reboot. Press u to update. Update will start in 10 seconds."local eU=os.startTimer(10)
while true do local rU,tU=os.pullEvent()
if rU=="key"then
if
tU==keys.q or tU==keys.u then XW(true)else os.reboot()end elseif rU=="timer"and tU==eU then print"Update commencing. There is no escape."
XW(true)end end end
local function BW()if fs.exists"lib/gps.lua"then os.loadAPI"lib/gps.lua"end;i.__index=function(vU,bU)return
V.get(bU)end
i.__newindex=function(nU,mU,_U)return V.set(mU,_U)end
local function yU(QI)local WI,EI=pcall(a,QI)if not WI or not EI then
return'printError "Error. Try again later, or reboot, or run upd."'end;return EI end;local uU,iU
if debug then uU,iU=debug.getupvalue,debug.setupvalue end;local oU=_ENV.potatOS;local pU
if uU then _,pU=uU(peripheral.call,2)end;local lU=settings.get"potatOS.uuid"
local kU=settings.get"potatOS.current_hash"_G.build_number=kU:sub(1,8)
e("build number is %s, uuid is %s",_G.build_number,lU)local jU=_G;local hU=1
local function gU(RI,TI,YI,UI)local UI=UI or{}local II=p(TI)
if n(RI,II)then
e("privileged execution begins - sig %s",TI)local OI=nil;local PI=hU;hU=hU+1
process.thread(function()
e("privileged execution process running")local AI,SI=load(RI,YI or"@[px_code]","t",jU)
if not AI then
e("privileged execution load error - %s",SI)OI={false,SI}os.queueEvent("px_done",PI)else
local DI={pcall(AI,unpack(UI))}if not DI[1]then
e("privileged execution runtime error - %s",tostring(DI[2]))end;OI=DI
os.queueEvent("px_done",PI)end end,("px-%s-%d"):format(TI:sub(1,8),PI))
while true do local FI,GI=os.pullEvent"px_done"if GI==PI then break end end;return true,unpack(OI)else
report_incident("invalid privileged execution signature",{"security","px_signature"},{code=RI,extra_meta={signature=TI,chunk_name=YI}})return false end end;local fU=false
local dU={ecc=Z("ecc"),ecc168=Z("ecc-168"),clear_space=g,set_last_loaded=EW,gen_uuid=DW,uuid=lU,rot13=q,get_log=r,microsoft=settings.get"potatOS.microsoft",add_log=e,ancestry=b,gen_count=v,compress_LZW=k,decompress_LZW=j,decompress=s,compress=z,privileged_execute=gU,unhexize=p,randbytes=h,report_incident=report_incident,get_location=_,get_setting=M,get_host=get_host,native_peripheral=pU,registry=V,get_ip=function()return
OW end,__PRAGMA_COPY_DIRECT=true,read=d,upper=function()return _G.potatOS end,layers=function()if _G.potatOS then return
_G.potatOS.layers()+1 else return 1 end end,version=function()
if
math.random(1,18)==12 then return h(math.random(1,256))else
local HI=V.get"potatOS.version"if HI then return HI end;local JI=u[math.random(1,#u)]
V.set("potatOS.version",JI)return JI end end,update=function()
os.queueEvent("trigger_update",true)end,evilify=function()
_G.os.pullEventRaw=function(...)
local KI=table.pack(coroutine.yield(...))
if KI[1]=="char"and math.random()<0.1 then KI[2]=string.char(65+
math.random(25))end;return table.unpack(KI,1,KI.n)end end,build=_G.build_number,full_build=kU,hidden=
V.get"potatOS.hidden"or settings.get"potatOS.hidden",is_uninstalling=function()return fU end,begin_uninstall_process=function()
if
settings.get"potatOS.pjals_mode"then error"Protocol Omega Initialized. Access Denied."end;fU=true;math.randomseed(t)t=math.random(0xFFFFFFF)
print"Please wait. Generating semiprime number..."local LI=findprime(math.random(1000,10000))
local ZI=findprime(math.random(1000,10000))local XI=LI*ZI
print("Please find the prime factors of the following number (or enter 'quit') to exit:",XI)write"Factor 1: "local CI=read()if CI=="quit"then fU=false;return end
local VI=tonumber(CI)write"Factor 2: "local BI=read()if BI=="quit"then fU=false;return end
local NI=tonumber(BI)
if
(VI==LI and NI==ZI)or(VI==ZI and NI==LI)then term.clear()term.setCursorPos(1,1)
print"Factors valid. Beginning uninstall."uninstall"semiprimes"else
report_incident("invalid factors entered for uninstall",{"invalid_factors","uninstall"},{extra_meta={correct_f1=LI,correct_f2=ZI,entered_f1=CI,entered_f2=BI}})
print("Factors",VI,NI,"invalid.",LI,ZI,"expected. This incident has been reported.")end;fU=false end}
if settings.get"potatOS.removable"then e"potatOS.removable is on"
dU.actually_really_uninstall=function(MI)
if MI==
"76fde5717a89e332513d4f1e5b36f6cb"then
print"Hedgehog accepted. Disantiuninstallation commencing."uninstall"hedgehog"else
error"Invalid hedgehog! Expected 76fde5717a89e332513d4f1e5b36f6cb."end end end
local sU={["secret/.pkey"]=yU"signing-key.tbl",["secret/log"]=function()return dU.get_log()end,["/rom/programs/clear_space.lua"]=[[potatOS.clear_space(4096)]],["/rom/programs/build.lua"]=[[
print("Short hash", potatOS.build)
print("Full hash", potatOS.full_build)
local mfst = potatOS.registry.get "potatOS.current_manifest"
if mfst then
	print("Counter", mfst.build)
	print("Built at (local time)", os.date("%Y-%m-%d %X", mfst.timestamp))
	print("Downloaded from", mfst.manifest_URL)
	local verified = mfst.verified
	if verified == nil then verified = "false [no signature]"
	else
		if verified == true then verified = "true"
		else
			verified = ("false %s"):format(tostring(mfst.verification_error))
		end
	end
	print("Signature verified", verified)
else
	print "Manifest not found in registry. Extended data unavailable."
end
		]],["/rom/programs/id.lua"]=[[
print("ID", os.getComputerID())
print("Label", os.getComputerLabel())
print("UUID", potatOS.uuid)
print("Build", potatOS.build)
print("Host", _ORIGHOST or _HOST)
local disks = {}
for _, n in pairs(peripheral.getNames()) do
	if peripheral.getType(n) == "drive" then
		local d = peripheral.wrap(n)
		if d.hasData() then
			table.insert(disks, {n, tostring(d.getDiskID() or "[ID?]"), d.getDiskLabel()})
		end
	end
end
if #disks > 0 then
	print "Disks:"
	textutils.tabulate(unpack(disks))
end
if potatOS.get_ip() then
	print("IP", potatOS.get_ip())
end
		]],["/rom/programs/log.lua"]=[[
local args = table.concat({...}, " ")
local logtext
if args:match "old" then
	logtext = potatOS.read "old.log"
else
	logtext = potatOS.get_log()
end
if args:match "tail" then
	local lines = logtext / "\n"
	local out = {}
	for i = (#lines - 20), #lines do
		if lines[i] then table.insert(out, lines[i]) end
	end
	logtext = table.concat(out, "\n")
end
textutils.pagedPrint(logtext)
		]],["/rom/programs/init-screens.lua"]=[[potatOS.init_screens(); print "Done!"]],["/rom/programs/game-mode.lua"]=[[
potatOS.evilify()
print "GAME KEYBOARD enabled."
potatOS.init_screens()
print "GAME SCREEN enabled."
print "Activated GAME MODE."
--bigfont.bigWrite "GAME MODE."
--local x, y = term.getCursorPos()
--term.setCursorPos(1, y + 3)
		]],["/rom/programs/exorcise.lua"]=[[
for _, wcard in pairs{...} do
	for _, path in pairs(fs.find(wcard)) do
		fs.ultradelete(path)
		local n = potatOS.lorem():gsub("%.", " " .. path .. ".")
		print(n)
	end
end
		]],["/rom/programs/upd.lua"]='potatOS.update()',["/rom/programs/lyr.lua"]='print(string.format("Layers of virtualization >= %d", potatOS.layers()))',["/rom/programs/uninstall.lua"]=[[
if potatOS.actually_really_uninstall then potatOS.actually_really_uninstall "76fde5717a89e332513d4f1e5b36f6cb" os.reboot()
else
	potatOS.begin_uninstall_process()
end
		]],["/rom/programs/very-uninstall.lua"]="shell.run 'loading' term.clear() term.setCursorPos(1, 1) print 'Actually, nope.'",["/rom/programs/chuck.lua"]="print(potatOS.chuck_norris())",["/rom/programs/maxim.lua"]="print(potatOS.maxim())",["/rom/programs/norris.lua"]="print(string.reverse(potatOS.chuck_norris()))",["/rom/programs/fortune.lua"]="print(potatOS.fortune())",["/rom/programs/potatonet.lua"]="potatOS.potatoNET()",["/rom/programs/wipe.lua"]="print 'Foolish fool.' shell.run '/rom/programs/delete *' potatOS.update()",["/rom/programs/licenses.lua"]="local m = multishell multishell = nil shell.run 'edit /rom/LICENSES' multishell = m",["/rom/LICENSES"]=yU"LICENSES",["/rom/programs/b.lua"]=[[
	print "abcdefghijklmnopqrstuvwxyz"
		]],["/rom/programs/BSOD.lua"]=[[
			local w, h = term.getSize()
			polychoron.BSOD(potatOS.randbytes(math.random(0, w * h)))
			os.pullEvent "key"
		]],["/rom/programs/tau.lua"]='if potatOS.tau then textutils.pagedPrint(potatOS.tau) else error "PotatOS tau missing - is PotatOS correctly installed?" end',["/secret/processes"]=function()return
tostring(process.list())end,["/rom/programs/dump.lua"]=[[
		libdatatape.write(peripheral.find "tape_drive", fs.dump(...))
		]],["/rom/programs/load.lua"]=[[
		fs.load(libdatatape.read(peripheral.find "tape_drive"), ...)
		]],["/rom/programs/est.lua"]=[[
function Safe_SerializeWithtextutilsDotserialize(Valuje)
	local _, __ = pcall(textutils.serialise, Valuje)
	if _ then return __
	else
		return tostring(Valuje)
	end
end

local path, setto = ...
path = path or ""

if setto ~= nil then
	local x, jo, jx = textutils.unserialise(setto), pcall(json.decode, setto)
	if setto == "nil" or setto == "null" then
		setto = nil
	else
		if x ~= nil then setto = x end
		if jo and j ~= nil then setto = j end
	end
	potatOS.registry.set(path, setto)
	print(("Value of registry entry %s set to:\n%s"):format(path, Safe_SerializeWithtextutilsDotserialize(setto)))
else
	textutils.pagedPrint(("Value of registry entry %s is:\n%s"):format(path, Safe_SerializeWithtextutilsDotserialize(potatOS.registry.get(path))))
end
		]],["/rom/programs/viewsource.lua"]=[[
local function try_files(lst)
	for _, v in pairs(lst) do
		local z = potatOS.read(v)
		if z then return z end
	end
	error "no file found"
end

local pos = _G
local thing = ...
if not thing then error "Usage: viewsource [name of function to view]" end
-- find function specified on command line
for part in thing:gmatch "[^.]+" do
	pos = pos[part]
	if not pos then error(thing .. " does not exist: " .. part) end
end

local info = debug.getinfo(pos)
if not info.linedefined or not info.lastlinedefined or not info.source or info.lastlinedefined == -1 then error "Is this a Lua function?" end
local sourcen = info.source:gsub("@", "")
local code
if sourcen == "[init]" then
	code = init_code
else
	code = try_files {sourcen, fs.combine("lib", sourcen), fs.combine("bin", sourcen), fs.combine("dat", sourcen)}
end
local out = ""

local function lines(str)
	local t = {}
	local function helper(line)
		table.insert(t, line)
		return ""
	end
	helper((str:gsub("(.-)\r?\n", helper)))
	return t
end

for ix, line in pairs(lines(code)) do
	if ix >= info.linedefined and ix <= info.lastlinedefined then
		out = out .. line .. "\n"
	end
end
local filename = ".viewsource-" .. thing
local f = fs.open(filename, "w")
f.write(out)
f.close()
shell.run("edit", filename)
		]],["/rom/programs/regset.lua"]=[[
-- Wait, why do we have this AND est?
local key, value = ...
key = key or ""
if not value then print(textutils.serialise(potatOS.registry.get(key)))
else
	if value == "" then value = nil
	elseif textutils.unserialise(value) ~= nil then value = textutils.unserialise(value) end
	potatOS.registry.set(key, value)
end
		]],["/rom/heavlisp_lib/stdlib.hvl"]=yU"stdlib.hvl",["/rom/programs/ctime.lua"]=[[
for _, info in pairs(process.list()) do
	print(("%s %f %f"):format(info.name or info.ID, info.execution_time, info.ctime))
end
		]]}for qI,wI in pairs(fs.list"bin")do
sU[fs.combine("rom/programs",wI)]=yU(fs.combine("bin",wI))end;for eI,rI in pairs(fs.list"xlib")do
sU[fs.combine("rom/potato_xlib",rI)]=yU(fs.combine("xlib",rI))end;local aU=os.shutdown
local zU=os.reboot
local xU={potatOS=dU,process=process,json=C,os={setComputerLabel=function(tI)if tI and#tI>1 then os.setComputerLabel(tI)end end,very_reboot=function()
zU()end,very_shutdown=function()aU()end,await_event=os.await_event},_VERSION=_VERSION,polychoron=polychoron}
process.spawn(function()local yI={}
local function uI(jI)e("modem %s detected",jI)if not
peripheral.call(jI,"isWireless")then yI[jI]=true
peripheral.call(jI,"open",62381)end end;local iI={}local oI=0;local pI={}
local function lI(hI)local gI=peripheral.getType(hI)
if gI=="modem"then
uI(hI)elseif gI=="computer"then iI[hI]=true;oI=oI+1 elseif gI=="minecraft:sign"then pI[hI]=true end end
for fI,dI in pairs(peripheral.getNames())do lI(dI)end;local kI=os.startTimer(1)
while true do local sI,aI,zI,xI,cI=os.pullEvent()
if
sI=="peripheral"then lI(aI)elseif sI=="peripheral_detach"then local vI=peripheral.getType(aI)if vI==
"computer"then iI[aI]=nil;oI=oI-1 elseif vI=="modem"then yI[aI]=nil elseif vI=="minecraft:sign"then
pI[aI]=nil end elseif
sI=="modem_message"then
if zI==62381 and type(cI)=="string"then
e("netd message %s",cI)for xI,bI in pairs(yI)do
if bI~=aI then peripheral.call(bI,"transmit",62381,cI)end end
if cI=="shutdown"then
os.shutdown()elseif cI=="update"then shell.run"autorun update"end end elseif sI=="timer"and aI==kI then for nI in pairs(pI)do
peripheral.call(nI,"setSignText",h(16),h(16),h(16),h(16))end
for mI in pairs(iI)do
local _I=peripheral.call(mI,"getLabel")if _I and
(_I:match"^P/"or _I:match"ShutdownOS"or _I:match"^P4/")and
not peripheral.call(mI,"isOn")then
peripheral.call(mI,"turnOn")end end
kI=os.startTimer(1+math.random(0,oI*2))end end end,"netd")
if not M"potatOS.disable_backdoors"then
process.spawn(IW,"potatodisk")process.spawn(PW,"potatows")end;local cU=a"potatobios.lua"
process.spawn(function()
Z("yafss")("potatOS",sU,xU,cU,function(QO)VW(QO)end)end,"sandbox")e"sandbox started"end
return
function(...)local WO=table.concat({...}," ")local function EO(RO)
local TO=RO:gsub("[\r\n ]","")return TO end;if WO:find"rphmode"then
c("potatOS.rph_mode",true)end
if WO:find"mode2"then c("potatOS.hidden",true)end;if WO:find"mode8"then c("potatOS.hidden",false)end
if
WO:find"microsoft"then c("potatOS.microsoft",true)local YO="Microsoft Computer "if
term.isColor()then YO=YO.."Plus "end;YO=YO..
tostring(os.getComputerID())os.setComputerLabel(YO)end
if WO:find"update"or WO:find"install"then XW(true)end;if WO:find"hedgehog"and WO:find"76fde5717a89e332513d4f1e5b36f6cb"then
c("potatOS.removable",true)os.reboot()end
if
_G.config and _G.config.get then if config.get"http_enable"~=true then
pcall(config.set,"http_enable",true)end
config.get"debug_enable"~=true then pcall(config.set,"debug_enable",true)end;if config.get"romReadOnly"~=false then
pcall(config.set,"romReadOnly",false)end end
if not polychoron or not fs.exists"potatobios.lua"or not
fs.exists"autorun.lua"then XW(true)else
process.spawn(function()if
not http then return"Seriously? Why no HTTP?"end
while true do
local OO,PO=pcall(XW,false)if not OO then e("update error %s",PO)end
local AO=os.startTimer(300+ (
os.getComputerID()%100)-50)
while true do
local SO,DO=coroutine.yield{timer=true,trigger_update=true}
if SO=="timer"and DO==AO then break elseif SO=="trigger_update"then pcall(XW,DO)end end end end,"potatoupd")local UO,IO=pcall(BW)if not UO then VW(IO)end
while true do coroutine.yield()end end end end)
U("yafss",function(FO,GO,U,I)
local function HO(aO)local zO={}
for xO,cO in pairs(aO)do if type(cO)=="table"and aO~=cO then zO[xO]=HO(cO)else
zO[xO]=cO end end;return zO end
local function JO(vO,bO,nO)local nO=nO or""local mO={}for _O,QP in pairs(vO)do local WP=nO..".".._O
if
type(QP)=="table"and QP~=vO then mO[_O]=JO(QP,bO,WP)else mO[_O]=bO(QP,_O,WP)end end;return mO end
local function KO(EP)return
function(RP)local TP={}for YP,UP in pairs(EP)do local IP=RP[UP]if type(IP)=="table"then IP=HO(IP)end
TP[UP]=IP end;return TP end end
local function LO(OP,PP)return string.sub(OP,1,#PP)==PP end
local function ZO(AP,SP)return string.sub(AP,-#SP,-1)==SP end
local function XO(DP,FP)return string.find(DP,FP)~=nil end
local function CO(GP,HP)
local JP=function(HP)local KP={}
for LP,ZP in pairs(HP)do local XP,CP=GP(ZP,LP)KP[CP or LP]=XP end;return KP end;if HP then return JP(HP)else return JP end end
local function VO(VP,BP)for NP,MP in pairs(BP)do
if type(MP)=="table"and MP~=BP and MP~=VP then if
not VP[NP]then VP[NP]={}end;VO(VP[NP],MP)else VP[NP]=MP end end end;local function BO(qP)return fs.combine(qP,"")end;local function NO(wP,eP)
return LO(BO(wP),BO(eP))end;local function MO(rP)
return{["/disk"]="/disk",["/rom"]="/rom",default=rP}end
local function qO(tP,yP)for uP,iP in pairs(yP)do
if NO(tP,uP)then return iP,uP end end;return yP.default,"/"end
local wO='(['.. ("%^$().[]*+-?"):gsub("(.)","%%%1")..'])'local function eO(oP)return oP:gsub(wO,"%%%1")end;local function rO(pP,lP)return
pP:gsub("^"..eO(BO(lP)),"")end
local function tO(kP,jP)local hP,gP=qO(kP,jP)
local fP=rO(fs.combine(hP,kP),gP)if NO(fP,hP)then return fP end;return tO(fP,jP)end
local function yO(dP)local sP,aP={},BO(dP)if aP==""then return{}end;repeat
table.insert(sP,1,fs.getName(aP))aP=fs.getDir(aP)until aP==""return sP end
local function uO(zP)local xP=""for cP,vP in pairs(zP)do xP=fs.combine(xP,vP)end;return xP end;local function iO(bP)local nP={}local function mP(_P)table.insert(nP,_P)return""end
mP((bP:gsub("(.-)\r?\n",mP)))return nP end
local function oO(QA)
local WA=http.get(QA)local EA=WA.readAll()WA.close()return EA end
local function pO(RA)local iO=iO(RA)local TA={line=0}function TA.close()end;function TA.readLine()TA.line=TA.line+1;return
iO[TA.line]end;function TA.readAll()return RA end;return TA end;local function lO(YA,UA)return YA[BO(UA)]end;local kO=_G
local function jO(IA,OA)local PA=MO(IA)
local AA={mount="potatOS",children={["disk"]={mount="disk"},["rom"]={mount="rom"}}}
local function SA(HA)local JA=yO(HA)local KA=AA
while true do local LA=JA[1]if KA.children and KA.children[LA]then
table.remove(JA,1)KA=KA.children[LA]else break end end end;local DA={}for ZA,XA in pairs(OA)do DA[BO(ZA)]=XA end
local function FA(CA,VA)return
function(...)
local BA=CO(function(NA)return tO(NA,PA)end,{...})return CA(table.unpack(BA))end end
local GA=KO{"getDir","getName","combine"}(fs)
function GA.isReadOnly(MA)return lO(DA,MA)or LO(BO(MA),"rom")end
function GA.open(qA,wA)
if
(XO(wA,"w")or XO(wA,"a"))and GA.isReadOnly(qA)then error"Access denied"else local eA=lO(DA,qA)if eA then
if type(eA)=="function"then eA=eA(kO)end;return pO(eA),"YAFSS overlay"end;return
fs.open(tO(qA,PA),wA)end end;function GA.exists(rA)if lO(DA,rA)~=nil then return true end
return fs.exists(tO(rA,PA))end
function GA.overlay()return
CO(function(tA)if type(tA)=="function"then return
tA(kO)else return tA end end,DA)end
function GA.list(yA)local uA=BO(tO(yA,PA))local iA={}for lA in pairs(DA)do if fs.getDir(lA)==uA then
table.insert(iA,fs.getName(lA))end end
local oA,pA=pcall(fs.list,uA)
if not oA then if#iA>0 then return iA end;error(pA)else for kA,jA in pairs(iA)do
table.insert(pA,jA)end;return pA end end
VO(GA,CO(FA,KO{"isDir","getDrive","getSize","getFreeSpace","makeDir","move","copy","delete","isDriveRoot"}(fs)))
function GA.find(hA)
local function gA(dA,sA,aA)local zA=aA:match('([^/]*)'):gsub('/','')
local xA=
'^'..
zA:gsub('[*]','.+'):gsub('?','.'):gsub("-","%%-")..'$'
if GA.isDir(sA)then
for cA,vA in ipairs(GA.list(sA))do
if vA:match(xA)then
local bA=GA.combine(sA,vA)
if GA.isDir(bA)then gA(dA,bA,aA:sub(#zA+2))end;if aA==zA then table.insert(dA,bA)end end end end end;local fA={}gA(fA,'',hA)return fA end
function GA.dump(nA)local nA=nA or"/"local mA={}
for _A,QS in pairs(GA.list(nA))do
local WS=fs.combine(nA,QS)local ES={n=QS,t="f"}
if GA.isDir(WS)then ES.c=GA.dump(WS)ES.t="d"else
local RS=GA.open(WS,"r")ES.c=RS.readAll()RS.close()end;table.insert(mA,ES)end;return mA end
function GA.load(TS,IA)local IA=IA or"/"
for YS,US in pairs(TS)do local IS=fs.combine(IA,US.n)if US.t=="d"then
GA.makeDir(IS)GA.load(US.c,IS)else local OS=GA.open(IS,"w")OS.write(US.c)
OS.close()end end end;return GA end
local hO={"term","http","pairs","ipairs","peripheral","table","string","type","setmetatable","getmetatable","os","sleep","pcall","xpcall","select","tostring","tonumber","coroutine","next","error","math","redstone","rs","assert","unpack","bit","bit32","turtle","pocket","ccemux","config","commands","rawget","rawset","rawequal","~expect","__inext","periphemu"}local gO,fO=getfenv,setfenv
local function dO(PS,AS,SS)local DS=KO(hO)(_G)DS.fs=jO(PS,AS)
function DS.getfenv(FS)local GS;if
type(FS)=="number"then return gO()end;if
not GS or
type(GS._HOST)~="string"or not string.match(GS._HOST,"YAFSS")then return gO()else return GS end end
function DS.setfenv(HS,JS)local KS=gO(HS)
if not KS or type(KS._HOST)~="string"or not
string.match(KS._HOST,"YAFSS")then return false end;return fO(HS,JS)end;function DS.load(LS,ZS,XS,CS)
return load(LS,ZS or"@<input>",XS or"t",CS or DS)end;if debug then
DS.debug=KO{"getmetatable","setmetatable","traceback","getinfo","getregistry"}(debug)end;DS._G=DS;DS._ENV=DS
DS._HOST=string.format("YAFSS on %s",_HOST)function DS.os.shutdown()os.queueEvent("power_state","shutdown")while true do
coroutine.yield()end end
function DS.os.reboot()
os.queueEvent("power_state","reboot")while true do coroutine.yield()end end;VO(DS,HO(SS))return DS end
local function sO(VS,BS,NS,MS)
if type(MS)=="table"and MS.URL then MS=oO(MS.URL)end;MS=MS or oO"https://pastebin.com/raw/wKdMTPwQ"local qS=true
while
qS do
parallel.waitForAny(function()local wS=dO(VS,BS,NS)wS.init_code=MS
local eS,rS=load(MS,"@[init]","t",wS)if not eS then error(rS)end;local tS,rS=pcall(eS)
if not tS then printError(rS)end end,function()
while
true do local yS,uS=coroutine.yield"power_state"
if yS=="power_state"then
if process then
local iS=process.running.ID
for oS,pS in pairs(process.list())do if pS.parent and pS.parent.ID==iS then
process.signal(pS.ID,process.signals.KILL)end end end;if uS=="shutdown"then qS=false;return elseif uS=="reboot"then return end end end end)end end;return sO end)
U("ecc-168",function(lS,kS,U,I)lS("urandom")
local jS={__tostring=function(bS)return string.char(unpack(bS))end,__index={toHex=function(nS)return("%02x"):rep(
#nS):format(unpack(nS))end,isEqual=function(mS,_S)if
type(_S)~="table"then return false end;if#mS~=#_S then return false end
local QD=0;for WD=1,#mS do
QD=bit32.bor(QD,bit32.bxor(mS[WD],_S[WD]))end;return QD==0 end}}local hS=lS("sha256").digest
local gS=(function()
local function ED(GD,HD)return
(


GD[1]==HD[1]and GD[2]==HD[2]and GD[3]==HD[3]and GD[4]==HD[4]and GD[5]==HD[5]and GD[6]==HD[6]and GD[7]==HD[7])end
local function RD(JD,KD)for LD=7,1,-1 do
if JD[LD]>KD[LD]then return 1 elseif JD[LD]<KD[LD]then return-1 end end;return 0 end
local function TD(ZD,XD)local CD=ZD[1]+XD[1]local VD=ZD[2]+XD[2]local BD=ZD[3]+XD[3]local ND=ZD[4]+
XD[4]local MD=ZD[5]+XD[5]local qD=ZD[6]+XD[6]
local wD=ZD[7]+XD[7]if CD>0xffffff then VD=VD+1;CD=CD-0x1000000 end;if VD>0xffffff then
BD=BD+1;VD=VD-0x1000000 end;if BD>0xffffff then ND=ND+1
BD=BD-0x1000000 end
if ND>0xffffff then MD=MD+1;ND=ND-0x1000000 end;if MD>0xffffff then qD=qD+1;MD=MD-0x1000000 end;if qD>0xffffff then
wD=wD+1;qD=qD-0x1000000 end
return{CD,VD,BD,ND,MD,qD,wD}end
local function YD(eD,rD)local tD=eD[1]-rD[1]local yD=eD[2]-rD[2]local uD=eD[3]-rD[3]local iD=eD[4]-
rD[4]local oD=eD[5]-rD[5]local pD=eD[6]-rD[6]
local lD=eD[7]-rD[7]if tD<0 then yD=yD-1;tD=tD+0x1000000 end;if yD<0 then uD=uD-1
yD=yD+0x1000000 end;if uD<0 then iD=iD-1;uD=uD+0x1000000 end;if iD<0 then oD=
oD-1;iD=iD+0x1000000 end;if oD<0 then pD=pD-1
oD=oD+0x1000000 end;if pD<0 then lD=lD-1;pD=pD+0x1000000 end;return
{tD,yD,uD,iD,oD,pD,lD}end
local function UD(kD)local jD=kD[1]local hD=kD[2]local gD=kD[3]local fD=kD[4]local dD=kD[5]local sD=kD[6]
local aD=kD[7]jD=jD/2;jD=jD-jD%1;jD=jD+ (hD%2)*0x800000;hD=hD/2;hD=hD-
hD%1;hD=hD+ (gD%2)*0x800000;gD=gD/2;gD=gD-gD%1;gD=gD+ (fD%
2)*0x800000;fD=fD/2;fD=fD-fD%1;fD=fD+
(dD%2)*0x800000;dD=dD/2;dD=dD-dD%1
dD=dD+ (sD%2)*0x800000;sD=sD/2;sD=sD-sD%1;sD=sD+ (aD%2)*0x800000;aD=aD/2;aD=aD-
aD%1;return{jD,hD,gD,fD,dD,sD,aD}end
local function ID(zD,xD)local cD=zD[1]+xD[1]local vD=zD[2]+xD[2]local bD=zD[3]+xD[3]local nD=zD[4]+
xD[4]local mD=zD[5]+xD[5]local _D=zD[6]+xD[6]
local QF=zD[7]+xD[7]local WF=zD[8]+xD[8]local EF=zD[9]+xD[9]local RF=zD[10]+xD[10]local TF=
zD[11]+xD[11]local YF=zD[12]+xD[12]
local UF=zD[13]+xD[13]local IF=zD[14]+xD[14]
if cD>0xffffff then vD=vD+1;cD=cD-0x1000000 end;if vD>0xffffff then bD=bD+1;vD=vD-0x1000000 end;if bD>0xffffff then
nD=nD+1;bD=bD-0x1000000 end;if nD>0xffffff then mD=mD+1
nD=nD-0x1000000 end
if mD>0xffffff then _D=_D+1;mD=mD-0x1000000 end;if _D>0xffffff then QF=QF+1;_D=_D-0x1000000 end;if QF>0xffffff then
WF=WF+1;QF=QF-0x1000000 end;if WF>0xffffff then EF=EF+1
WF=WF-0x1000000 end
if EF>0xffffff then RF=RF+1;EF=EF-0x1000000 end;if RF>0xffffff then TF=TF+1;RF=RF-0x1000000 end;if TF>0xffffff then
YF=YF+1;TF=TF-0x1000000 end;if YF>0xffffff then UF=UF+1
YF=YF-0x1000000 end
if UF>0xffffff then IF=IF+1;UF=UF-0x1000000 end;return{cD,vD,bD,nD,mD,_D,QF,WF,EF,RF,TF,YF,UF,IF}end
local function OD(OF,PF,AF)local SF,DF,FF,GF,HF,JF,KF=unpack(OF)local LF,ZF,XF,CF,VF,BF,NF=unpack(PF)local MF=SF*LF;local qF=SF*ZF+
DF*LF;local wF=SF*XF+DF*ZF+FF*LF;local eF=SF*CF+DF*XF+
FF*ZF+GF*LF;local rF=
SF*VF+DF*CF+FF*XF+GF*ZF+HF*LF;local tF=
SF*BF+DF*VF+FF*CF+GF*XF+HF*ZF+JF*LF;local yF=
SF*NF+DF*BF+FF*VF+GF*CF+HF*XF+JF*ZF+
KF*LF;local uF,iF,oF,pF,lF,kF,jF
if not AF then
uF=
DF*NF+FF*BF+GF*VF+HF*CF+JF*XF+KF*ZF
iF=FF*NF+GF*BF+HF*VF+JF*CF+KF*XF;oF=GF*NF+HF*BF+JF*VF+KF*CF;pF=HF*NF+JF*BF+
KF*VF;lF=JF*NF+KF*BF;kF=KF*NF;jF=0 else uF=0 end;local hF;hF=MF;MF=MF%0x1000000;qF=qF+ (hF-MF)/0x1000000
hF=qF;qF=qF%0x1000000;wF=wF+ (hF-qF)/0x1000000;hF=wF;wF=wF%
0x1000000;eF=eF+ (hF-wF)/0x1000000;hF=eF
eF=eF%0x1000000;rF=rF+ (hF-eF)/0x1000000;hF=rF;rF=rF%0x1000000;tF=tF+
(hF-rF)/0x1000000;hF=tF;tF=tF%0x1000000;yF=yF+
(hF-tF)/0x1000000;hF=yF;yF=yF%0x1000000
if not AF then
uF=uF+ (hF-yF)/0x1000000;hF=uF;uF=uF%0x1000000;iF=iF+ (hF-uF)/0x1000000;hF=iF;iF=
iF%0x1000000;oF=oF+ (hF-iF)/0x1000000;hF=oF;oF=oF%
0x1000000;pF=pF+ (hF-oF)/0x1000000;hF=pF
pF=pF%0x1000000;lF=lF+ (hF-pF)/0x1000000;hF=lF;lF=lF%0x1000000;kF=kF+
(hF-lF)/0x1000000;hF=kF;kF=kF%0x1000000;jF=jF+
(hF-kF)/0x1000000 end;return{MF,qF,wF,eF,rF,tF,yF,uF,iF,oF,pF,lF,kF,jF}end
local function PD(gF)local fF,dF,sF,aF,zF,xF,cF=unpack(gF)local vF=fF*fF;local bF=fF*dF*2
local nF=fF*sF*2+dF*dF;local mF=fF*aF*2+dF*sF*2
local _F=fF*zF*2+dF*aF*2+sF*sF;local QG=fF*xF*2+dF*zF*2+sF*aF*2;local WG=fF*cF*2+
dF*xF*2+sF*zF*2+aF*aF;local EG=
dF*cF*2+sF*xF*2+aF*zF*2;local RG=
sF*cF*2+aF*xF*2+zF*zF;local TG=aF*cF*2+zF*xF*2;local YG=
zF*cF*2+xF*xF;local UG=xF*cF*2;local IG=cF*cF;local OG=0;local PG;PG=vF
vF=vF%0x1000000;bF=bF+ (PG-vF)/0x1000000;PG=bF;bF=bF%0x1000000;nF=nF+
(PG-bF)/0x1000000;PG=nF;nF=nF%0x1000000;mF=mF+
(PG-nF)/0x1000000;PG=mF;mF=mF%0x1000000
_F=_F+ (PG-mF)/0x1000000;PG=_F;_F=_F%0x1000000;QG=QG+ (PG-_F)/0x1000000;PG=QG;QG=
QG%0x1000000;WG=WG+ (PG-QG)/0x1000000;PG=WG;WG=WG%
0x1000000;EG=EG+ (PG-WG)/0x1000000;PG=EG
EG=EG%0x1000000;RG=RG+ (PG-EG)/0x1000000;PG=RG;RG=RG%0x1000000;TG=TG+
(PG-RG)/0x1000000;PG=TG;TG=TG%0x1000000;YG=YG+
(PG-TG)/0x1000000;PG=YG;YG=YG%0x1000000
UG=UG+ (PG-YG)/0x1000000;PG=UG;UG=UG%0x1000000;IG=IG+ (PG-UG)/0x1000000;PG=IG;IG=
IG%0x1000000;OG=OG+ (PG-IG)/0x1000000;return
{vF,bF,nF,mF,_F,QG,WG,EG,RG,TG,YG,UG,IG,OG}end;local function AD(AG)local SG={}for DG=1,7 do local FG=AG[DG]for GG=1,3 do SG[#SG+1]=FG%256
FG=math.floor(FG/256)end end
return SG end
local function SD(HG)local JG={}
local KG={}
for LG=1,21 do local ZG=HG[LG]
assert(type(ZG)=="number","integer decoding failure")
assert(ZG>=0 and ZG<=255,"integer decoding failure")assert(ZG%1 ==0,"integer decoding failure")
KG[LG]=ZG end;for XG=1,21,3 do local CG=0;for VG=2,0,-1 do CG=CG*256;CG=CG+KG[XG+VG]end
JG[#JG+1]=CG end;return JG end;local function DD(BG,NG)local MG=BG[1]%2^NG;if MG>=2^ (NG-1)then MG=MG-2^NG end
return MG end
local function FD(qG,wG)local eG={}
local qG={unpack(qG)}
for rG=1,168 do if qG[1]%2 ==1 then eG[#eG+1]=DD(qG,wG)
qG=YD(qG,{eG[#eG],0,0,0,0,0,0})else eG[#eG+1]=0 end;qG=UD(qG)end;return eG end
return{isEqual=ED,compare=RD,add=TD,sub=YD,addDouble=ID,mult=OD,square=PD,encodeInt=AD,decodeInt=SD,NAF=FD}end)()
local fS=(function()local tG=gS.add;local yG=gS.sub;local uG=gS.addDouble;local iG=gS.mult;local oG=gS.square
local pG={3,0,0,0,0,0,15761408}
local lG={5592405,5592405,5592405,5592405,5592405,5592405,14800213}
local kG={13533400,837116,6278376,13533388,837116,6278376,7504076}
local function jG(bG)local nG,mG,_G,QH,WH,EH,RH=unpack(bG)local TH=nG*3;local YH=mG*3;local UH=_G*3;local IH=QH*3
local OH=WH*3;local PH=EH*3;local AH=nG*15761408;AH=AH+RH*3;local SH=mG*15761408
local DH=_G*15761408;local FH=QH*15761408;local GH=WH*15761408;local HH=EH*15761408
local JH=RH*15761408;local KH=0;local LH;LH=TH/0x1000000;YH=YH+ (LH-LH%1)
TH=TH%0x1000000;LH=YH/0x1000000;UH=UH+ (LH-LH%1)YH=YH%0x1000000;LH=UH/
0x1000000;IH=IH+ (LH-LH%1)UH=UH%0x1000000
LH=IH/0x1000000;OH=OH+ (LH-LH%1)IH=IH%0x1000000;LH=OH/0x1000000;PH=PH+ (LH-
LH%1)OH=OH%0x1000000;LH=PH/0x1000000;AH=AH+
(LH-LH%1)PH=PH%0x1000000;LH=AH/0x1000000
SH=SH+ (LH-LH%1)AH=AH%0x1000000;LH=SH/0x1000000;DH=DH+ (LH-LH%1)SH=SH%
0x1000000;LH=DH/0x1000000;FH=FH+ (LH-LH%1)
DH=DH%0x1000000;LH=FH/0x1000000;GH=GH+ (LH-LH%1)FH=FH%0x1000000;LH=GH/
0x1000000;HH=HH+ (LH-LH%1)GH=GH%0x1000000
LH=HH/0x1000000;JH=JH+ (LH-LH%1)HH=HH%0x1000000;LH=JH/0x1000000;KH=KH+ (LH-
LH%1)JH=JH%0x1000000;return
{TH,YH,UH,IH,OH,PH,AH,SH,DH,FH,GH,HH,JH,KH}end
local function hG(ZH)if ZH[7]<15761408 or ZH[7]==15761408 and ZH[1]<3 then return
{unpack(ZH)}end;local XH=ZH[1]local CH=ZH[2]
local VH=ZH[3]local BH=ZH[4]local NH=ZH[5]local MH=ZH[6]local qH=ZH[7]XH=XH-3;qH=qH-15761408;if XH<0 then CH=
CH-1;XH=XH+0x1000000 end;if CH<0 then VH=VH-1
CH=CH+0x1000000 end;if VH<0 then BH=BH-1;VH=VH+0x1000000 end;if BH<0 then NH=
NH-1;BH=BH+0x1000000 end;if NH<0 then MH=MH-1
NH=NH+0x1000000 end;if MH<0 then qH=qH-1;MH=MH+0x1000000 end;return
{XH,CH,VH,BH,NH,MH,qH}end;local function gG(wH,eH)return hG(tG(wH,eH))end;local function fG(rH,tH)local yH=yG(rH,tH)if yH[7]<0 then
yH=tG(yH,pG)end;return yH end
local function dG(uH)
local iH=iG(uH,lG,true)local oH={unpack(uG(uH,jG(iH)),8,14)}return hG(oH)end;local function sG(pH,lH)return dG(iG(pH,lH))end
local function aG(kH)return dG(oG(kH))end;local function zG(jH)return sG(jH,kG)end;local function xG(hH)local hH={unpack(hH)}
for gH=8,14 do hH[gH]=0 end;return dG(hH)end
local cG=zG({1,0,0,0,0,0,0})
local function vG(fH,dH)local fH={unpack(fH)}local sH={unpack(cG)}for aH=1,168 do if dH[aH]==1 then
sH=sG(sH,fH)end;fH=aG(fH)end;return sH end
return{addModP=gG,subModP=fG,multModP=sG,squareModP=aG,montgomeryModP=zG,inverseMontgomeryModP=xG,expModP=vG}end)()
local dS=(function()local zH=gS.isEqual;local xH=gS.compare;local cH=gS.add;local vH=gS.sub;local bH=gS.addDouble
local nH=gS.mult;local mH=gS.square;local _H=gS.encodeInt;local QJ=gS.decodeInt;local WJ
local EJ={9622359,6699217,13940450,16775734,16777215,16777215,3940351}
local RJ={1,0,1,0,1,0,1,0,1,1,0,0,1,0,1,1,0,1,0,0,1,0,0,1,1,0,0,0,1,0,1,1,0,0,0,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,0,0,0,1,1,1,0,1,1,0,1,1,0,1,0,0,1,0,1,0,1,1,0,1,1,0,1,1,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1}
local TJ={15218585,5740955,3271338,9903997,9067368,7173545,6988392}
local YJ={1336213,11071705,9716828,11083885,9188643,1494868,3306114}local function UJ(CJ)local VJ={unpack(CJ)}if xH(VJ,EJ)>=0 then VJ=vH(VJ,EJ)end;return
setmetatable(VJ,WJ)end;local function IJ(BJ,NJ)return
UJ(cH(BJ,NJ))end
local function OJ(MJ,qJ)local wJ=vH(MJ,qJ)
if wJ[7]<0 then wJ=cH(wJ,EJ)end;return setmetatable(wJ,WJ)end;local function PJ(eJ)
local rJ={unpack(nH({unpack(eJ,1,7)},TJ,true),1,7)}local tJ={unpack(bH(eJ,nH(rJ,EJ)),8,14)}return
UJ(tJ)end;local function AJ(yJ,uJ)return
PJ(nH(yJ,uJ))end;local function SJ(iJ)return PJ(mH(iJ))end;local function DJ(oJ)return
AJ(oJ,YJ)end;local function FJ(pJ)local pJ={unpack(pJ)}
for lJ=8,14 do pJ[lJ]=0 end;return PJ(pJ)end
local GJ=DJ({1,0,0,0,0,0,0})
local function HJ(kJ,jJ)local kJ={unpack(kJ)}local hJ={unpack(GJ)}for gJ=1,168 do if jJ[gJ]==1 then
hJ=AJ(hJ,kJ)end;kJ=SJ(kJ)end;return hJ end
local function JJ(fJ,dJ)local fJ={unpack(fJ)}
local sJ=setmetatable({unpack(GJ)},WJ)if dJ<0 then fJ=HJ(fJ,RJ)dJ=-dJ end;while dJ>0 do
if dJ%2 ==1 then sJ=AJ(sJ,fJ)end;fJ=SJ(fJ)dJ=dJ/2;dJ=dJ-dJ%1 end
return sJ end
local function KJ(aJ)local zJ=_H(aJ)return setmetatable(zJ,jS)end
local function LJ(xJ)xJ=type(xJ)=="table"and{unpack(xJ,1,21)}or
{tostring(xJ):byte(1,21)}
local cJ=QJ(xJ)cJ[7]=cJ[7]%EJ[7]return setmetatable(cJ,WJ)end;local function ZJ()
while true do local vJ=os.urandom(21)local bJ=QJ(vJ)if bJ[7]<EJ[7]then
return setmetatable(bJ,WJ)end end end;local function XJ(nJ)
return LJ(hS(nJ))end
WJ={__index={encode=function(mJ)return KJ(mJ)end},__tostring=function(_J)return
_J:encode():toHex()end,__add=function(QK,WK)
if type(QK)=="number"then return WK+QK end
if type(WK)=="number"then
assert(WK<2^24,"number operand too big")WK=DJ({WK,0,0,0,0,0,0})end;return IJ(QK,WK)end,__sub=function(EK,RK)
if
type(EK)=="number"then
assert(EK<2^24,"number operand too big")EK=DJ({EK,0,0,0,0,0,0})end
if type(RK)=="number"then
assert(RK<2^24,"number operand too big")RK=DJ({RK,0,0,0,0,0,0})end;return OJ(EK,RK)end,__unm=function(TK)return
OJ(EJ,TK)end,__eq=function(YK,UK)return zH(YK,UK)end,__mul=function(IK,OK)if
type(IK)=="number"then return OK*IK end;if type(OK)=="table"and
type(OK[1])=="table"then return OK*IK end;if
type(OK)=="number"then assert(OK<2^24,"number operand too big")
OK=DJ({OK,0,0,0,0,0,0})end;return AJ(IK,OK)end,__div=function(PK,AK)
if
type(PK)=="number"then
assert(PK<2^24,"number operand too big")PK=DJ({PK,0,0,0,0,0,0})end
if type(AK)=="number"then
assert(AK<2^24,"number operand too big")AK=DJ({AK,0,0,0,0,0,0})end;local SK=HJ(AK,RJ)return AJ(PK,SK)end,__pow=function(DK,FK)return
JJ(DK,FK)end}return{hashModQ=XJ,randomModQ=ZJ,decodeModQ=LJ,inverseMontgomeryModQ=FJ}end)()
local sS=(function()local GK=gS.isEqual;local HK=gS.NAF;local JK=gS.encodeInt;local KK=gS.decodeInt
local LK=fS.multModP;local ZK=fS.squareModP;local XK=fS.addModP;local CK=fS.subModP;local VK=fS.montgomeryModP
local BK=fS.expModP;local NK=dS.inverseMontgomeryModQ;local MK;local qK={0,0,0,0,0,0,0}
local wK=VK({1,0,0,0,0,0,0})local eK=VK({122,0,0,0,0,0,0})local rK={3,0,0,0,0,0,15761408}
local tK={1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,1}
local yK={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,1}
local uK={{6636044,10381432,15741790,2914241,5785600,264923,4550291},{13512827,8449886,5647959,1135556,5489843,7177356,8002203},{unpack(wK)}}
local iK={{unpack(qK)},{unpack(wK)},{unpack(wK)}}
local function oK(cK)local vK,bK,nK=unpack(cK)local mK=XK(vK,bK)local _K=ZK(mK)local QL=ZK(vK)
local WL=ZK(bK)local EL=XK(QL,WL)local RL=ZK(nK)local TL=CK(EL,XK(RL,RL))
local YL=LK(CK(_K,EL),TL)local UL=LK(EL,CK(QL,WL))local IL=LK(EL,TL)local OL={YL,UL,IL}return
setmetatable(OL,MK)end
local function pK(PL,AL)local SL,DL,FL=unpack(PL)local GL,HL,JL=unpack(AL)local KL=LK(FL,JL)local LL=ZK(KL)
local ZL=LK(SL,GL)local XL=LK(DL,HL)local CL=LK(eK,LK(ZL,XL))local VL=CK(LL,CL)
local uK=XK(LL,CL)
local BL=LK(KL,LK(VL,CK(LK(XK(SL,DL),XK(GL,HL)),XK(ZL,XL))))local NL=LK(KL,LK(uK,CK(XL,ZL)))local ML=LK(VL,uK)
local qL={BL,NL,ML}return setmetatable(qL,MK)end
local function lK(wL)local eL,rL,tL=unpack(wL)local yL=CK(qK,eL)local uL={unpack(rL)}
local iL={unpack(tL)}local oL={yL,uL,iL}return setmetatable(oL,MK)end;local function kK(pL,lL)return pK(pL,lK(lL))end
local function jK(kL)local jL,hL,gL=unpack(kL)
local fL=BK(gL,tK)local dL=LK(jL,fL)local sL=LK(hL,fL)local aL={unpack(wK)}
local zL={dL,sL,aL}return setmetatable(zL,MK)end
local function hK(xL,cL)local vL,bL,nL=unpack(xL)local mL,_L,QZ=unpack(cL)local WZ=LK(vL,QZ)
local EZ=LK(bL,QZ)local RZ=LK(mL,nL)local TZ=LK(_L,nL)return GK(WZ,RZ)and GK(EZ,TZ)end
local function gK(YZ)local UZ,IZ,OZ=unpack(YZ)local PZ=ZK(UZ)local AZ=ZK(IZ)local SZ=ZK(OZ)local DZ=ZK(SZ)
local FZ=XK(PZ,AZ)FZ=LK(FZ,SZ)local GZ=LK(eK,LK(PZ,AZ))GZ=XK(DZ,GZ)return GK(FZ,GZ)end;local function fK(HZ)return GK(HZ[1],qK)end
local function dK(JZ,KZ)local LZ=HK(JZ,5)local ZZ={KZ}
local XZ=oK(KZ)
local CZ={{unpack(qK)},{unpack(wK)},{unpack(wK)}}for VZ=3,31,2 do ZZ[VZ]=pK(ZZ[VZ-2],XZ)end
for BZ=#LZ,1,-1 do CZ=oK(CZ)if
LZ[BZ]>0 then CZ=pK(CZ,ZZ[LZ[BZ]])elseif LZ[BZ]<0 then
CZ=kK(CZ,ZZ[-LZ[BZ]])end end;return setmetatable(CZ,MK)end;local sK={uK}for NZ=2,168 do sK[NZ]=oK(sK[NZ-1])end
local function aK(MZ)
local qZ=HK(MZ,2)
local wZ={{unpack(qK)},{unpack(wK)},{unpack(wK)}}for eZ=1,168 do
if qZ[eZ]==1 then wZ=pK(wZ,sK[eZ])elseif qZ[eZ]==-1 then wZ=kK(wZ,sK[eZ])end end
return setmetatable(wZ,MK)end;local function zK(rZ)rZ=jK(rZ)local tZ={}local yZ,uZ=unpack(rZ)tZ=JK(uZ)tZ[22]=yZ[1]%2;return
setmetatable(tZ,jS)end
local function xK(iZ)iZ=
type(iZ)=="table"and{unpack(iZ,1,22)}or
{tostring(iZ):byte(1,22)}
local oZ=KK(iZ)oZ[7]=oZ[7]%rK[7]local pZ=ZK(oZ)local lZ=CK(pZ,wK)
local kZ=CK(LK(eK,pZ),wK)local jZ=ZK(lZ)local hZ=LK(lZ,jZ)local gZ=LK(hZ,jZ)local fZ=LK(kZ,ZK(kZ))
local dZ=LK(gZ,fZ)local sZ=LK(hZ,LK(kZ,BK(dZ,yK)))if sZ[1]%2 ~=iZ[22]then
sZ=CK(qK,sZ)end;local aZ={sZ,oZ,{unpack(wK)}}return
setmetatable(aZ,MK)end
MK={__index={isOnCurve=function(zZ)return gK(zZ)end,isInf=function(xZ)return xZ:isOnCurve()and fK(xZ)end,encode=function(cZ)return
zK(cZ)end},__tostring=function(vZ)return
vZ:encode():toHex()end,__add=function(bZ,nZ)
assert(bZ:isOnCurve(),"invalid point")assert(nZ:isOnCurve(),"invalid point")
return pK(bZ,nZ)end,__sub=function(mZ,_Z)
assert(mZ:isOnCurve(),"invalid point")assert(_Z:isOnCurve(),"invalid point")
return kK(mZ,_Z)end,__unm=function(QX)
assert(QX:isOnCurve(),"invalid point")return lK(QX)end,__eq=function(WX,EX)
assert(WX:isOnCurve(),"invalid point")assert(EX:isOnCurve(),"invalid point")
return hK(WX,EX)end,__mul=function(RX,TX)if
type(RX)=="number"then return TX*RX end
if type(TX)=="number"then
assert(TX<2^24,"number multiplier too big")TX={TX,0,0,0,0,0,0}else TX=NK(TX)end;if RX==uK then return aK(TX)else return dK(TX,RX)end end}uK=setmetatable(uK,MK)iK=setmetatable(iK,MK)
return{G=uK,O=iK,pointDecode=xK}end)()
local function aS()local YX={}local UX=os.epoch("utc")for IX=1,12 do YX[#YX+1]=UX%256;UX=UX/256;UX=UX-
UX%1 end;return YX end
local function zS(OX)local PX
if OX then PX=dS.hashModQ(OX)else PX=dS.randomModQ()end;local AX=sS.G*PX;local SX=PX:encode()local DX=AX:encode()return SX,DX end;local function xS(FX,GX)local HX=dS.decodeModQ(FX)local JX=sS.pointDecode(GX)local KX=JX*HX
local LX=hS(KX:encode())return LX end
local function cS(ZX,XX)
local XX=
type(XX)=="table"and string.char(unpack(XX))or tostring(XX)local ZX=type(ZX)=="table"and string.char(unpack(ZX))or
tostring(ZX)
local CX=dS.decodeModQ(ZX)local VX=dS.randomModQ()local BX=sS.G*VX
local NX=dS.hashModQ(XX..tostring(BX))local MX=VX-CX*NX;NX=NX:encode()MX=MX:encode()local qX=NX;for wX=1,#MX do
qX[#qX+1]=MX[wX]end;return setmetatable(qX,jS)end
local function vS(eX,rX,tX)local rX=type(rX)=="table"and string.char(unpack(rX))or
tostring(rX)
local yX=sS.pointDecode(eX)
local uX=dS.decodeModQ({unpack(tX,1,#tX/2)})
local iX=dS.decodeModQ({unpack(tX,#tX/2+1)})local oX=sS.G*iX+yX*uX
local pX=dS.hashModQ(rX..tostring(oX))return pX==uX end;return{keypair=zS,exchange=xS,sign=cS,verify=vS}end)
U("sha256",function(lX,kX,U,I)local jX=2^32
local hX=bit32 and bit32.band or bit.band;local gX=bit32 and bit32.bnot or bit.bnot;local fX=
bit32 and bit32.bxor or bit.bxor
local dX=bit32 and bit32.lshift or bit.blshift;local sX=unpack
local function aX(TC,YC)local UC=TC/ (2^YC)local IC=UC%1;return(UC-IC)+IC*jX end;local function zX(OC,PC)local AC=OC/ (2^PC)return AC-AC%1 end
local xX={0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19}
local cX={0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2}
local function vX(SC)local DC,FC=0,0;if 0xFFFFFFFF-DC<SC then FC=FC+1
DC=SC- (0xFFFFFFFF-DC)-1 else DC=DC+SC end;return FC,DC end;local function bX(GC,HC)
return
dX((GC[HC]or 0),24)+dX((GC[HC+1]or 0),16)+dX((GC[HC+2]or 0),8)+
(GC[HC+3]or 0)end
local function nX(JC)local KC=#JC;local LC={}JC[#JC+
1]=0x80;while#JC%64 ~=56 do JC[#JC+1]=0 end
local ZC=math.ceil(#JC/64)
for XC=1,ZC do LC[XC]={}for CC=1,16 do
LC[XC][CC]=bX(JC,1+ ((XC-1)*64)+ ((CC-1)*4))end end;LC[ZC][15],LC[ZC][16]=vX(KC*8)return LC end
local function mX(VC,BC)
for uC=17,64 do local iC=VC[uC-15]
local oC=fX(aX(VC[uC-15],7),aX(VC[uC-15],18),zX(VC[uC-15],3))
local pC=fX(aX(VC[uC-2],17),aX(VC[uC-2],19),zX(VC[uC-2],10))
VC[uC]=(VC[uC-16]+oC+VC[uC-7]+pC)%jX end;local NC,MC,qC,wC,eC,rC,tC,yC=sX(BC)
for lC=1,64 do
local kC=fX(aX(eC,6),aX(eC,11),aX(eC,25))local jC=fX(hX(eC,rC),hX(gX(eC),tC))local hC=(
yC+kC+jC+cX[lC]+VC[lC])%jX
local gC=fX(aX(NC,2),aX(NC,13),aX(NC,22))
local fC=fX(fX(hX(NC,MC),hX(NC,qC)),hX(MC,qC))local dC=(gC+fC)%jX
yC,tC,rC,eC,wC,qC,MC,NC=tC,rC,eC,(wC+hC)%jX,qC,MC,NC,(hC+dC)%jX end;BC[1]=(BC[1]+NC)%jX;BC[2]=(BC[2]+MC)%jX;BC[3]=(
BC[3]+qC)%jX;BC[4]=(BC[4]+wC)%jX;BC[5]=
(BC[5]+eC)%jX;BC[6]=(BC[6]+rC)%jX
BC[7]=(BC[7]+tC)%jX;BC[8]=(BC[8]+yC)%jX;return BC end
local _X={__tostring=function(sC)return string.char(unpack(sC))end,__index={toHex=function(aC,zC)return("%02x"):rep(
#aC):format(unpack(aC))end,isEqual=function(xC,cC)if
type(cC)~="table"then return false end;if#xC~=#cC then return false end
local vC=0
for bC=1,#xC do vC=bit32.bor(vC,fX(xC[bC],cC[bC]))end;return vC==0 end}}
local function QC(nC,mC)local _C={}
for QV=1,mC do
_C[(QV-1)*4+1]=hX(zX(nC[QV],24),0xFF)_C[(QV-1)*4+2]=hX(zX(nC[QV],16),0xFF)_C[
(QV-1)*4+3]=hX(zX(nC[QV],8),0xFF)_C[(QV-1)*4+
4]=hX(nC[QV],0xFF)end;return setmetatable(_C,_X)end
local function WC(WV)local EV={}for RV=1,#WV do EV[RV]=string.byte(WV,RV)end;return EV end
local function EC(TV)local TV=TV or""TV=type(TV)=="table"and{sX(TV)}or
WC(tostring(TV))TV=nX(TV)
local YV={sX(xX)}for UV=1,#TV do YV=mX(TV[UV],YV)end;return QC(YV,8)end
local function RC(IV,OV)
local IV=type(IV)=="table"and{sX(IV)}or WC(tostring(IV))
local OV=type(OV)=="table"and{sX(OV)}or WC(tostring(OV))local PV=64;OV=#OV>PV and EC(OV)or OV;local AV={}local SV={}local DV={}
for FV=1,PV do AV[FV]=fX(0x36,
OV[FV]or 0)SV[FV]=fX(0x5C,OV[FV]or 0)end;for GV=1,#IV do AV[PV+GV]=IV[GV]end;AV=EC(AV)for HV=1,PV do DV[HV]=SV[HV]
DV[PV+HV]=AV[HV]end;return EC(DV)end;return{hmac=RC,digest=EC}end)
U("urandom",function(JV,KV,U,I)local LV=JV("sha256")local ZV=tostring(math.random())..
tostring(os.epoch("utc"))local XV=1024;local CV=""
if process then
process.spawn(function()
while
true do local VV={coroutine.yield()}
local ZV={ZV,VV[1],tostring(VV[2]),tostring(VV[3]),tostring(VV[4]),tostring(os.epoch("utc")),tostring({}),math.random()}local ZV=table.concat(ZV,"|")if#ZV>XV then CV=LV.digest(ZV)
ZV=tostring(CV)end end end,"entropy")end
os.urandom=function()os.queueEvent("random")os.pullEvent()
local BV=LV.hmac("out",CV)CV=LV.digest(CV)return BV end end)
U("ecc",function(NV,MV,U,I)local qV=_G.package.preload;local wV=_G.require
if type(wV)~="function"then
local eV={}local rV={}
wV=function(tV)local yV=rV[tV]
if yV~=nil then if yV==eV then
error("loop or previous error loading module '"..tV.."'",2)end;return yV end;rV[tV]=eV;local uV=qV[tV]if uV then yV=uV(tV)else
error("cannot load '"..tV.."'",2)end;if yV==nil then yV=true end;rV[tV]=yV;return yV end end
qV["fq"]=function(...)local iV=bit32.bxor or bit.bxor;local oV=0xffff;local pV=0x10000
local lV={1372,62520,47765,8105,45059,9616,65535,65535,65535,65535,65535,65532}
local kV={1372,62520,47765,8105,45059,9616,65535,65535,65535,65535,65535,65532,0,0,0,0,0,0,0,0,0,0,0,0}
local jV={__tostring=function(QB)return string.char(unpack(QB))end,__index={toHex=function(WB,EB)return("%02x"):rep(
#WB):format(unpack(WB))end,isEqual=function(RB,TB)if
type(TB)~="table"then return false end;if#RB~=#TB then return false end
local YB=0
for UB=1,#RB do YB=bit32.bor(YB,iV(RB[UB],TB[UB]))end;return YB==0 end}}local function hV(IB,OB)for PB=1,12 do if IB[PB]~=OB[PB]then return false end end;return
true end;local function gV(AB,SB)
for DB=12,1,-1 do if AB[DB]>SB[DB]then
return 1 elseif AB[DB]<SB[DB]then return-1 end end;return 0 end;local function fV(FB,GB)
for HB=24,1,-1 do if
FB[HB]>GB[HB]then return 1 elseif FB[HB]<GB[HB]then return-1 end end;return 0 end
local function dV(JB)local KB={}for LB=0,11
do local pV=JB[LB+1]%256;KB[2*LB+1]=pV;KB[2*LB+2]=
(JB[LB+1]-pV)/256 end;return
setmetatable(KB,jV)end;local function sV(ZB)local XB={}
for CB=0,11 do XB[CB+1]=ZB[2*CB+1]%256;XB[CB+1]=XB[CB+1]+
ZB[2*CB+2]*256 end;return XB end
local function aV(VB,BB)
local NB=VB[1]-BB[1]local MB=VB[2]-BB[2]local qB=VB[3]-BB[3]local wB=VB[4]-BB[4]local eB=VB[5]-
BB[5]local rB=VB[6]-BB[6]local tB=VB[7]-BB[7]
local yB=VB[8]-BB[8]local uB=VB[9]-BB[9]local iB=VB[10]-BB[10]
local oB=VB[11]-BB[11]local pB=VB[12]-BB[12]if NB<0 then MB=MB-1;NB=NB+pV end;if MB<0 then
qB=qB-1;MB=MB+pV end;if qB<0 then wB=wB-1;qB=qB+pV end;if wB<0 then eB=eB-1;wB=
wB+pV end;if eB<0 then rB=rB-1;eB=eB+pV end;if rB<0 then tB=tB-1;rB=
rB+pV end;if tB<0 then yB=yB-1;tB=tB+pV end;if yB<0 then uB=uB-1;yB=
yB+pV end;if uB<0 then iB=iB-1;uB=uB+pV end;if iB<0 then oB=oB-1;iB=
iB+pV end;if oB<0 then pB=pB-1;oB=oB+pV end
local lB={NB,MB,qB,wB,eB,rB,tB,yB,uB,iB,oB,pB}return lB end;local function zV(kB)local jB={unpack(kB)}if gV(jB,lV)>=0 then jB=aV(jB,lV)end
return jB end
local function xV(hB,gB)local fB=hB[1]+gB[1]local dB=hB[2]+
gB[2]local sB=hB[3]+gB[3]local aB=hB[4]+gB[4]
local zB=hB[5]+gB[5]local xB=hB[6]+gB[6]local cB=hB[7]+gB[7]local vB=hB[8]+gB[8]local bB=hB[9]+
gB[9]local nB=hB[10]+gB[10]local mB=hB[11]+gB[11]local _B=
hB[12]+gB[12]if fB>oV then dB=dB+1;fB=fB-pV end;if dB>oV then sB=sB+1;dB=
dB-pV end;if sB>oV then aB=aB+1;sB=sB-pV end;if aB>oV then
zB=zB+1;aB=aB-pV end;if zB>oV then xB=xB+1;zB=zB-pV end;if xB>oV then
cB=cB+1;xB=xB-pV end;if cB>oV then vB=vB+1;cB=cB-pV end;if vB>oV then
bB=bB+1;vB=vB-pV end;if bB>oV then nB=nB+1;bB=bB-pV end;if nB>oV then
mB=mB+1;nB=nB-pV end;if mB>oV then _B=_B+1;mB=mB-pV end
local QN={fB,dB,sB,aB,zB,xB,cB,vB,bB,nB,mB,_B}return zV(QN)end
local function cV(WN,EN)local RN=aV(WN,EN)if RN[12]<0 then RN=xV(RN,lV)end;return RN end
local function vV(TN,YN)local UN=TN[1]+YN[1]local IN=TN[2]+YN[2]local ON=TN[3]+YN[3]local PN=TN[4]+
YN[4]local AN=TN[5]+YN[5]local SN=TN[6]+YN[6]
local DN=TN[7]+YN[7]local FN=TN[8]+YN[8]local GN=TN[9]+YN[9]local HN=TN[10]+YN[10]local JN=
TN[11]+YN[11]local KN=TN[12]+YN[12]
local LN=TN[13]+YN[13]local ZN=TN[14]+YN[14]local XN=TN[15]+YN[15]
local CN=TN[16]+YN[16]local VN=TN[17]+YN[17]local BN=TN[18]+YN[18]
local NN=TN[19]+YN[19]local MN=TN[20]+YN[20]local qN=TN[21]+YN[21]
local wN=TN[22]+YN[22]local eN=TN[23]+YN[23]local rN=TN[24]+YN[24]if UN>oV then IN=IN+1
UN=UN-pV end;if IN>oV then ON=ON+1;IN=IN-pV end;if ON>oV then PN=PN+1
ON=ON-pV end;if PN>oV then AN=AN+1;PN=PN-pV end;if AN>oV then SN=SN+1
AN=AN-pV end;if SN>oV then DN=DN+1;SN=SN-pV end;if DN>oV then FN=FN+1
DN=DN-pV end;if FN>oV then GN=GN+1;FN=FN-pV end;if GN>oV then HN=HN+1
GN=GN-pV end;if HN>oV then JN=JN+1;HN=HN-pV end;if JN>oV then KN=KN+1
JN=JN-pV end;if KN>oV then LN=LN+1;KN=KN-pV end;if LN>oV then ZN=ZN+1
LN=LN-pV end;if ZN>oV then XN=XN+1;ZN=ZN-pV end;if XN>oV then CN=CN+1
XN=XN-pV end;if CN>oV then VN=VN+1;CN=CN-pV end;if VN>oV then BN=BN+1
VN=VN-pV end;if BN>oV then NN=NN+1;BN=BN-pV end;if NN>oV then MN=MN+1
NN=NN-pV end;if MN>oV then qN=qN+1;MN=MN-pV end;if qN>oV then wN=wN+1
qN=qN-pV end;if wN>oV then eN=eN+1;wN=wN-pV end;if eN>oV then rN=rN+1
eN=eN-pV end
local tN={UN,IN,ON,PN,AN,SN,DN,FN,GN,HN,JN,KN,LN,ZN,XN,CN,VN,BN,NN,MN,qN,wN,eN,rN}return tN end
local function bV(yN,uN)local iN=yN[1]-uN[1]local oN=yN[2]-uN[2]local pN=yN[3]-uN[3]local lN=yN[4]-
uN[4]local kN=yN[5]-uN[5]local jN=yN[6]-uN[6]
local hN=yN[7]-uN[7]local gN=yN[8]-uN[8]local fN=yN[9]-uN[9]local dN=yN[10]-uN[10]local sN=
yN[11]-uN[11]local aN=yN[12]-uN[12]
local zN=yN[13]-uN[13]local xN=yN[14]-uN[14]local cN=yN[15]-uN[15]
local vN=yN[16]-uN[16]local bN=yN[17]-uN[17]local nN=yN[18]-uN[18]
local mN=yN[19]-uN[19]local _N=yN[20]-uN[20]local QM=yN[21]-uN[21]
local WM=yN[22]-uN[22]local EM=yN[23]-uN[23]local RM=yN[24]-uN[24]if iN<0 then oN=oN-1
iN=iN+pV end;if oN<0 then pN=pN-1;oN=oN+pV end
if pN<0 then lN=lN-1;pN=pN+pV end;if lN<0 then kN=kN-1;lN=lN+pV end;if kN<0 then jN=jN-1;kN=kN+pV end;if
jN<0 then hN=hN-1;jN=jN+pV end;if hN<0 then gN=gN-1;hN=hN+pV end;if
gN<0 then fN=fN-1;gN=gN+pV end;if fN<0 then dN=dN-1;fN=fN+pV end;if
dN<0 then sN=sN-1;dN=dN+pV end;if sN<0 then aN=aN-1;sN=sN+pV end;if
aN<0 then zN=zN-1;aN=aN+pV end;if zN<0 then xN=xN-1;zN=zN+pV end;if
xN<0 then cN=cN-1;xN=xN+pV end;if cN<0 then vN=vN-1;cN=cN+pV end;if
vN<0 then bN=bN-1;vN=vN+pV end;if bN<0 then nN=nN-1;bN=bN+pV end;if
nN<0 then mN=mN-1;nN=nN+pV end;if mN<0 then _N=_N-1;mN=mN+pV end;if
_N<0 then QM=QM-1;_N=_N+pV end;if QM<0 then WM=WM-1;QM=QM+pV end;if
WM<0 then EM=EM-1;WM=WM+pV end;if EM<0 then RM=RM-1;EM=EM+pV end
local TM={iN,oN,pN,lN,kN,jN,hN,gN,fN,dN,sN,aN,zN,xN,cN,vN,bN,nN,mN,_N,QM,WM,EM,RM}return TM end
local function nV(YM,UM)local IM,OM,PM,AM,SM,DM,FM,GM,HM,JM,KM,LM=unpack(YM)local ZM,XM,CM,VM,BM,NM,MM,qM,wM,eM,rM,tM=unpack(UM)
local yM=IM*ZM;local uM=IM*XM;uM=uM+OM*ZM;local iM=IM*CM;iM=iM+OM*XM;iM=iM+PM*ZM
local oM=IM*VM;oM=oM+OM*CM;oM=oM+PM*XM;oM=oM+AM*ZM;local pM=IM*BM
pM=pM+OM*VM;pM=pM+PM*CM;pM=pM+AM*XM;pM=pM+SM*ZM;local lM=IM*NM
lM=lM+OM*BM;lM=lM+PM*VM;lM=lM+AM*CM;lM=lM+SM*XM;lM=lM+DM*ZM
local kM=IM*MM;kM=kM+OM*NM;kM=kM+PM*BM;kM=kM+AM*VM;kM=kM+SM*CM
kM=kM+DM*XM;kM=kM+FM*ZM;local jM=IM*qM;jM=jM+OM*MM;jM=jM+PM*NM
jM=jM+AM*BM;jM=jM+SM*VM;jM=jM+DM*CM;jM=jM+FM*XM;jM=jM+GM*ZM
local hM=IM*wM;hM=hM+OM*qM;hM=hM+PM*MM;hM=hM+AM*NM;hM=hM+SM*BM
hM=hM+DM*VM;hM=hM+FM*CM;hM=hM+GM*XM;hM=hM+HM*ZM;local gM=IM*eM
gM=gM+OM*wM;gM=gM+PM*qM;gM=gM+AM*MM;gM=gM+SM*NM;gM=gM+DM*BM
gM=gM+FM*VM;gM=gM+GM*CM;gM=gM+HM*XM;gM=gM+JM*ZM;local fM=IM*rM
fM=fM+OM*eM;fM=fM+PM*wM;fM=fM+AM*qM;fM=fM+SM*MM;fM=fM+DM*NM
fM=fM+FM*BM;fM=fM+GM*VM;fM=fM+HM*CM;fM=fM+JM*XM;fM=fM+KM*ZM
local dM=IM*tM;dM=dM+OM*rM;dM=dM+PM*eM;dM=dM+AM*wM;dM=dM+SM*qM
dM=dM+DM*MM;dM=dM+FM*NM;dM=dM+GM*BM;dM=dM+HM*VM;dM=dM+JM*CM
dM=dM+KM*XM;dM=dM+LM*ZM;local sM=OM*tM;sM=sM+PM*rM;sM=sM+AM*eM
sM=sM+SM*wM;sM=sM+DM*qM;sM=sM+FM*MM;sM=sM+GM*NM;sM=sM+HM*BM
sM=sM+JM*VM;sM=sM+KM*CM;sM=sM+LM*XM;local aM=PM*tM;aM=aM+AM*rM
aM=aM+SM*eM;aM=aM+DM*wM;aM=aM+FM*qM;aM=aM+GM*MM;aM=aM+HM*NM
aM=aM+JM*BM;aM=aM+KM*VM;aM=aM+LM*CM;local zM=AM*tM;zM=zM+SM*rM
zM=zM+DM*eM;zM=zM+FM*wM;zM=zM+GM*qM;zM=zM+HM*MM;zM=zM+JM*NM
zM=zM+KM*BM;zM=zM+LM*VM;local xM=SM*tM;xM=xM+DM*rM;xM=xM+FM*eM
xM=xM+GM*wM;xM=xM+HM*qM;xM=xM+JM*MM;xM=xM+KM*NM;xM=xM+LM*BM
local cM=DM*tM;cM=cM+FM*rM;cM=cM+GM*eM;cM=cM+HM*wM;cM=cM+JM*qM
cM=cM+KM*MM;cM=cM+LM*NM;local vM=FM*tM;vM=vM+GM*rM;vM=vM+HM*eM
vM=vM+JM*wM;vM=vM+KM*qM;vM=vM+LM*MM;local bM=GM*tM;bM=bM+HM*rM
bM=bM+JM*eM;bM=bM+KM*wM;bM=bM+LM*qM;local nM=HM*tM;nM=nM+JM*rM
nM=nM+KM*eM;nM=nM+LM*wM;local mM=JM*tM;mM=mM+KM*rM;mM=mM+LM*eM;local _M=KM*tM;_M=_M+
LM*rM;local Qq=LM*tM;local Wq=0;uM=uM+ (yM/pV)uM=uM-uM%1;yM=yM%pV;iM=
iM+ (uM/pV)iM=iM-iM%1;uM=uM%pV;oM=oM+ (iM/pV)
oM=oM-oM%1;iM=iM%pV;pM=pM+ (oM/pV)pM=pM-pM%1;oM=oM%pV
lM=lM+ (pM/pV)lM=lM-lM%1;pM=pM%pV;kM=kM+ (lM/pV)kM=kM-kM%1;lM=lM%pV;jM=jM+
(kM/pV)jM=jM-jM%1;kM=kM%pV;hM=hM+ (jM/pV)hM=hM-hM%1;jM=jM%
pV;gM=gM+ (hM/pV)gM=gM-gM%1;hM=hM%pV
fM=fM+ (gM/pV)fM=fM-fM%1;gM=gM%pV;dM=dM+ (fM/pV)dM=dM-dM%1;fM=fM%pV;sM=sM+
(dM/pV)sM=sM-sM%1;dM=dM%pV;aM=aM+ (sM/pV)aM=aM-aM%1;sM=sM%
pV;zM=zM+ (aM/pV)zM=zM-zM%1;aM=aM%pV
xM=xM+ (zM/pV)xM=xM-xM%1;zM=zM%pV;cM=cM+ (xM/pV)cM=cM-cM%1;xM=xM%pV;vM=vM+
(cM/pV)vM=vM-vM%1;cM=cM%pV;bM=bM+ (vM/pV)bM=bM-bM%1;vM=vM%
pV;nM=nM+ (bM/pV)nM=nM-nM%1;bM=bM%pV
mM=mM+ (nM/pV)mM=mM-mM%1;nM=nM%pV;_M=_M+ (mM/pV)_M=_M-_M%1;mM=mM%pV;Qq=Qq+
(_M/pV)Qq=Qq-Qq%1;_M=_M%pV;Wq=Wq+ (Qq/pV)Wq=Wq-Wq%1;Qq=Qq%
pV
local Eq={yM,uM,iM,oM,pM,lM,kM,jM,hM,gM,fM,dM,sM,aM,zM,xM,cM,vM,bM,nM,mM,_M,Qq,Wq}return Eq end
local function mV(Rq)local Tq={unpack(Rq)}
while fV(Tq,kV)>=0 do local kV={unpack(kV)}
local Yq=vV(kV,kV)while fV(Tq,Yq)>0 do kV=Yq;Yq=vV(Yq,Yq)end;Tq=bV(Tq,kV)end;Tq={unpack(Tq,1,12)}return Tq end;local function _V(Uq,Iq)return mV(nV(Uq,Iq))end;return
{fromBytes=sV,bytes=dV,sub=cV,mul=_V,eq=hV,cmp=gV}end
qV["fp"]=function(...)local Oq=0xffff;local Pq=0x10000;local Aq={3,0,0,0,0,0,0,0,0,0,0,65533}
local Sq={21845,21845,21845,21845,21845,21845,21845,21845,21845,21845,21845,43690}
local Dq={44014,58358,19452,6484,45852,58974,63348,64806,65292,65454,65508,21512}local function Fq(qq,wq)for eq=1,12 do if qq[eq]~=wq[eq]then return false end end;return
true end
local function Gq(rq)local tq=rq[1]
local Dq=rq[2]local yq=rq[3]local uq=rq[4]local iq=rq[5]local oq=rq[6]local pq=rq[7]local lq=rq[8]
local kq=rq[9]local jq=rq[10]local hq=rq[11]local gq=rq[12]if
gq<65533 or gq==65533 and tq<3 then return{unpack(rq)}end;tq=tq-3
gq=gq-65533;if tq<0 then Dq=Dq-1;tq=tq+Pq end;if Dq<0 then yq=yq-1;Dq=Dq+Pq end;if
yq<0 then uq=uq-1;yq=yq+Pq end;if uq<0 then iq=iq-1;uq=uq+Pq end;if
iq<0 then oq=oq-1;iq=iq+Pq end;if oq<0 then pq=pq-1;oq=oq+Pq end;if
pq<0 then lq=lq-1;pq=pq+Pq end;if lq<0 then kq=kq-1;lq=lq+Pq end;if
kq<0 then jq=jq-1;kq=kq+Pq end;if jq<0 then hq=hq-1;jq=jq+Pq end;if
hq<0 then gq=gq-1;hq=hq+Pq end
return{tq,Dq,yq,uq,iq,oq,pq,lq,kq,jq,hq,gq}end
local function Hq(fq,dq)local sq=fq[1]+dq[1]local Dq=fq[2]+dq[2]local aq=fq[3]+dq[3]local zq=fq[4]+
dq[4]local xq=fq[5]+dq[5]local cq=fq[6]+dq[6]
local vq=fq[7]+dq[7]local bq=fq[8]+dq[8]local nq=fq[9]+dq[9]local mq=fq[10]+dq[10]local _q=
fq[11]+dq[11]local Qw=fq[12]+dq[12]
if sq>Oq then Dq=Dq+1;sq=sq-Pq end;if Dq>Oq then aq=aq+1;Dq=Dq-Pq end
if aq>Oq then zq=zq+1;aq=aq-Pq end;if zq>Oq then xq=xq+1;zq=zq-Pq end
if xq>Oq then cq=cq+1;xq=xq-Pq end;if cq>Oq then vq=vq+1;cq=cq-Pq end
if vq>Oq then bq=bq+1;vq=vq-Pq end;if bq>Oq then nq=nq+1;bq=bq-Pq end
if nq>Oq then mq=mq+1;nq=nq-Pq end;if mq>Oq then _q=_q+1;mq=mq-Pq end
if _q>Oq then Qw=Qw+1;_q=_q-Pq end;local Ww={sq,Dq,aq,zq,xq,cq,vq,bq,nq,mq,_q,Qw}return Gq(Ww)end
local function Jq(Ew)local Rw=Ew[1]local Dq=Ew[2]local Tw=Ew[3]local Yw=Ew[4]local Uw=Ew[5]local Iw=Ew[6]
local Ow=Ew[7]local Pw=Ew[8]local Aw=Ew[9]local Sw=Ew[10]local Dw=Ew[11]local Fw=Ew[12]Rw=Rw/2
Rw=Rw-Rw%1;Rw=Rw+ (Dq%2)*0x8000;Dq=Dq/2;Dq=Dq-Dq%1;Dq=Dq+
(Tw%2)*0x8000;Tw=Tw/2;Tw=Tw-Tw%1
Tw=Tw+ (Yw%2)*0x8000;Yw=Yw/2;Yw=Yw-Yw%1;Yw=Yw+ (Uw%2)*0x8000;Uw=Uw/2
Uw=Uw-Uw%1;Uw=Uw+ (Iw%2)*0x8000;Iw=Iw/2;Iw=Iw-Iw%1;Iw=Iw+
(Ow%2)*0x8000;Ow=Ow/2;Ow=Ow-Ow%1
Ow=Ow+ (Pw%2)*0x8000;Pw=Pw/2;Pw=Pw-Pw%1;Pw=Pw+ (Aw%2)*0x8000;Aw=Aw/2
Aw=Aw-Aw%1;Aw=Aw+ (Sw%2)*0x8000;Sw=Sw/2;Sw=Sw-Sw%1;Sw=Sw+
(Dw%2)*0x8000;Dw=Dw/2;Dw=Dw-Dw%1
Dw=Dw+ (Fw%2)*0x8000;Fw=Fw/2;Fw=Fw-Fw%1
local Gw={Rw,Dq,Tw,Yw,Uw,Iw,Ow,Pw,Aw,Sw,Dw,Fw}return Gw end
local function Kq(Hw,Jw)local Kw=Hw[1]-Jw[1]local Dq=Hw[2]-Jw[2]local Lw=Hw[3]-Jw[3]local Zw=Hw[4]-
Jw[4]local Xw=Hw[5]-Jw[5]local Cw=Hw[6]-Jw[6]
local Vw=Hw[7]-Jw[7]local Bw=Hw[8]-Jw[8]local Nw=Hw[9]-Jw[9]local Mw=Hw[10]-Jw[10]local qw=
Hw[11]-Jw[11]local ww=Hw[12]-Jw[12]
if Kw<0 then Dq=Dq-1;Kw=Kw+Pq end;if Dq<0 then Lw=Lw-1;Dq=Dq+Pq end;if Lw<0 then Zw=Zw-1;Lw=Lw+Pq end;if
Zw<0 then Xw=Xw-1;Zw=Zw+Pq end;if Xw<0 then Cw=Cw-1;Xw=Xw+Pq end;if
Cw<0 then Vw=Vw-1;Cw=Cw+Pq end;if Vw<0 then Bw=Bw-1;Vw=Vw+Pq end;if
Bw<0 then Nw=Nw-1;Bw=Bw+Pq end;if Nw<0 then Mw=Mw-1;Nw=Nw+Pq end;if
Mw<0 then qw=qw-1;Mw=Mw+Pq end;if qw<0 then ww=ww-1;qw=qw+Pq end
local ew={Kw,Dq,Lw,Zw,Xw,Cw,Vw,Bw,Nw,Mw,qw,ww}return ew end
local function Lq(rw,tw)local yw=rw[1]-tw[1]local Dq=rw[2]-tw[2]local uw=rw[3]-tw[3]local iw=rw[4]-
tw[4]local ow=rw[5]-tw[5]local pw=rw[6]-tw[6]
local lw=rw[7]-tw[7]local kw=rw[8]-tw[8]local jw=rw[9]-tw[9]local hw=rw[10]-tw[10]local gw=
rw[11]-tw[11]local fw=rw[12]-tw[12]
if yw<0 then Dq=Dq-1;yw=yw+Pq end;if Dq<0 then uw=uw-1;Dq=Dq+Pq end;if uw<0 then iw=iw-1;uw=uw+Pq end;if
iw<0 then ow=ow-1;iw=iw+Pq end;if ow<0 then pw=pw-1;ow=ow+Pq end;if
pw<0 then lw=lw-1;pw=pw+Pq end;if lw<0 then kw=kw-1;lw=lw+Pq end;if
kw<0 then jw=jw-1;kw=kw+Pq end;if jw<0 then hw=hw-1;jw=jw+Pq end;if
hw<0 then gw=gw-1;hw=hw+Pq end;if gw<0 then fw=fw-1;gw=gw+Pq end
local dw={yw,Dq,uw,iw,ow,pw,lw,kw,jw,hw,gw,fw}if fw<0 then dw=Hq(dw,Aq)end;return dw end
local function Zq(sw,aw)local zw=sw[1]+aw[1]local Dq=sw[2]+aw[2]local xw=sw[3]+aw[3]local cw=sw[4]+
aw[4]local vw=sw[5]+aw[5]local bw=sw[6]+aw[6]
local nw=sw[7]+aw[7]local mw=sw[8]+aw[8]local _w=sw[9]+aw[9]local Qe=sw[10]+aw[10]local We=
sw[11]+aw[11]local Ee=sw[12]+aw[12]
local Re=sw[13]+aw[13]local Te=sw[14]+aw[14]local Ye=sw[15]+aw[15]
local Ue=sw[16]+aw[16]local Ie=sw[17]+aw[17]local Oe=sw[18]+aw[18]
local Pe=sw[19]+aw[19]local Ae=sw[20]+aw[20]local Se=sw[21]+aw[21]
local De=sw[22]+aw[22]local Fe=sw[23]+aw[23]local Ge=sw[24]+aw[24]if zw>Oq then Dq=Dq+1
zw=zw-Pq end;if Dq>Oq then xw=xw+1;Dq=Dq-Pq end;if xw>Oq then cw=cw+1
xw=xw-Pq end;if cw>Oq then vw=vw+1;cw=cw-Pq end;if vw>Oq then bw=bw+1
vw=vw-Pq end;if bw>Oq then nw=nw+1;bw=bw-Pq end;if nw>Oq then mw=mw+1
nw=nw-Pq end;if mw>Oq then _w=_w+1;mw=mw-Pq end;if _w>Oq then Qe=Qe+1
_w=_w-Pq end;if Qe>Oq then We=We+1;Qe=Qe-Pq end;if We>Oq then Ee=Ee+1
We=We-Pq end;if Ee>Oq then Re=Re+1;Ee=Ee-Pq end;if Re>Oq then Te=Te+1
Re=Re-Pq end;if Te>Oq then Ye=Ye+1;Te=Te-Pq end;if Ye>Oq then Ue=Ue+1
Ye=Ye-Pq end;if Ue>Oq then Ie=Ie+1;Ue=Ue-Pq end;if Ie>Oq then Oe=Oe+1
Ie=Ie-Pq end;if Oe>Oq then Pe=Pe+1;Oe=Oe-Pq end;if Pe>Oq then Ae=Ae+1
Pe=Pe-Pq end;if Ae>Oq then Se=Se+1;Ae=Ae-Pq end;if Se>Oq then De=De+1
Se=Se-Pq end;if De>Oq then Fe=Fe+1;De=De-Pq end;if Fe>Oq then Ge=Ge+1
Fe=Fe-Pq end
local He={zw,Dq,xw,cw,vw,bw,nw,mw,_w,Qe,We,Ee,Re,Te,Ye,Ue,Ie,Oe,Pe,Ae,Se,De,Fe,Ge}return He end
local function Xq(Je,Ke)local Le,Ze,Xe,Ce,Ve,Be,Ne,Me,qe,we,ee,re=unpack(Je)local te,ye,ue,ie,oe,pe,le,ke,je,he,ge,fe=unpack(Ke)
local de=Le*te;local Dq=Le*ye;Dq=Dq+Ze*te;local se=Le*ue;se=se+Ze*ye;se=se+Xe*te
local ae=Le*ie;ae=ae+Ze*ue;ae=ae+Xe*ye;ae=ae+Ce*te;local ze=Le*oe
ze=ze+Ze*ie;ze=ze+Xe*ue;ze=ze+Ce*ye;ze=ze+Ve*te;local xe=Le*pe
xe=xe+Ze*oe;xe=xe+Xe*ie;xe=xe+Ce*ue;xe=xe+Ve*ye;xe=xe+Be*te
local ce=Le*le;ce=ce+Ze*pe;ce=ce+Xe*oe;ce=ce+Ce*ie;ce=ce+Ve*ue
ce=ce+Be*ye;ce=ce+Ne*te;local ve=Le*ke;ve=ve+Ze*le;ve=ve+Xe*pe
ve=ve+Ce*oe;ve=ve+Ve*ie;ve=ve+Be*ue;ve=ve+Ne*ye;ve=ve+Me*te
local be=Le*je;be=be+Ze*ke;be=be+Xe*le;be=be+Ce*pe;be=be+Ve*oe
be=be+Be*ie;be=be+Ne*ue;be=be+Me*ye;be=be+qe*te;local ne=Le*he
ne=ne+Ze*je;ne=ne+Xe*ke;ne=ne+Ce*le;ne=ne+Ve*pe;ne=ne+Be*oe
ne=ne+Ne*ie;ne=ne+Me*ue;ne=ne+qe*ye;ne=ne+we*te;local me=Le*ge
me=me+Ze*he;me=me+Xe*je;me=me+Ce*ke;me=me+Ve*le;me=me+Be*pe
me=me+Ne*oe;me=me+Me*ie;me=me+qe*ue;me=me+we*ye;me=me+ee*te
local _e=Le*fe;_e=_e+Ze*ge;_e=_e+Xe*he;_e=_e+Ce*je;_e=_e+Ve*ke
_e=_e+Be*le;_e=_e+Ne*pe;_e=_e+Me*oe;_e=_e+qe*ie;_e=_e+we*ue
_e=_e+ee*ye;_e=_e+re*te;local Qr=Ze*fe;Qr=Qr+Xe*ge;Qr=Qr+Ce*he
Qr=Qr+Ve*je;Qr=Qr+Be*ke;Qr=Qr+Ne*le;Qr=Qr+Me*pe;Qr=Qr+qe*oe
Qr=Qr+we*ie;Qr=Qr+ee*ue;Qr=Qr+re*ye;local Wr=Xe*fe;Wr=Wr+Ce*ge
Wr=Wr+Ve*he;Wr=Wr+Be*je;Wr=Wr+Ne*ke;Wr=Wr+Me*le;Wr=Wr+qe*pe
Wr=Wr+we*oe;Wr=Wr+ee*ie;Wr=Wr+re*ue;local Er=Ce*fe;Er=Er+Ve*ge
Er=Er+Be*he;Er=Er+Ne*je;Er=Er+Me*ke;Er=Er+qe*le;Er=Er+we*pe
Er=Er+ee*oe;Er=Er+re*ie;local Rr=Ve*fe;Rr=Rr+Be*ge;Rr=Rr+Ne*he
Rr=Rr+Me*je;Rr=Rr+qe*ke;Rr=Rr+we*le;Rr=Rr+ee*pe;Rr=Rr+re*oe
local Tr=Be*fe;Tr=Tr+Ne*ge;Tr=Tr+Me*he;Tr=Tr+qe*je;Tr=Tr+we*ke
Tr=Tr+ee*le;Tr=Tr+re*pe;local Yr=Ne*fe;Yr=Yr+Me*ge;Yr=Yr+qe*he
Yr=Yr+we*je;Yr=Yr+ee*ke;Yr=Yr+re*le;local Ur=Me*fe;Ur=Ur+qe*ge
Ur=Ur+we*he;Ur=Ur+ee*je;Ur=Ur+re*ke;local Ir=qe*fe;Ir=Ir+we*ge
Ir=Ir+ee*he;Ir=Ir+re*je;local Or=we*fe;Or=Or+ee*ge;Or=Or+re*he;local Pr=ee*fe;Pr=Pr+
re*ge;local Ar=re*fe;local Sr=0;Dq=Dq+ (de/Pq)Dq=Dq-Dq%1;de=de%Pq;se=
se+ (Dq/Pq)se=se-se%1;Dq=Dq%Pq;ae=ae+ (se/Pq)
ae=ae-ae%1;se=se%Pq;ze=ze+ (ae/Pq)ze=ze-ze%1;ae=ae%Pq
xe=xe+ (ze/Pq)xe=xe-xe%1;ze=ze%Pq;ce=ce+ (xe/Pq)ce=ce-ce%1;xe=xe%Pq;ve=ve+
(ce/Pq)ve=ve-ve%1;ce=ce%Pq;be=be+ (ve/Pq)be=be-be%1;ve=ve%
Pq;ne=ne+ (be/Pq)ne=ne-ne%1;be=be%Pq
me=me+ (ne/Pq)me=me-me%1;ne=ne%Pq;_e=_e+ (me/Pq)_e=_e-_e%1;me=me%Pq;Qr=Qr+
(_e/Pq)Qr=Qr-Qr%1;_e=_e%Pq;Wr=Wr+ (Qr/Pq)Wr=Wr-Wr%1;Qr=Qr%
Pq;Er=Er+ (Wr/Pq)Er=Er-Er%1;Wr=Wr%Pq
Rr=Rr+ (Er/Pq)Rr=Rr-Rr%1;Er=Er%Pq;Tr=Tr+ (Rr/Pq)Tr=Tr-Tr%1;Rr=Rr%Pq;Yr=Yr+
(Tr/Pq)Yr=Yr-Yr%1;Tr=Tr%Pq;Ur=Ur+ (Yr/Pq)Ur=Ur-Ur%1;Yr=Yr%
Pq;Ir=Ir+ (Ur/Pq)Ir=Ir-Ir%1;Ur=Ur%Pq
Or=Or+ (Ir/Pq)Or=Or-Or%1;Ir=Ir%Pq;Pr=Pr+ (Or/Pq)Pr=Pr-Pr%1;Or=Or%Pq;Ar=Ar+
(Pr/Pq)Ar=Ar-Ar%1;Pr=Pr%Pq;Sr=Sr+ (Ar/Pq)Sr=Sr-Sr%1;Ar=Ar%
Pq
local Dr={de,Dq,se,ae,ze,xe,ce,ve,be,ne,me,_e,Qr,Wr,Er,Rr,Tr,Yr,Ur,Ir,Or,Pr,Ar,Sr}return Dr end;local function Cq(Fr)
local Pq={unpack(Xq({unpack(Fr,1,12)},Sq),1,12)}local Gr={unpack(Zq(Fr,Xq(Pq,Aq)),13,24)}return
Gq(Gr)end;local function Vq(Hr,Jr)return
Cq(Xq(Hr,Jr))end
local function Bq(Kr)local Lr,Zr,Xr,Cr,Vr,Br,Nr,Mr,qr,wr,er,rr=unpack(Kr)
local tr=Lr*Lr;local Dq=Lr*Zr*2;local yr=Lr*Xr*2;yr=yr+Zr*Zr;local ur=Lr*Cr*2;ur=ur+
Zr*Xr*2;local ir=Lr*Vr*2;ir=ir+Zr*Cr*2;ir=ir+Xr*Xr
local pr=Lr*Br*2;pr=pr+Zr*Vr*2;pr=pr+Xr*Cr*2;local lr=Lr*Nr*2
lr=lr+Zr*Br*2;lr=lr+Xr*Vr*2;lr=lr+Cr*Cr;local kr=Lr*Mr*2
kr=kr+Zr*Nr*2;kr=kr+Xr*Br*2;kr=kr+Cr*Vr*2;local jr=Lr*qr*2
jr=jr+Zr*Mr*2;jr=jr+Xr*Nr*2;jr=jr+Cr*Br*2;jr=jr+Vr*Vr
local hr=Lr*wr*2;hr=hr+Zr*qr*2;hr=hr+Xr*Mr*2;hr=hr+Cr*Nr*2;hr=hr+
Vr*Br*2;local gr=Lr*er*2;gr=gr+Zr*wr*2;gr=gr+Xr*qr*2;gr=gr+
Cr*Mr*2;gr=gr+Vr*Nr*2;gr=gr+Br*Br
local fr=Lr*rr*2;fr=fr+Zr*er*2;fr=fr+Xr*wr*2;fr=fr+Cr*qr*2;fr=fr+
Vr*Mr*2;fr=fr+Br*Nr*2;local dr=Zr*rr*2;dr=dr+Xr*er*2;dr=dr+
Cr*wr*2;dr=dr+Vr*qr*2;dr=dr+Br*Mr*2
dr=dr+Nr*Nr;local sr=Xr*rr*2;sr=sr+Cr*er*2;sr=sr+Vr*wr*2
sr=sr+Br*qr*2;sr=sr+Nr*Mr*2;local ar=Cr*rr*2;ar=ar+Vr*er*2
ar=ar+Br*wr*2;ar=ar+Nr*qr*2;ar=ar+Mr*Mr;local zr=Vr*rr*2
zr=zr+Br*er*2;zr=zr+Nr*wr*2;zr=zr+Mr*qr*2;local xr=Br*rr*2
xr=xr+Nr*er*2;xr=xr+Mr*wr*2;xr=xr+qr*qr;local cr=Nr*rr*2
cr=cr+Mr*er*2;cr=cr+qr*wr*2;local vr=Mr*rr*2;vr=vr+qr*er*2
vr=vr+wr*wr;local br=qr*rr*2;br=br+wr*er*2;local nr=wr*rr*2;nr=nr+er*er;local mr=
er*rr*2;local _r=rr*rr;local Qt=0;Dq=Dq+ (tr/Pq)Dq=Dq-Dq%1
tr=tr%Pq;yr=yr+ (Dq/Pq)yr=yr-yr%1;Dq=Dq%Pq;ur=ur+ (yr/Pq)
ur=ur-ur%1;yr=yr%Pq;ir=ir+ (ur/Pq)ir=ir-ir%1;ur=ur%Pq
pr=pr+ (ir/Pq)pr=pr-pr%1;ir=ir%Pq;lr=lr+ (pr/Pq)lr=lr-lr%1;pr=pr%Pq;kr=kr+
(lr/Pq)kr=kr-kr%1;lr=lr%Pq;jr=jr+ (kr/Pq)jr=jr-jr%1;kr=kr%
Pq;hr=hr+ (jr/Pq)hr=hr-hr%1;jr=jr%Pq
gr=gr+ (hr/Pq)gr=gr-gr%1;hr=hr%Pq;fr=fr+ (gr/Pq)fr=fr-fr%1;gr=gr%Pq;dr=dr+
(fr/Pq)dr=dr-dr%1;fr=fr%Pq;sr=sr+ (dr/Pq)sr=sr-sr%1;dr=dr%
Pq;ar=ar+ (sr/Pq)ar=ar-ar%1;sr=sr%Pq
zr=zr+ (ar/Pq)zr=zr-zr%1;ar=ar%Pq;xr=xr+ (zr/Pq)xr=xr-xr%1;zr=zr%Pq;cr=cr+
(xr/Pq)cr=cr-cr%1;xr=xr%Pq;vr=vr+ (cr/Pq)vr=vr-vr%1;cr=cr%
Pq;br=br+ (vr/Pq)br=br-br%1;vr=vr%Pq
nr=nr+ (br/Pq)nr=nr-nr%1;br=br%Pq;mr=mr+ (nr/Pq)mr=mr-mr%1;nr=nr%Pq;_r=_r+
(mr/Pq)_r=_r-_r%1;mr=mr%Pq;Qt=Qt+ (_r/Pq)Qt=Qt-Qt%1;_r=_r%
Pq
local Wt={tr,Dq,yr,ur,ir,pr,lr,kr,jr,hr,gr,fr,dr,sr,ar,zr,xr,cr,vr,br,nr,mr,_r,Qt}return Cq(Wt)end;local function Nq(Et)return Vq(Et,Dq)end;local function Mq(Rt)local Rt={unpack(Rt)}
for Tt=13,24 do Rt[Tt]=0 end;return Cq(Rt)end;return
{eq=Fq,mul=Vq,sqr=Bq,add=Hq,sub=Lq,shr=Jq,mont=Nq,invMont=Mq,sub192=Kq}end;qV["empty"]=function(...)end
qV["elliptic"]=function(...)fp=wV("fp")local Yt=fp.eq
local Ut=fp.mul;local It=fp.sqr;local Ot=fp.add;local Pt=fp.sub;local At=fp.shr;local St=fp.mont;local Dt=fp.invMont
local Ft=fp.sub192;local Gt=192
local Ht={1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
local Jt={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0}local Kt={0,0,0,0,0,0,0,0,0,0,0,0}
local Lt=St({1,0,0,0,0,0,0,0,0,0,0,0})local Zt=St({3,0,0,0,0,0,0,0,0,0,0,65533})
local Xt={St({30457,58187,5603,63215,8936,58151,26571,7272,26680,23486,32353,59456}),St({3,0,0,0,0,0,0,0,0,0,0,0}),St({1,0,0,0,0,0,0,0,0,0,0,0})}local Ct={Xt}local Vt=St({108,0,0,0,0,0,0,0,0,0,0,0})local Bt=bit32.bxor or
bit.bxor
local Nt={__tostring=function(ht)return string.char(unpack(ht))end,__index={toHex=function(gt,ft)return("%02x"):rep(
#gt):format(unpack(gt))end,isEqual=function(dt,st)if
type(st)~="table"then return false end;if#dt~=#st then return false end
local at=0
for zt=1,#dt do at=bit32.bor(at,Bt(dt[zt],st[zt]))end;return at==0 end}}
local function Mt(xt,ct)local xt={unpack(xt)}local vt={unpack(Lt)}for bt=1,Gt do if ct[bt]==1 then
vt=Ut(vt,xt)end;xt=Ut(xt,xt)end;return vt end
local function qt(nt)local mt,_t,Qy=unpack(nt)local Wy=Ot(mt,_t)local Ey=It(Wy)local Ry=It(mt)
local Ty=It(_t)local Yy=Ot(Ry,Ty)local Uy=It(Qy)local Iy=Pt(Yy,Ot(Uy,Uy))
local Oy=Ut(Pt(Ey,Yy),Iy)local Py=Ut(Yy,Pt(Ry,Ty))local Ay=Ut(Yy,Iy)local Sy={Oy,Py,Ay}return Sy end
local function wt(Dy,Fy)local Gy,Hy,Jy=unpack(Dy)local Ky,Ly,Zy=unpack(Fy)local Xy=Ut(Jy,Zy)local Cy=It(Xy)
local Vy=Ut(Gy,Ky)local By=Ut(Hy,Ly)local Ny=Ut(Vt,Ut(Vy,By))local My=Pt(Cy,Ny)
local Xt=Ot(Cy,Ny)
local qy=Ut(Xy,Ut(My,Pt(Ut(Ot(Gy,Hy),Ot(Ky,Ly)),Ot(Vy,By))))local wy=Ut(Xy,Ut(Xt,Pt(By,Vy)))local ey=Ut(My,Xt)
local ry={qy,wy,ey}return ry end
local function et(ty)local yy,uy,iy=unpack(ty)local oy=Pt(Zt,yy)local py={unpack(uy)}
local ly={unpack(iy)}local ky={oy,py,ly}return ky end;local function rt(jy,hy)return wt(jy,et(hy))end
local function tt(gy)local fy,dy,sy=unpack(gy)
local ay=Mt(sy,Ht)local zy=Ut(fy,ay)local xy=Ut(dy,ay)local cy={unpack(Lt)}
local vy={zy,xy,cy}return vy end
local function yt(by,ny)local my,_y,Qu=unpack(by)local Wu,Eu,Ru=unpack(ny)local Tu=Ut(my,Ru)
local Yu=Ut(_y,Ru)local Uu=Ut(Wu,Qu)local Iu=Ut(Eu,Qu)return Yt(Tu,Uu)and Yt(Yu,Iu)end
local function ut(Ou)local Pu,Au,Su=unpack(Ou)local Du=It(Pu)local Fu=It(Au)local Gu=It(Su)local Hu=It(Gu)
local Ju=Ot(Du,Fu)Ju=Ut(Ju,Gu)local Ku=Ut(Vt,Ut(Du,Fu))Ku=Ot(Hu,Ku)return Yt(Ju,Ku)end
local function it(Vt)local Lu=Vt[1]%32;if Lu>=16 then Lu=Lu-32 end;return Lu end
local function ot(Vt)local Zu={}local Vt={unpack(Vt)}while Vt[12]>=0 and not Yt(Vt,Kt)do if
Vt[1]%2 ==1 then Zu[#Zu+1]=it(Vt)
Vt=Ft(Vt,{Zu[#Zu],0,0,0,0,0,0,0,0,0,0,0})else Zu[#Zu+1]=0 end
Vt=At(Vt)end
return Zu end
local function pt(Xu,Cu)local Vu=ot(Xu)local Bu={Cu}local Nu=qt(Cu)
for qu=3,31,2 do Bu[qu]=wt(Bu[qu-2],Nu)end
local Mu={{unpack(Kt)},{unpack(Lt)},{unpack(Lt)}}
for wu=#Vu,1,-1 do Mu=qt(Mu)if Vu[wu]>0 then Mu=wt(Mu,Bu[Vu[wu]])elseif Vu[wu]<0 then Mu=rt(Mu,Bu[-
Vu[wu]])end end;return Mu end;for eu=2,196 do Ct[eu]=qt(Ct[eu-1])end
local function lt(ru)
local tu={{unpack(Kt)},{unpack(Lt)},{unpack(Lt)}}local yu=1
for uu=1,12 do local iu=ru[uu]for ou=1,16 do if iu%2 ==1 then tu=wt(tu,Ct[yu])end
yu=yu+1;iu=iu/2;iu=iu-iu%1 end end;return tu end
local function kt(pu)pu=tt(pu)local lu={}local ku,ju=unpack(pu)lu[1]=ku[1]%2
for hu=1,12 do
local gu=ju[hu]%256;lu[2*hu]=gu;lu[2*hu+1]=(ju[hu]-gu)/256 end;return setmetatable(lu,Nt)end
local function jt(fu)local du={}for Qi=1,12 do du[Qi]=fu[2*Qi]
du[Qi]=du[Qi]+fu[2*Qi+1]*256 end;local su=It(du)local au=Pt(su,Lt)
local zu=Pt(Ut(Vt,su),Lt)local xu=It(au)local cu=Ut(au,xu)local vu=Ut(cu,xu)local bu=Ut(zu,It(zu))
local nu=Ut(vu,bu)local mu=Ut(cu,Ut(zu,Mt(nu,Jt)))if mu[1]%2 ~=fu[1]then
mu=Pt(Zt,mu)end;local _u={mu,du,{unpack(Lt)}}return _u end
return{G=Xt,pointAdd=wt,pointNeg=et,pointSub=rt,pointEq=yt,pointIsOnCurve=ut,scalarMul=pt,scalarMulG=lt,pointEncode=kt,pointDecode=jt}end
qV["ecc"]=function(...)local Wi=wV("fq")local Ei=wV("elliptic")local Ri=NV("sha256")
NV("urandom")
local Ti={1372,62520,47765,8105,45059,9616,65535,65535,65535,65535,65535,65532}local Yi=24;local Ui=24
local function Ii(Fi)local Gi=Ri.hmac({0x00},Fi)local Hi;repeat Gi=Ri.digest(Gi)
Hi=Wi.fromBytes(Gi)until Wi.cmp(Hi,Ti)<=0;return Hi end;local function Oi(Ji)local Ki=Ii(Ji)local Li=Ei.scalarMulG(Ki)local Zi=Ei.pointEncode(Li)
return Zi end;local function Pi()local Xi=os.urandom()
local Ci=Oi(Xi)return Ci,Xi end
local function Ai(Vi,Bi)
local Ni=Ei.pointDecode(Bi)local Mi=Ii(Vi)local qi=Ei.scalarMul(Mi,Ni)qi=Ei.pointScale(qi)
local wi=Wi.bytes(qi[2])local wi=Ri.digest(wi)return wi end
local function Si(ei,ri)
ri=type(ri)=="table"and string.char(unpack(ri))or ri
ei=type(ei)=="table"and string.char(unpack(ei))or ei;local ti=tostring(os.epoch("utc"))local yi=Ii(ei)
local ui=Ii(ri..ti..ei)local ii=Ei.scalarMulG(ui)
ii=string.char(unpack(Ei.pointEncode(ii)))local oi=Ii(ii..ri)local pi=Wi.sub(ui,Wi.mul(yi,oi))
oi=Wi.bytes(oi)pi=Wi.bytes(pi)local li=oi;for ki=1,#pi do li[#li+1]=pi[ki]end
return li end
local function Di(ji,hi,gi)local fi=Ei.pointDecode(ji)local di={unpack(gi,1,Ui)}local si={unpack(gi,Ui+1,Ui+
Yi)}di=Wi.fromBytes(di)
si=Wi.fromBytes(si)
local ai=Ei.pointAdd(Ei.scalarMulG(si),Ei.scalarMul(di,fi))
ai=string.char(unpack(Ei.pointEncode(ai)))local zi=Ii(ai..hi)return Wi.eq(zi,di)end;return{publicKey=Oi,exchange=Ai,sign=Si,verify=Di,keypair=Pi}end;return wV end)
U("registry",function(xi,ci,U,I)local vi=xi("binary-serialization")
function split(Wo,Eo,Ro)local To={}
if Wo:len()>0 then
Ro=Ro or-1;local Yo,Uo=1,1;local Io,Oo=Wo:find(Eo,Uo,true)
while Io and Ro~=0 do
To[Yo]=Wo:sub(Uo,Io-1)Yo=Yo+1;Uo=Oo+1;Io,Oo=Wo:find(Eo,Uo,true)Ro=Ro-1 end;To[Yo]=Wo:sub(Uo)end;return To end
local function bi(Po,Ao)local So=fs.open(Po,"wb")So.write(Ao)So.close()end
local function ni(Do)local Fo=fs.open(Do,"rb")local Go=Fo.readAll()Fo.close()return Go end;local mi=fs.open;local _i=".registry"local Qo={}
function Qo.set(Ho,Jo)local Ko=split(Ho,".")local Lo,Zo
if
fs.exists(_i)then Lo,Zo=pcall(vi.deserialize,ni(_i))if not Lo then Zo={}end else Zo={}end;local Xo=table.remove(Ko)local Co=Zo
for Vo,Bo in ipairs(Ko)do local No=Co[Bo]if
type(No)~="table"then Co[Bo]={}end;Co=Co[Bo]end;Co[Xo]=Jo;bi(_i,vi.serialize(Zo))end
function Qo.get(Mo)if not fs.exists(_i)then return nil end;local qo=split(Mo,".")
local wo,eo=pcall(vi.deserialize,ni(_i))if not wo then eo={}end
for ro,to in ipairs(qo)do eo=eo[to]if not eo then return nil end end;return eo end;return Qo end)
U("binary-serialization",function(yo,uo,U,I)local io=pairs;local oo=type;local po=loadstring;local lo=math.abs;local ko=math.floor
local jo=math.frexp;local ho=math.modf;local go=math.pow;local fo=string.byte;local so=string.char
local ao=string.dump;local zo=string.sub;local xo=table.concat
local function co(Yp)local Up=Yp<0 and 1 or 0
if
lo(Yp)==1/0 then return
(Up==1 and"\0\0\0\0\0\0\240\255"or"\0\0\0\0\0\0\240\127")end;if Yp~=Yp then return"\170\170\170\170\170\170\250\255"end
local Ip,Op=jo(lo(Yp))Ip,Op=Ip*2,Op-1;Op=Op+1023
return
xo({so(ko(Ip*2^52)%256),so(
ko(Ip*2^44)%256),so(ko(Ip*2^36)%256),so(ko(Ip*2^28)%256),so(ko(
Ip*2^20)%256),so(ko(Ip*2^12)%256),so(
ko(Ip*2^4)%16+ko(Op)%16*16),so(
ko(Op/2^4)%128+128*Up)})end
local function vo(Pp)
local Ap=

fo(Pp,1)/2^52+fo(Pp,2)/2^44+fo(Pp,3)/2^36+fo(Pp,4)/2^28+fo(Pp,5)/2^20+fo(Pp,6)/2^12+
(fo(Pp,7)%16)/2^4+1;local Sp=(fo(Pp,8)%128)*16+ko(Pp:byte(7)/16)-
1023
local Dp=ko(fo(Pp,8)/128)
if Sp==1024 then return Ap==1 and(1-2*Dp)/0 or 0/0 end;return(1-2*Dp)*Ap*2^Sp end
local function bo(Fp)
local function Gp(Hp,Jp,Kp,...)if not Kp then return Jp end;return Gp(Hp*256,Jp+Kp*Hp,...)end
return Gp(256,fo(Fp,1,-1))-go(2,#Fp*8-1)end
local function no(Lp)
local function Zp(Xp,Cp,Vp,...)if not Vp then return Cp end;return Zp(Xp*256,Cp+Vp*Xp,...)end;return Zp(256,fo(Lp,1,-1))end
local function mo(Bp,Np)
local function Mp(Np,Bp,qp)qp=qp*256;if Np==0 then return qp end;return qp,Mp(Np-1,ho(Bp/256))end;return so(Mp(Np-1,ho((Bp)/256)))end
local function _o(wp)return math.log10(wp)/math.log10(2)end
local function Qp(ep)local rp=math.ceil((_o(ep)+1)/8)if rp==math.huge or rp==-
math.huge then return 1 end;return rp end
local Wp={boolean="b",double="d",posinteger="p",neginteger="n",string="s",table="t",["function"]="f",["nil"]="_"}local Ep={}local Rp={}function Ep.boolean(tp)return tp and"\1"or"\0"end;function Ep.double(yp)return
co(yp)end;function Ep.integer(up)local ip=Qp(up)
return so(ip)..mo(up,ip)end;function Ep.string(op)local pp=#op;local lp=Qp(pp)return
xo({so(lp),mo(pp,lp),op})end
Ep["function"]=function(kp)
local jp,hp=pcall(ao,kp)if not jp then return"_"end;return mo(#hp,4)..hp end
function Rp.b(gp,fp)local dp=zo(fp[1],gp,gp)=="\1"return dp,gp+1 end
function Rp.d(sp,ap)local zp=vo(zo(ap[1],sp,sp+8))return zp,sp+8 end;function Rp.p(xp,cp)local vp=no(zo(cp[1],xp,xp))
local bp=no(zo(cp[1],xp+1,xp+vp))return bp,xp+vp+1 end
function Rp.n(np,mp)
local _p=no(zo(mp[1],np,np))local Ql=no(zo(mp[1],np+1,np+_p))return-Ql,np+_p+1 end;function Rp.s(Wl,El)local Rl=no(zo(El[1],Wl,Wl))
local Tl=no(zo(El[1],Wl+1,Wl+Rl))local Yl=zo(El[1],Wl+Rl+1,Wl+Rl+Tl)
return Yl,Wl+Rl+Tl+1 end;function Rp.f(Ul,Il)local Ol=no(zo(Il[1],Ul,
Ul+3))
local Pl=po(zo(Il[1],Ul+4,Ul+Ol+3))return Pl,Ul+Ol+4 end;function Rp._(Al,Sl)return
nil,Al end
local function Tp()os.queueEvent""os.pullEvent""end;if not os.queueEvent then Tp=function()end end
function serialize(Dl)local Fl=1;local Gl={}
local Hl={}local Jl={}
local function Kl(Dl)local Zl=oo(Dl)
if Zl=="table"then local Xl=#Dl;if Gl[Dl]then return Hl[Dl]end
local Cl=Fl;Gl[Dl]=true;local Vl=Qp(Fl)
local Bl="t"..mo(Vl,1)..mo(Fl,Vl)Hl[Dl]=Bl;Fl=Fl+1;local Nl={}for Ml=1,Xl do if Dl[Ml]==nil then Xl=Ml-1;break end
Nl[#Nl+1]=Kl(Dl[Ml])end;Nl[#Nl+1]="\0"for ql,wl in io(Dl)do
if

oo(ql)~="number"or((ql>Xl or ql<1)or ko(ql)~=ql)then local el=#Nl;Nl[el+1]=Kl(ql)Nl[el+2]=Kl(wl)end end
Nl[#Nl+1]="\0"Jl[Cl]=xo(Nl)return Bl else
if Zl=="number"then
if ko(Dl)==Dl then
local tl=Ep.integer(math.abs(Dl))local yl="p"if Dl<0 then yl="n"end;return yl..tl end;return"d"..Ep.double(Dl)end;local rl=Wp[Zl]
return Dl==nil and rl or rl..Ep[Zl](Dl)end end;local Ll=Kl(Dl)
if oo(Dl)=="table"then return xo({"t",xo(Jl)})end;return Ll end
function deserialize(ul)local il=1;local ol={{}}local pl={ul}local function ll()local hl=zo(pl[1],il,il)return
hl~=""and hl or nil end
local function kl()local gl=ll()il=il+1
if gl=="t"then
local fl=no(ll())il=il+1;local dl=no(zo(pl[1],il,il+fl-1))il=il+fl;if not
ol[dl]then ol[dl]={}end;return ol[dl]else local sl;sl,il=Rp[gl](il,pl)
return sl end end;local jl=1
if ll()=="t"then il=il+1
while ll()do if not ol[jl]then ol[jl]={}end;local al=ol[jl]while
ll()~="\0"do al[#al+1]=kl()end;il=il+1;while ll()~="\0"do
al[kl()]=kl()end;jl=jl+1;il=il+1 end;return ol[1]end;return kl()end;return{serialize=serialize,deserialize=deserialize}end)
U("json",function(zl,xl,U,I)local cl={}local vl
local bl={["\\"]="\\\\",["\""]="\\\"",["\b"]="\\b",["\f"]="\\f",["\n"]="\\n",["\r"]="\\r",["\t"]="\\t"}local nl={["\\/"]="/"}for Ck,Vk in pairs(bl)do nl[Vk]=Ck end
local function ml(Bk)return bl[Bk]or
string.format("\\u%04x",Bk:byte())end;local function _l(Nk)return"null"end
local function Qk(Mk,qk)local wk={}qk=qk or{}if qk[Mk]then
error("circular reference")end;qk[Mk]=true
if Mk[1]~=nil or next(Mk)==nil then
local ek=0
for rk in pairs(Mk)do if type(rk)~="number"then
error("invalid table: mixed or invalid key types")end;ek=ek+1 end
if ek~=#Mk then error("invalid table: sparse array")end
for tk,yk in ipairs(Mk)do table.insert(wk,vl(yk,qk))end;qk[Mk]=nil
return"["..table.concat(wk,",").."]"else for uk,ik in pairs(Mk)do if type(uk)~="string"then
error("invalid table: mixed or invalid key types")end
table.insert(wk,vl(uk,qk)..":"..vl(ik,qk))end;qk[Mk]=
nil
return"{"..table.concat(wk,",").."}"end end;local function Wk(ok)
return'"'..ok:gsub('[%z\1-\31\\"]',ml)..'"'end
local function Ek(pk)if pk~=pk or pk<=-math.huge or pk>=
math.huge then
error("unexpected number value '"..tostring(pk).."'")end;return
string.format("%.14g",pk)end
local Rk={["nil"]=_l,["table"]=Qk,["string"]=Wk,["number"]=Ek,["boolean"]=tostring}
vl=function(lk,kk)local jk=type(lk)local hk=Rk[jk]if hk then return hk(lk,kk)end;error("unexpected type '"..
jk.."'")end;function cl.encode(gk)return(vl(gk))end;local Tk
local function Yk(...)local fk={}for dk=1,select("#",...)do
fk[select(dk,...)]=true end;return fk end;local Uk=Yk(" ","\t","\r","\n")
local Ik=Yk(" ","\t","\r","\n","]","}",",")local Ok=Yk("\\","/",'"',"b","f","n","r","t","u")
local Pk=Yk("true","false","null")local Ak={["true"]=true,["false"]=false,["null"]=nil}local function Sk(sk,ak,zk,xk)for ck=ak,#sk do if
zk[sk:sub(ck,ck)]~=xk then return ck end end;return
#sk+1 end
local function Dk(vk,bk,nk)local mk=1;local _k=1
for Qj=1,bk-1
do _k=_k+1;if vk:sub(Qj,Qj)=="\n"then mk=mk+1;_k=1 end end
error(string.format("%s at line %d col %d",nk,mk,_k))end
local function Fk(Wj)local Ej=math.floor
if Wj<=0x7f then return string.char(Wj)elseif Wj<=0x7ff then return string.char(
Ej(Wj/64)+192,Wj%64+128)elseif Wj<=0xffff then return
string.char(Ej(
Wj/4096)+224,Ej(Wj%4096/64)+128,Wj%64+128)elseif Wj<=0x10ffff then
return string.char(Ej(Wj/262144)+240,Ej(
Wj%262144/4096)+128,Ej(Wj%4096/64)+128,
Wj%64+128)end
error(string.format("invalid unicode codepoint '%x'",Wj))end
local function Gk(Rj)local Tj=tonumber(Rj:sub(3,6),16)
local Yj=tonumber(Rj:sub(9,12),16)
if Yj then return
Fk((Tj-0xd800)*0x400+ (Yj-0xdc00)+0x10000)else return Fk(Tj)end end
local function Hk(Uj,Ij)local Oj=false;local Pj=false;local Aj=false;local Sj
for Dj=Ij+1,#Uj do local Fj=Uj:byte(Dj)if Fj<32 then
Dk(Uj,Dj,"control character in string")end
if Sj==92 then
if Fj==117 then local Gj=Uj:sub(Dj+1,Dj+5)if not
Gj:find("%x%x%x%x")then
Dk(Uj,Dj,"invalid unicode escape in string")end;if Gj:find("^[dD][89aAbB]")then Pj=true else
Oj=true end else local Hj=string.char(Fj)if not Ok[Hj]then
Dk(Uj,Dj,
"invalid escape char '"..Hj.."' in string")end;Aj=true end;Sj=nil elseif Fj==34 then local Jj=Uj:sub(Ij+1,Dj-1)if Pj then
Jj=Jj:gsub("\\u[dD][89aAbB]..\\u....",Gk)end
if Oj then Jj=Jj:gsub("\\u....",Gk)end;if Aj then Jj=Jj:gsub("\\.",nl)end;return Jj,Dj+1 else Sj=Fj end end;Dk(Uj,Ij,"expected closing quote for string")end
local function Jk(Kj,Lj)local Zj=Sk(Kj,Lj,Ik)local Xj=Kj:sub(Lj,Zj-1)local Cj=tonumber(Xj)
if not Cj then Dk(Kj,Lj,
"invalid number '"..Xj.."'")end;return Cj,Zj end
local function Kk(Vj,Bj)local Nj=Sk(Vj,Bj,Ik)local Mj=Vj:sub(Bj,Nj-1)
if not Pk[Mj]then Dk(Vj,Bj,"invalid literal '"..
Mj.."'")end;return Ak[Mj],Nj end
local function Lk(qj,wj)local ej={}local rj=1;wj=wj+1
while 1 do local tj;wj=Sk(qj,wj,Uk,true)if qj:sub(wj,wj)=="]"then wj=wj+
1;break end;tj,wj=Tk(qj,wj)ej[rj]=tj;rj=rj+1
wj=Sk(qj,wj,Uk,true)local yj=qj:sub(wj,wj)wj=wj+1;if yj=="]"then break end;if yj~=","then
Dk(qj,wj,"expected ']' or ','")end end;return ej,wj end
local function Zk(uj,ij)local oj={}ij=ij+1
while 1 do local pj,lj;ij=Sk(uj,ij,Uk,true)if uj:sub(ij,ij)=="}"then
ij=ij+1;break end;if uj:sub(ij,ij)~='"'then
Dk(uj,ij,"expected string for key")end;pj,ij=Tk(uj,ij)ij=Sk(uj,ij,Uk,true)
if
uj:sub(ij,ij)~=":"then Dk(uj,ij,"expected ':' after key")end;ij=Sk(uj,ij+1,Uk,true)lj,ij=Tk(uj,ij)oj[pj]=lj
ij=Sk(uj,ij,Uk,true)local kj=uj:sub(ij,ij)ij=ij+1;if kj=="}"then break end;if kj~=","then
Dk(uj,ij,"expected '}' or ','")end end;return oj,ij end
local Xk={['"']=Hk,["0"]=Jk,["1"]=Jk,["2"]=Jk,["3"]=Jk,["4"]=Jk,["5"]=Jk,["6"]=Jk,["7"]=Jk,["8"]=Jk,["9"]=Jk,["-"]=Jk,["t"]=Kk,["f"]=Kk,["n"]=Kk,["["]=Lk,["{"]=Zk}
Tk=function(jj,hj)local gj=jj:sub(hj,hj)local fj=Xk[gj]if fj then return fj(jj,hj)end;Dk(jj,hj,
"unexpected character '"..gj.."'")end
function cl.decode(dj)if type(dj)~="string"then
error("expected argument of type string, got "..type(dj))end
local sj,aj=Tk(dj,Sk(dj,1,Uk,true))aj=Sk(dj,aj,Uk,true)
if aj<=#dj then Dk(dj,aj,"trailing garbage")end;return sj end;return cl end)
U("stack_trace",function(zj,xj,U,I)local cj=type
local vj=cj(debug)=="table"and
cj(debug.traceback)=="function"and debug.traceback;local bj,nj=pcall,xpcall
local function mj(Wh)if
Wh==nil or
(cj(Wh)=="string"and not Wh:find(":%d+:"))or cj(Wh)~="string"then return Wh end
if vj then return
(vj(tostring(Wh),2))else local Eh=3
local Rh={tostring(Wh),"stack traceback:"}while true do local Th,Yh=bj(error,"",Eh)if Yh==""then break end;Rh[#Rh+1]="  "..Yh;Eh=
Eh+1 end;return
table.concat(Rh,"\n")end end
local function _j(Uh,Ih)local Uh=tostring(Uh)local Oh,Ph={},{}
for Dh in Uh:gmatch("([^\n]*)\n?")do Oh[#Oh+1]=Dh end;for Fh in Ih:gmatch("([^\n]*)\n?")do Ph[#Ph+1]=Fh end
local Ah,Sh=#Oh,#Ph;while Ah>=3 and Oh[Ah]==Ph[Sh]do table.remove(Oh,Ah)
Ah,Sh=Ah-1,Sh-1 end
while

Ah>=1 and
Oh[Ah]:find("^\tstack_trace%.lua:%d+:")or Oh[Ah]=="\t[C]: in function 'xpcall'"or Oh[Ah]=="  xpcall: "do table.remove(Oh,Ah)Ah=Ah-1 end;return Oh end
local function Qh(Gh,...)local Hh={...}local Jh
local Kh=table.pack(nj(function()return Gh(unpack(Hh))end,mj))if not Kh[1]then Jh=mj("stack_trace.lua:1:")end
local Lh,Zh=Kh[1],Kh[2]
if not Lh and Zh~=nil then Jh=_j(Zh,Jh)local Xh;for Vh=#Jh,1,-1 do if Jh[Vh]=="stack traceback:"then Xh=Vh
break end end;local Ch=15
if Xh and#Jh-Xh>
Ch then local Bh=Xh+10
for Nh=#Jh-Xh-Ch,0,-1 do table.remove(Jh,Bh+Nh)end;table.insert(Jh,Bh,"  ...")end;return false,table.concat(Jh,"\n")end;return table.unpack(Kh,1,Kh.n)end;_G.pcall=Qh;return Qh end)return T("__root")(...)