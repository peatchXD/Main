--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.9.16) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then local v69=0;while true do if (v69==0) then v19=v0(v3(v30,1,1));return "";end end else local v70=v2(v0(v30,16));if v19 then local v80=v5(v70,v19);v19=nil;return v80;else return v70;end end end);local function v20(v31,v32,v33)if v33 then local v71=(v31/((5 -3)^(v32-(2 -1))))%((3 -(1 -0))^(((v33-1) -(v32-1)) + 1)) ;return v71-(v71%(2 -1)) ;else local v72=619 -(555 + (1129 -(68 + 997))) ;local v73;while true do if (v72==(1637 -(1523 + 114))) then v73=(933 -(857 + 74))^(v32-(569 -(367 + 201))) ;return (((v31%(v73 + v73))>=v73) and 1) or 0 ;end end end end local function v21()local v34=1270 -((1183 -(892 + 65)) + 1044) ;local v35;while true do if (v34==(0 -0)) then v35=v1(v16,v18,v18);v18=v18 + (118 -((75 -43) + 85)) ;v34=1 + 0 ;end if (v34==(1 + 0)) then return v35;end end end local function v22()local v36,v37=v1(v16,v18,v18 + (3 -1) );v18=v18 + (3 -1) ;return (v37 * (606 -(87 + 263))) + v36 ;end local function v23()local v38=180 -((180 -113) + 113) ;local v39;local v40;local v41;local v42;while true do if (v38==1) then return (v42 * (12302277 + (8117374 -3642435))) + (v41 * (160901 -95365)) + (v40 * 256) + v39 ;end if (v38==(0 + 0)) then v39,v40,v41,v42=v1(v16,v18,v18 + (11 -8) );v18=v18 + (956 -(584 + 218 + 150)) ;v38=1;end end end local function v24()local v43=997 -(915 + 82) ;local v44;local v45;local v46;local v47;local v48;local v49;while true do if (v43==(0 -0)) then v44=v23();v45=v23();v43=(1056 -(87 + 968)) + 0 ;end if (v43==(3 -0)) then if (v48==(1187 -(1069 + (519 -401)))) then if (v47==0) then return v49 * (0 + 0) ;else local v100=0 + 0 ;while true do if (v100==((0 -0) -0)) then v48=3 -2 ;v46=0 -0 ;break;end end end elseif (v48==(356 + 1691)) then return ((v47==(0 -0)) and (v49 * ((1 + 0)/(885 -(261 + (2037 -(447 + 966))))))) or (v49 * NaN) ;end return v8(v49,v48-(1817 -794) ) * (v46 + (v47/((2 + 0)^(1475 -((1724 -1094) + 793))))) ;end if (v43==(793 -(368 + 423))) then v48=v20(v45,65 -44 ,49 -(10 + 8) );v49=((v20(v45,109 -77 )==(3 -2)) and  -(443 -(416 + 26))) or (3 -2) ;v43=2 + 1 ;end if (v43==(1 -0)) then v46=439 -(145 + 293) ;v47=(v20(v45,2 -1 ,78 -58 ) * ((432 -(44 + 386))^(1518 -(998 + 488)))) + v44 ;v43=1 + 1 ;end end end local function v25(v50)local v51;if  not v50 then v50=v23();if (v50==(1817 -(1703 + 114))) then return "";end end v51=v3(v16,v18,(v18 + v50) -(702 -(376 + 325)) );v18=v18 + v50 ;local v52={};for v67=1 -0 , #v51 do v52[v67]=v2(v1(v3(v51,v67,v67)));end return v6(v52);end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v53=1835 -(274 + 1561) ;local v54;local v55;local v56;local v57;local v58;local v59;while true do if (v53==(0 -0)) then local v74=0;while true do if (v74~=(1 + 0)) then else local v98=0;while true do if (v98==1) then v74=243 -(187 + 54) ;break;end if (v98~=0) then else v56={};v57={v54,v55,nil,v56};v98=1;end end end if (v74~=0) then else v54={};v55={};v74=1 + 0 ;end if (v74==(3 -1)) then v53=1;break;end end end if (v53==(2 -0)) then local v75=0;while true do local v81=0;while true do if (v81==0) then if ((0 + 0)~=v75) then else local v111=1636 -(1373 + 263) ;while true do if (v111==1) then v75=1001 -(451 + 549) ;break;end if (v111~=0) then else for v115=1,v23() do local v116=0 + 0 ;local v117;local v118;local v119;while true do if (v116==(1 -0)) then v119=nil;while true do if (v117~=(0 -0)) then else v118=1384 -(746 + 638) ;v119=nil;v117=1;end if (v117==1) then while true do if (v118==(0 + 0)) then v119=v21();if (v20(v119,1 -0 ,342 -(218 + 123) )==(1581 -(1535 + 46))) then local v178=0 + 0 ;local v179;local v180;local v181;local v182;while true do if (v178==1) then local v183=0;while true do if (1==v183) then v178=1 + 1 ;break;end if (0==v183) then v181=nil;v182=nil;v183=561 -(306 + 254) ;end end end if (v178==(1 + 1)) then while true do if (v179==(5 -2)) then if (v20(v181,3,1470 -(899 + 568) )==(1 + 0)) then v182[9 -5 ]=v59[v182[607 -(268 + 335) ]];end v54[v115]=v182;break;end if (v179~=(290 -(60 + 230))) then else local v186=0;while true do if (v186==0) then local v192=572 -(426 + 146) ;while true do if (v192~=(0 + 0)) then else v180=v20(v119,1458 -(282 + 1174) ,814 -(569 + 242) );v181=v20(v119,4,17 -11 );v192=1;end if ((1 + 0)==v192) then v186=1;break;end end end if (v186==(1025 -(706 + 318))) then v179=1252 -(721 + 530) ;break;end end end if (v179==2) then local v187=0;while true do if ((1272 -(945 + 326))==v187) then v179=3;break;end if (v187==(0 -0)) then local v193=0;while true do if (v193~=0) then else if (v20(v181,1 + 0 ,1)~=(701 -(271 + 429))) then else v182[2 + 0 ]=v59[v182[2]];end if (v20(v181,2,1502 -(1408 + 92) )==1) then v182[1089 -(461 + 625) ]=v59[v182[1291 -(993 + 295) ]];end v193=1;end if (v193==1) then v187=1 + 0 ;break;end end end end end if (v179==(1172 -(418 + 753))) then local v188=0;local v189;while true do if (v188==(0 + 0)) then v189=0;while true do if (v189==1) then v179=2;break;end if (v189==(0 + 0)) then local v194=0 + 0 ;while true do if (0~=v194) then else v182={v22(),v22(),nil,nil};if (v180==(529 -(406 + 123))) then local v199=0;local v200;while true do if (v199==0) then v200=0;while true do if (v200==0) then v182[1772 -(1749 + 20) ]=v22();v182[1 + 3 ]=v22();break;end end break;end end elseif (v180==1) then v182[1325 -(1249 + 73) ]=v23();elseif (v180==2) then v182[3]=v23() -((1 + 1)^(1161 -(466 + 679))) ;elseif (v180~=3) then else local v205=0 -0 ;local v206;while true do if (v205~=0) then else v206=0 -0 ;while true do if (v206~=0) then else v182[1903 -(106 + 1794) ]=v23() -((1 + 1)^(5 + 11)) ;v182[4]=v22();break;end end break;end end end v194=2 -1 ;end if (v194~=1) then else v189=1;break;end end end end break;end end end end break;end if (v178~=0) then else local v184=0 -0 ;while true do if (v184~=0) then else v179=0;v180=nil;v184=115 -(4 + 110) ;end if (1==v184) then v178=585 -(57 + 527) ;break;end end end end end break;end end break;end end break;end if (v116==0) then v117=1427 -(41 + 1386) ;v118=nil;v116=1;end end end for v120=1,v23() do v55[v120-(104 -(17 + 86)) ]=v28();end v111=1 + 0 ;end end end if (v75~=(1 -0)) then else return v57;end break;end end end end if (v53~=1) then else local v76=0 -0 ;while true do if (v76~=0) then else v58=v23();v59={};v76=1;end if (v76~=(168 -(122 + 44))) then else v53=2 -0 ;break;end if (v76==1) then for v101=3 -2 ,v58 do local v102=0 + 0 ;local v103;local v104;while true do if (v102==(1 + 0)) then if (v103==1) then v104=v21()~=(0 -0) ;elseif (v103==2) then v104=v24();elseif (v103~=3) then else v104=v25();end v59[v101]=v104;break;end if ((65 -(30 + 35))==v102) then local v113=0;local v114;while true do if (v113==(0 + 0)) then v114=1257 -(1043 + 214) ;while true do if (v114==(3 -2)) then v102=1;break;end if (v114==0) then local v140=1212 -(323 + 889) ;while true do if ((0 -0)==v140) then v103=v21();v104=nil;v140=1;end if (1~=v140) then else v114=581 -(361 + 219) ;break;end end end end break;end end end end end v57[3]=v21();v76=2;end end end end end local function v29(v60,v61,v62)local v63=0;local v64;local v65;local v66;while true do if (v63==0) then v64=v60[1];v65=v60[2];v63=1;end if (v63==1) then v66=v60[3];return function(...)local v82=v64;local v83=v65;local v84=v66;local v85=v27;local v86=1;local v87= -1;local v88={};local v89={...};local v90=v12("#",...) -1 ;local v91={};local v92={};for v96=0,v90 do if (v96>=v84) then v88[v96-v84 ]=v89[v96 + 1 ];else v92[v96]=v89[v96 + 1 ];end end local v93=(v90-v84) + 1 ;local v94;local v95;while true do local v97=0;while true do if (1==v97) then if (v95<=3) then if (v95<=1) then if (v95==0) then local v122=v94[2];local v123=v92[v94[3]];v92[v122 + 1 ]=v123;v92[v122]=v123[v94[4]];else local v127=0;local v128;while true do if (v127==0) then v128=v94[2];v92[v128]=v92[v128](v13(v92,v128 + 1 ,v87));break;end end end elseif (v95==2) then local v129=0;local v130;local v131;local v132;local v133;local v134;while true do if (v129==1) then v94=v82[v86];if ((v94[3]=="_ENV") or (v94[3]=="getfenv")) then v92[v94[2]]=v62;else v92[v94[2]]=v62[v94[3]];end v86=v86 + 1 ;v94=v82[v86];v134=v94[2];v133=v92[v94[3]];v129=2;end if (2==v129) then v92[v134 + 1 ]=v133;v92[v134]=v133[v94[4]];v86=v86 + 1 ;v94=v82[v86];v92[v94[2]]=v94[3];v86=v86 + 1 ;v129=3;end if (v129==3) then v94=v82[v86];v92[v94[2]]=v94[3]~=0 ;v86=v86 + 1 ;v94=v82[v86];v134=v94[2];v131,v132=v85(v92[v134](v13(v92,v134 + 1 ,v94[3])));v129=4;end if (v129==5) then v92[v134]=v92[v134](v13(v92,v134 + 1 ,v87));v86=v86 + 1 ;v94=v82[v86];v92[v94[2]]();v86=v86 + 1 ;v94=v82[v86];v129=6;end if (v129==6) then do return;end break;end if (v129==4) then v87=(v132 + v134) -1 ;v130=0;for v166=v134,v87 do v130=v130 + 1 ;v92[v166]=v131[v130];end v86=v86 + 1 ;v94=v82[v86];v134=v94[2];v129=5;end if (v129==0) then v130=nil;v131,v132=nil;v133=nil;v134=nil;if ((v94[3]=="_ENV") or (v94[3]=="getfenv")) then v92[v94[2]]=v62;else v92[v94[2]]=v62[v94[3]];end v86=v86 + 1 ;v129=1;end end elseif ((v94[3]=="_ENV") or (v94[3]=="getfenv")) then v92[v94[2]]=v62;else v92[v94[2]]=v62[v94[3]];end elseif (v95<=5) then if (v95==4) then v92[v94[2]]();else local v135=0;local v136;local v137;local v138;local v139;while true do if (v135==0) then v136=v94[2];v137,v138=v85(v92[v136](v13(v92,v136 + 1 ,v94[3])));v135=1;end if (v135==1) then v87=(v138 + v136) -1 ;v139=0;v135=2;end if (v135==2) then for v169=v136,v87 do v139=v139 + 1 ;v92[v169]=v137[v139];end break;end end end elseif (v95<=6) then do return;end elseif (v95==7) then v92[v94[2]]=v94[3]~=0 ;else v92[v94[2]]=v94[3];end v86=v86 + 1 ;break;end if (v97==0) then v94=v82[v86];v95=v94[1];v97=1;end end end end;end end end return v29(v28(),{},v17)(...);end v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574033B3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F70656174636858442F4D61696E2F6D61696E2F56432E6C756100093O0012023O00013O00122O000100023O00202O00010001000300122O000300046O000400016O000100049O0000026O000100016O00017O00",v9(),...);