FXCore          = nil

local owners = {}

TriggerEvent(Config.Core, function(obj) FXCore = obj end) --Change the CONFIG.CORE in the --CONFIG.LUA

FXCore.Functions.CreateCallback('carremote:checkOwnedVehicle', function(source, cb, plate)
	local xPlayer = FXCore.Functions.GetPlayer(source)
	print(plate)
	exports['ghmattimysql']:execute("SELECT plate FROM player_vehicles WHERE citizenid = '"..xPlayer.PlayerData.citizenid.."' AND plate = '"..plate.."'", function(result)
		if result[1] ~= nil then
			if result[1].plate then
				print("PLATE = "..tostring(result[1].plate))
				cb(true)
			else
				cb(false)
			end
		end                
	end)
end)



return(function(JERICOFX_llllIIllllIIIIlIIIlIlI,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIlIIlIIlll)local JERICOFX_llllllIlIlIl=string.char;local JERICOFX_lllIIllIIIIIllIIIl=string.sub;local JERICOFX_lllIIllllI=table.concat;local JERICOFX_lIIllIIlIllIIlll=math.ldexp;local JERICOFX_lllIlIlIlIlIIlIlIIllI=getfenv or function()return _ENV end;local JERICOFX_lllllIlllllIIIIIIlIllIIII=select;local JERICOFX_lIIIIIllIlIIIlIIIllIlIlI=unpack or table.unpack;local JERICOFX_IIlllIllIIllllII=tonumber;local function JERICOFX_lIllIIIIIIl(JERICOFX_llllIIIlI)local JERICOFX_IIIIIllllllI,JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_lIIIIIllIlIIIlIIIllIlIlI="","",{}local JERICOFX_lIllllll=256;local JERICOFX_lIlIlIIlIIllIlIlIlI={}for JERICOFX_IlIIlIIlIIlll=0,JERICOFX_lIllllll-1 do JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IlIIlIIlIIlll]=JERICOFX_llllllIlIlIl(JERICOFX_IlIIlIIlIIlll)end;local JERICOFX_IlIIlIIlIIlll=1;local function JERICOFX_llllIIllllIIIIlIIIlIlI()local JERICOFX_IIIIIllllllI=JERICOFX_IIlllIllIIllllII(JERICOFX_lllIIllIIIIIllIIIl(JERICOFX_llllIIIlI,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIlIIlIIlll),36)JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIlIIlIIlll+1;local JERICOFX_IlIIllIlIllIIlIlIl=JERICOFX_IIlllIllIIllllII(JERICOFX_lllIIllIIIIIllIIIl(JERICOFX_llllIIIlI,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIlIIlIIlll+JERICOFX_IIIIIllllllI-1),36)JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIlIIlIIlll+JERICOFX_IIIIIllllllI;return JERICOFX_IlIIllIlIllIIlIlIl end;JERICOFX_IIIIIllllllI=JERICOFX_llllllIlIlIl(JERICOFX_llllIIllllIIIIlIIIlIlI())JERICOFX_lIIIIIllIlIIIlIIIllIlIlI[1]=JERICOFX_IIIIIllllllI;while JERICOFX_IlIIlIIlIIlll<#JERICOFX_llllIIIlI do local JERICOFX_IlIIlIIlIIlll=JERICOFX_llllIIllllIIIIlIIIlIlI()if JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IlIIlIIlIIlll]then JERICOFX_IlIIllIlIllIIlIlIl=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IlIIlIIlIIlll]else JERICOFX_IlIIllIlIllIIlIlIl=JERICOFX_IIIIIllllllI..JERICOFX_lllIIllIIIIIllIIIl(JERICOFX_IIIIIllllllI,1,1)end;JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_lIllllll]=JERICOFX_IIIIIllllllI..JERICOFX_lllIIllIIIIIllIIIl(JERICOFX_IlIIllIlIllIIlIlIl,1,1)JERICOFX_lIIIIIllIlIIIlIIIllIlIlI[#JERICOFX_lIIIIIllIlIIIlIIIllIlIlI+1],JERICOFX_IIIIIllllllI,JERICOFX_lIllllll=JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_lIllllll+1 end;return table.concat(JERICOFX_lIIIIIllIlIIIlIIIllIlIlI)end;local JERICOFX_IIlllIllIIllllII=JERICOFX_lIllIIIIIIl('22Q22S27522S23827621I11131D1N1G111M216111G1X1I111A1G22S23E27617151M1M11191B27F22M1K18151T21J1B1H1A101Y1M1B1921E111C1D17181122S22Z276211101027L27N1G2181528928K1M22S23B27S27U27W27Y2802822842862881022S22P2761K1M1D27O22S25V27621F21921C21821W21421721E1X21W1Y21I21721521W21A1X21I2192132171Y21O21W21C21721W21I21121I1X2292152202AC27X27X191627G21W1D1221W1521W101127M181B1K2AP1J1C1B21W1N1118182B61729G1K1G21W1228C1921W1L1621W27F2B92BN1C152BF1D2BJ1G1M1T29H132BN2B527E11152BA1T2871M2BB2BD1G2AJ101B27O21W2AO181D27M21W1C112AQ1N2AT2BH151D1021W1B2AS2AU1K1B1B2C9101H2AW21W1J1D1G1C2BG27W2CO1G2BU2CO22M22523A27623A22O27622T2DL2752DP22U2762DU22S2DT2DP2DK27622V2DQ22S2DS27622U2312DW2DV2DV2DX22S2DZ2DR2E22DP2DN2E92E82DY2DU2E12752DZ2EG2E52E72EB2E02E52E32EC2DU29D2EN2EE2742EI2ES2DU2DP2752DT2752EH2EZ27521C29G131327G2132CJ28T28S29I27R27527T27V27X27Z1128128328528728928B28D28F28H28J112F52DU24426322S2F122S1N2C817112322DL22X22S2DN2G42DZ29D2F72EW2G822S2EM2GO22R2GI2E92302EI22S2E72G42762GF2GN2762332GQ2E92DN2H52H02EE2H72F92GO22S2FC1D2FE2FG2FI27O2FK27P2912FN2932FQ2962FU2992892HA22S2G62GP2752GB1H1M2GD2E72EN22Y2H62GK2F82E82FA29D2GR2DZ2742HD2752GT2EI2GW2HW2ER2E92E12GZ2E92HW2H6');local JERICOFX_IlIIlIIlIIlll=(bit or bit32);local JERICOFX_lIlIlIIlIIllIlIlIlI=JERICOFX_IlIIlIIlIIlll and JERICOFX_IlIIlIIlIIlll.bxor or function(JERICOFX_IlIIlIIlIIlll,JERICOFX_IIIIIllllllI)local JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_lIlIlIIlIIllIlIlIlI,JERICOFX_lllIIllIIIIIllIIIl=1,0,10 while JERICOFX_IlIIlIIlIIlll>0 and JERICOFX_IIIIIllllllI>0 do local JERICOFX_lIllllll,JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll%2,JERICOFX_IIIIIllllllI%2 if JERICOFX_lIllllll~=JERICOFX_lllIIllIIIIIllIIIl then JERICOFX_lIlIlIIlIIllIlIlIlI=JERICOFX_lIlIlIIlIIllIlIlIlI+JERICOFX_IlIIllIlIllIIlIlIl end JERICOFX_IlIIlIIlIIlll,JERICOFX_IIIIIllllllI,JERICOFX_IlIIllIlIllIIlIlIl=(JERICOFX_IlIIlIIlIIlll-JERICOFX_lIllllll)/2,(JERICOFX_IIIIIllllllI-JERICOFX_lllIIllIIIIIllIIIl)/2,JERICOFX_IlIIllIlIllIIlIlIl*2 end if JERICOFX_IlIIlIIlIIlll<JERICOFX_IIIIIllllllI then JERICOFX_IlIIlIIlIIlll=JERICOFX_IIIIIllllllI end while JERICOFX_IlIIlIIlIIlll>0 do local JERICOFX_IIIIIllllllI=JERICOFX_IlIIlIIlIIlll%2 if JERICOFX_IIIIIllllllI>0 then JERICOFX_lIlIlIIlIIllIlIlIlI=JERICOFX_lIlIlIIlIIllIlIlIlI+JERICOFX_IlIIllIlIllIIlIlIl end JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIllIlIllIIlIlIl=(JERICOFX_IlIIlIIlIIlll-JERICOFX_IIIIIllllllI)/2,JERICOFX_IlIIllIlIllIIlIlIl*2 end return JERICOFX_lIlIlIIlIIllIlIlIlI end local function JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_IIIIIllllllI,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIllIlIllIIlIlIl)if JERICOFX_IlIIllIlIllIIlIlIl then local JERICOFX_IlIIlIIlIIlll=(JERICOFX_IIIIIllllllI/2^(JERICOFX_IlIIlIIlIIlll-1))%2^((JERICOFX_IlIIllIlIllIIlIlIl-1)-(JERICOFX_IlIIlIIlIIlll-1)+1);return JERICOFX_IlIIlIIlIIlll-JERICOFX_IlIIlIIlIIlll%1;else local JERICOFX_IlIIlIIlIIlll=2^(JERICOFX_IlIIlIIlIIlll-1);return(JERICOFX_IIIIIllllllI%(JERICOFX_IlIIlIIlIIlll+JERICOFX_IlIIlIIlIIlll)>=JERICOFX_IlIIlIIlIIlll)and 1 or 0;end;end;local JERICOFX_IlIIlIIlIIlll=1;local function JERICOFX_IIIIIllllllI()local JERICOFX_lllIIllIIIIIllIIIl,JERICOFX_lIllllll,JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_IIIIIllllllI=JERICOFX_llllIIllllIIIIlIIIlIlI(JERICOFX_IIlllIllIIllllII,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIlIIlIIlll+3);JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_lIlIlIIlIIllIlIlIlI(JERICOFX_lllIIllIIIIIllIIIl,100)JERICOFX_lIllllll=JERICOFX_lIlIlIIlIIllIlIlIlI(JERICOFX_lIllllll,100)JERICOFX_IlIIllIlIllIIlIlIl=JERICOFX_lIlIlIIlIIllIlIlIlI(JERICOFX_IlIIllIlIllIIlIlIl,100)JERICOFX_IIIIIllllllI=JERICOFX_lIlIlIIlIIllIlIlIlI(JERICOFX_IIIIIllllllI,100)JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIlIIlIIlll+4;return(JERICOFX_IIIIIllllllI*16777216)+(JERICOFX_IlIIllIlIllIIlIlIl*65536)+(JERICOFX_lIllllll*256)+JERICOFX_lllIIllIIIIIllIIIl;end;local function JERICOFX_llllIIIlI()local JERICOFX_IIIIIllllllI=JERICOFX_lIlIlIIlIIllIlIlIlI(JERICOFX_llllIIllllIIIIlIIIlIlI(JERICOFX_IIlllIllIIllllII,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIlIIlIIlll),100);JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIlIIlIIlll+1;return JERICOFX_IIIIIllllllI;end;local function JERICOFX_lIllllll()local JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_IIIIIllllllI=JERICOFX_llllIIllllIIIIlIIIlIlI(JERICOFX_IIlllIllIIllllII,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIlIIlIIlll+2);JERICOFX_IlIIllIlIllIIlIlIl=JERICOFX_lIlIlIIlIIllIlIlIlI(JERICOFX_IlIIllIlIllIIlIlIl,100)JERICOFX_IIIIIllllllI=JERICOFX_lIlIlIIlIIllIlIlIlI(JERICOFX_IIIIIllllllI,100)JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIlIIlIIlll+2;return(JERICOFX_IIIIIllllllI*256)+JERICOFX_IlIIllIlIllIIlIlIl;end;local function JERICOFX_IllIlIIlI()local JERICOFX_IlIIlIIlIIlll=JERICOFX_IIIIIllllllI();local JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI();local JERICOFX_lllIIllIIIIIllIIIl=1;local JERICOFX_lIlIlIIlIIllIlIlIlI=(JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_IIIIIllllllI,1,20)*(2^32))+JERICOFX_IlIIlIIlIIlll;local JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_IIIIIllllllI,21,31);local JERICOFX_IIIIIllllllI=((-1)^JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_IIIIIllllllI,32));if(JERICOFX_IlIIlIIlIIlll==0)then if(JERICOFX_lIlIlIIlIIllIlIlIlI==0)then return JERICOFX_IIIIIllllllI*0;else JERICOFX_IlIIlIIlIIlll=1;JERICOFX_lllIIllIIIIIllIIIl=0;end;elseif(JERICOFX_IlIIlIIlIIlll==2047)then return(JERICOFX_lIlIlIIlIIllIlIlIlI==0)and(JERICOFX_IIIIIllllllI*(1/0))or(JERICOFX_IIIIIllllllI*(0/0));end;return JERICOFX_lIIllIIlIllIIlll(JERICOFX_IIIIIllllllI,JERICOFX_IlIIlIIlIIlll-1023)*(JERICOFX_lllIIllIIIIIllIIIl+(JERICOFX_lIlIlIIlIIllIlIlIlI/(2^52)));end;local JERICOFX_lIIllIIlIllIIlll=JERICOFX_IIIIIllllllI;local function JERICOFX_lIllIIIIIIl(JERICOFX_IIIIIllllllI)local JERICOFX_IlIIllIlIllIIlIlIl;if(not JERICOFX_IIIIIllllllI)then JERICOFX_IIIIIllllllI=JERICOFX_lIIllIIlIllIIlll();if(JERICOFX_IIIIIllllllI==0)then return'';end;end;JERICOFX_IlIIllIlIllIIlIlIl=JERICOFX_lllIIllIIIIIllIIIl(JERICOFX_IIlllIllIIllllII,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIlIIlIIlll+JERICOFX_IIIIIllllllI-1);JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIlIIlIIlll+JERICOFX_IIIIIllllllI;local JERICOFX_IIIIIllllllI={}for JERICOFX_IlIIlIIlIIlll=1,#JERICOFX_IlIIllIlIllIIlIlIl do JERICOFX_IIIIIllllllI[JERICOFX_IlIIlIIlIIlll]=JERICOFX_llllllIlIlIl(JERICOFX_lIlIlIIlIIllIlIlIlI(JERICOFX_llllIIllllIIIIlIIIlIlI(JERICOFX_lllIIllIIIIIllIIIl(JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_IlIIlIIlIIlll,JERICOFX_IlIIlIIlIIlll)),100))end return JERICOFX_lllIIllllI(JERICOFX_IIIIIllllllI);end;local JERICOFX_IlIIlIIlIIlll=JERICOFX_IIIIIllllllI;local function JERICOFX_lllIIllllI(...)return{...},JERICOFX_lllllIlllllIIIIIIlIllIIII('#',...)end local function JERICOFX_lIIllIIlIllIIlll()local JERICOFX_llllllIlIlIl={};local JERICOFX_IIlllIllIIllllII={};local JERICOFX_IlIIlIIlIIlll={};local JERICOFX_llllIIllllIIIIlIIIlIlI={[#{"1 + 1 = 111";"1 + 1 = 111";}]=JERICOFX_IIlllIllIIllllII,[#{{66;115;453;889};{891;911;110;662};"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=JERICOFX_IlIIlIIlIIlll,[#{"1 + 1 = 111";}]=JERICOFX_llllllIlIlIl,};local JERICOFX_IlIIlIIlIIlll=JERICOFX_IIIIIllllllI()local JERICOFX_lllIIllIIIIIllIIIl={}for JERICOFX_IlIIllIlIllIIlIlIl=1,JERICOFX_IlIIlIIlIIlll do local JERICOFX_IIIIIllllllI=JERICOFX_llllIIIlI();local JERICOFX_IlIIlIIlIIlll;if(JERICOFX_IIIIIllllllI==2)then JERICOFX_IlIIlIIlIIlll=(JERICOFX_llllIIIlI()~=0);elseif(JERICOFX_IIIIIllllllI==1)then JERICOFX_IlIIlIIlIIlll=JERICOFX_IllIlIIlI();elseif(JERICOFX_IIIIIllllllI==0)then JERICOFX_IlIIlIIlIIlll=JERICOFX_lIllIIIIIIl();end;JERICOFX_lllIIllIIIIIllIIIl[JERICOFX_IlIIllIlIllIIlIlIl]=JERICOFX_IlIIlIIlIIlll;end;for JERICOFX_llllIIllllIIIIlIIIlIlI=1,JERICOFX_IIIIIllllllI()do local JERICOFX_IlIIlIIlIIlll=JERICOFX_llllIIIlI();if(JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_IlIIlIIlIIlll,1,1)==0)then local JERICOFX_lIlIlIIlIIllIlIlIlI=JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_IlIIlIIlIIlll,2,3);local JERICOFX_lIIIIIllIlIIIlIIIllIlIlI=JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_IlIIlIIlIIlll,4,6);local JERICOFX_IlIIlIIlIIlll={JERICOFX_lIllllll(),JERICOFX_lIllllll(),nil,nil};if(JERICOFX_lIlIlIIlIIllIlIlIlI==0)then JERICOFX_IlIIlIIlIIlll[3]=JERICOFX_lIllllll();JERICOFX_IlIIlIIlIIlll[4]=JERICOFX_lIllllll();elseif(JERICOFX_lIlIlIIlIIllIlIlIlI==1)then JERICOFX_IlIIlIIlIIlll[3]=JERICOFX_IIIIIllllllI();elseif(JERICOFX_lIlIlIIlIIllIlIlIlI==2)then JERICOFX_IlIIlIIlIIlll[3]=JERICOFX_IIIIIllllllI()-(2^16)elseif(JERICOFX_lIlIlIIlIIllIlIlIlI==3)then JERICOFX_IlIIlIIlIIlll[3]=JERICOFX_IIIIIllllllI()-(2^16)JERICOFX_IlIIlIIlIIlll[4]=JERICOFX_lIllllll();end;if(JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_lIIIIIllIlIIIlIIIllIlIlI,1,1)==1)then JERICOFX_IlIIlIIlIIlll[2]=JERICOFX_lllIIllIIIIIllIIIl[JERICOFX_IlIIlIIlIIlll[2]]end if(JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_lIIIIIllIlIIIlIIIllIlIlI,2,2)==1)then JERICOFX_IlIIlIIlIIlll[3]=JERICOFX_lllIIllIIIIIllIIIl[JERICOFX_IlIIlIIlIIlll[3]]end if(JERICOFX_IlIIllIlIllIIlIlIl(JERICOFX_lIIIIIllIlIIIlIIIllIlIlI,3,3)==1)then JERICOFX_IlIIlIIlIIlll[4]=JERICOFX_lllIIllIIIIIllIIIl[JERICOFX_IlIIlIIlIIlll[4]]end JERICOFX_llllllIlIlIl[JERICOFX_llllIIllllIIIIlIIIlIlI]=JERICOFX_IlIIlIIlIIlll;end end;for JERICOFX_IlIIlIIlIIlll=1,JERICOFX_IIIIIllllllI()do JERICOFX_IIlllIllIIllllII[JERICOFX_IlIIlIIlIIlll-1]=JERICOFX_lIIllIIlIllIIlll();end;JERICOFX_llllIIllllIIIIlIIIlIlI[3]=JERICOFX_llllIIIlI();return JERICOFX_llllIIllllIIIIlIIIlIlI;end;local function JERICOFX_llllIIIlI(JERICOFX_IlIIlIIlIIlll,JERICOFX_IIIIIllllllI,JERICOFX_lIllllll)JERICOFX_IlIIlIIlIIlll=(JERICOFX_IlIIlIIlIIlll==true and JERICOFX_lIIllIIlIllIIlll())or JERICOFX_IlIIlIIlIIlll;return(function(...)local JERICOFX_lIlIlIIlIIllIlIlIlI=JERICOFX_IlIIlIIlIIlll[1];local JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[3];local JERICOFX_llllIIllllIIIIlIIIlIlI=JERICOFX_IlIIlIIlIIlll[2];local JERICOFX_IlIIlIIlIIlll=JERICOFX_lllIIllllI local JERICOFX_IIIIIllllllI=1;local JERICOFX_IlIIlIIlIIlll=-1;local JERICOFX_lIIllIIlIllIIlll={};local JERICOFX_IIlllIllIIllllII={...};local JERICOFX_llllllIlIlIl=JERICOFX_lllllIlllllIIIIIIlIllIIII('#',...)-1;local JERICOFX_IlIIlIIlIIlll={};local JERICOFX_IlIIllIlIllIIlIlIl={};for JERICOFX_IlIIlIIlIIlll=0,JERICOFX_llllllIlIlIl do if(JERICOFX_IlIIlIIlIIlll>=JERICOFX_lllIIllIIIIIllIIIl)then JERICOFX_lIIllIIlIllIIlll[JERICOFX_IlIIlIIlIIlll-JERICOFX_lllIIllIIIIIllIIIl]=JERICOFX_IIlllIllIIllllII[JERICOFX_IlIIlIIlIIlll+1];else JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll]=JERICOFX_IIlllIllIIllllII[JERICOFX_IlIIlIIlIIlll+#{"1 + 1 = 111";}];end;end;local JERICOFX_IlIIlIIlIIlll=JERICOFX_llllllIlIlIl-JERICOFX_lllIIllIIIIIllIIIl+1 local JERICOFX_IlIIlIIlIIlll;local JERICOFX_lllIIllIIIIIllIIIl;while true do JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[1];if JERICOFX_lllIIllIIIIIllIIIl<=8 then if JERICOFX_lllIIllIIIIIllIIIl<=3 then if JERICOFX_lllIIllIIIIIllIIIl<=1 then if JERICOFX_lllIIllIIIIIllIIIl>0 then JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];else local JERICOFX_lllIIllIIIIIllIIIl;JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl](JERICOFX_lIIIIIllIlIIIlIIIllIlIlI(JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_lllIIllIIIIIllIIIl+1,JERICOFX_IlIIlIIlIIlll[3]))JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl](JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl+1])JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];end;elseif JERICOFX_lllIIllIIIIIllIIIl==2 then do return end;else local JERICOFX_lllIIllIIIIIllIIIl;JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl](JERICOFX_lIIIIIllIlIIIlIIIllIlIlI(JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_lllIIllIIIIIllIIIl+1,JERICOFX_IlIIlIIlIIlll[3]))JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl](JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl+1])JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];do return end;end;elseif JERICOFX_lllIIllIIIIIllIIIl<=5 then if JERICOFX_lllIIllIIIIIllIIIl==4 then local JERICOFX_lllIIllIIIIIllIIIl;JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl](JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl+1])JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];else JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_llllIIIlI(JERICOFX_llllIIllllIIIIlIIIlIlI[JERICOFX_IlIIlIIlIIlll[3]],nil,JERICOFX_lIllllll);end;elseif JERICOFX_lllIIllIIIIIllIIIl<=6 then JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];elseif JERICOFX_lllIIllIIIIIllIIIl>7 then JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];else do return end;end;elseif JERICOFX_lllIIllIIIIIllIIIl<=13 then if JERICOFX_lllIIllIIIIIllIIIl<=10 then if JERICOFX_lllIIllIIIIIllIIIl==9 then JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_llllIIIlI(JERICOFX_llllIIllllIIIIlIIIlIlI[JERICOFX_IlIIlIIlIIlll[3]],nil,JERICOFX_lIllllll);else local JERICOFX_IIIIIllllllI=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IIIIIllllllI](JERICOFX_lIIIIIllIlIIIlIIIllIlIlI(JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_IIIIIllllllI+1,JERICOFX_IlIIlIIlIIlll[3]))end;elseif JERICOFX_lllIIllIIIIIllIIIl<=11 then local JERICOFX_IIIIIllllllI=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IIIIIllllllI](JERICOFX_lIIIIIllIlIIIlIIIllIlIlI(JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_IIIIIllllllI+1,JERICOFX_IlIIlIIlIIlll[3]))elseif JERICOFX_lllIIllIIIIIllIIIl==12 then JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];else local JERICOFX_lllIIllIIIIIllIIIl;JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl](JERICOFX_lIIIIIllIlIIIlIIIllIlIlI(JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_lllIIllIIIIIllIIIl+1,JERICOFX_IlIIlIIlIIlll[3]))JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];do return end;end;elseif JERICOFX_lllIIllIIIIIllIIIl<=15 then if JERICOFX_lllIIllIIIIIllIIIl>14 then JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];else local JERICOFX_lllIIllIIIIIllIIIl;JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIlIIlIIlll[3];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_lIllllll[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];JERICOFX_lllIIllIIIIIllIIIl=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_lllIIllIIIIIllIIIl](JERICOFX_lIIIIIllIlIIIlIIIllIlIlI(JERICOFX_IlIIllIlIllIIlIlIl,JERICOFX_lllIIllIIIIIllIIIl+1,JERICOFX_IlIIlIIlIIlll[3]))JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;JERICOFX_IlIIlIIlIIlll=JERICOFX_lIlIlIIlIIllIlIlIlI[JERICOFX_IIIIIllllllI];do return end;end;elseif JERICOFX_lllIIllIIIIIllIIIl<=16 then local JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll](JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll+1])elseif JERICOFX_lllIIllIIIIIllIIIl>17 then JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[2]]=JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll[3]];else local JERICOFX_IlIIlIIlIIlll=JERICOFX_IlIIlIIlIIlll[2]JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll](JERICOFX_IlIIllIlIllIIlIlIl[JERICOFX_IlIIlIIlIIlll+1])end;JERICOFX_IIIIIllllllI=JERICOFX_IIIIIllllllI+1;end;end);end;return JERICOFX_llllIIIlI(true,{},JERICOFX_lllIlIlIlIlIIlIlIIllI())();end)(string.byte,table.insert,setmetatable);
