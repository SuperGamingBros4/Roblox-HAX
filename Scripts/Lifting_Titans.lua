return(function(MEMZ_IIIllIIIlllIllllIIlIll,MEMZ_IllIlIllI,MEMZ_IIllIllIllI)local MEMZ_lIIIlIllllllIll=string.char;local MEMZ_lIlIlllIlIlIlIIIlllIllIIl=string.sub;local MEMZ_IIlIlIllIlIIIIl=table.concat;local MEMZ_IIIlIlIlIIl=math.ldexp;local MEMZ_lllllIllIlIIlIl=getfenv or function()return _ENV end;local MEMZ_IIIIIIllIllI=select;local MEMZ_IlIllIIIllllIIlIIlll=unpack or table.unpack;local MEMZ_IlIlIlllIlIllIIIl=tonumber;local function MEMZ_IllIIIlIIlllllIll(MEMZ_lIIIlIllIIlllIllllIllIIII)local MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_lIlIIllIlIIIllI,MEMZ_lIllIIllIll="","",{}local MEMZ_lIlIlIlIIlI=256;local MEMZ_IlIllIIIllllIIlIIlll={}for MEMZ_IllIlIllI=0,MEMZ_lIlIlIlIIlI-1 do MEMZ_IlIllIIIllllIIlIIlll[MEMZ_IllIlIllI]=MEMZ_lIIIlIllllllIll(MEMZ_IllIlIllI)end;local MEMZ_IllIlIllI=1;local function MEMZ_IIIllIIIlllIllllIIlIll()local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IlIlIlllIlIllIIIl(MEMZ_lIlIlllIlIlIlIIIlllIllIIl(MEMZ_lIIIlIllIIlllIllllIllIIII,MEMZ_IllIlIllI,MEMZ_IllIlIllI),36)MEMZ_IllIlIllI=MEMZ_IllIlIllI+1;local MEMZ_lIlIIllIlIIIllI=MEMZ_IlIlIlllIlIllIIIl(MEMZ_lIlIlllIlIlIlIIIlllIllIIl(MEMZ_lIIIlIllIIlllIllllIllIIII,MEMZ_IllIlIllI,MEMZ_IllIlIllI+MEMZ_llllllIIlllllIlIlIlIIlll-1),36)MEMZ_IllIlIllI=MEMZ_IllIlIllI+MEMZ_llllllIIlllllIlIlIlIIlll;return MEMZ_lIlIIllIlIIIllI end;MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_lIIIlIllllllIll(MEMZ_IIIllIIIlllIllllIIlIll())MEMZ_lIllIIllIll[1]=MEMZ_llllllIIlllllIlIlIlIIlll;while MEMZ_IllIlIllI<#MEMZ_lIIIlIllIIlllIllllIllIIII do local MEMZ_IllIlIllI=MEMZ_IIIllIIIlllIllllIIlIll()if MEMZ_IlIllIIIllllIIlIIlll[MEMZ_IllIlIllI]then MEMZ_lIlIIllIlIIIllI=MEMZ_IlIllIIIllllIIlIIlll[MEMZ_IllIlIllI]else MEMZ_lIlIIllIlIIIllI=MEMZ_llllllIIlllllIlIlIlIIlll..MEMZ_lIlIlllIlIlIlIIIlllIllIIl(MEMZ_llllllIIlllllIlIlIlIIlll,1,1)end;MEMZ_IlIllIIIllllIIlIIlll[MEMZ_lIlIlIlIIlI]=MEMZ_llllllIIlllllIlIlIlIIlll..MEMZ_lIlIlllIlIlIlIIIlllIllIIl(MEMZ_lIlIIllIlIIIllI,1,1)MEMZ_lIllIIllIll[#MEMZ_lIllIIllIll+1],MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_lIlIlIlIIlI=MEMZ_lIlIIllIlIIIllI,MEMZ_lIlIIllIlIIIllI,MEMZ_lIlIlIlIIlI+1 end;return table.concat(MEMZ_lIllIIllIll)end;local MEMZ_IlIlIlllIlIllIIIl=MEMZ_IllIIIlIIlllllIll('22G21T27521U21X27521T2121W21821021U2232791621021H1I21021F21J2141Y27E2282791J21021D21927P1W21H2102111I21H21A21F1W21227E21Y27T21021821A28021E21U28A27528821H28821B21J21U2212791021G2841D21421321H21V21T28P28R28T21A27L21921921U2292791K21E27M1821B21D28T27L27N27P27E27G27529E29G21H1321027B21B28H2791Y21A21B21B2101Y21H21U22029W28521A28T2142A021U21Z29W21F21027Z27E2AD2752AF21E21G27D27F2792831W21F28021F1621G21429V27527L21H1228527E2992B021021B2111F28E28W27Y21H21429Y21U21W2791L21421H21927E22527929E21E21H21F21G2A22BG21B28G2782751L21021L2A322S2791921A27D22P21421E22P28S28U28W21H23122P1W2B922P142CN2CD2CF29329529728Q2751521G2862BF2BH28Z2752342352AZ21T1328T28421B23421U2D321T1E21623527922B2BQ27521S27922P27927928Z22B27528Z21U2DR2DR28Z28Z2DQ2DY2782DU21T2DO2BJ2DY2DO2DO28Z2DJ2E621T2AD28A2E52E72DY2EE2EB21T2352262EE28Q2EH22H2EL2DP2DN2EE2DT27621T2A52E929021T2E12EW2DO27G2E22EA21T2222F422J2F32DY2FC2DO2DX2DO22B22F2EE2DM21T22P22C2EU2242EF22D2F42EU2DO21T2302EK27522R2EX2FW2FL2FW2FO2FQ2FW28Z2FT21Z2FV2DX28Z2FA2FZ2G121T2BJ2E02G52EZ2G82EZ2DX2272DR2782FY2DR2GF2EE2E52DX2GP2F32GR2GT2FW2DY2GX2FK2EZ2GV2G92DX2DX2EP22P2DU2HC21T2992E52BJ27S2DY2AJ21T2782ED2AD2DU22A2EN2752AD2FV2FR2HR21T2FM22E2HV2EF21T2ET2742792DX2AD2GV2792GV2DX2752F129028I21T1A21021K2B321127E2C121T2CP2AN2772C82CA28927928K28M28O2CW21T2CG21A28V28X21V21S2DW2IF2IS2B92912752J52CU22V2DP27S2DF2H82F32DF2E22HH2DO2JQ2H22I52GN2FI2HP2E221T2DU2FK2FM28Z2IR21T22W2FW2EM2G92GM2BJ22V22L2FW2EP2DO2AD21X2JZ2KG2K02K32HP2DR2K72GG2FW2EO2FW2BJ28A2KJ2DK2GY2KN2K52KQ2G42KT28Z2BJ2AD2KA2ID2KM2JO2DP2FR2JR2FP2LD2F328Q21Z2322FW2742JX2KX2752LM2JY2792C72K22FW2L12K82FW2L828Z2A52KD2FW2G32KH2LR2G22KZ2LV2KP2LX2EC2EP2M021T2KW2JZ2LT2LA2K42MA2KR2MC2FW2A52AJ22Z2L92EK21V2IJ2IV27521I1W2BM21T2632602N32N326G23I2D72J02B82J22922CH2J821S2AC2791E21B2J72A329M21T172142AF29I21J27M2E52LA2EW27522B2A52EM2792G32DV2FW21Z22M2792IB2EE2LO2I52DO2OA27S2LU2EZ2792K72EW2E12FR2H422V2B621T2BQ2EJ2OA2OQ2M62MS22T2G12G92DR2L72ED27928I22X2DS2O92JZ2NW2MR2NW2EK2MV2IR2MY2N02N22N42602N62N827J2J12JF2J42CT2102962J92MW21T2CU2AP2752NO2NQ27M2NS21F2NU2G62PA2NY2G42O12P528Z2O52O72EU2OA2O82OD2M82OG2752OI2G42OY2792782ON2792OT2BJ2OS2P62F221T2OW2EK2QM2HW2FP2P12752P32P52OC2P72EE21T2P92R82G1');local MEMZ_IllIlIllI=(bit or bit32);local MEMZ_lIllIIllIll=MEMZ_IllIlIllI and MEMZ_IllIlIllI.bxor or function(MEMZ_IllIlIllI,MEMZ_llllllIIlllllIlIlIlIIlll)local MEMZ_lIlIIllIlIIIllI,MEMZ_lIllIIllIll,MEMZ_lIlIlllIlIlIlIIIlllIllIIl=1,0,10 while MEMZ_IllIlIllI>0 and MEMZ_llllllIIlllllIlIlIlIIlll>0 do local MEMZ_lIlIlIlIIlI,MEMZ_lIlIlllIlIlIlIIIlllIllIIl=MEMZ_IllIlIllI%2,MEMZ_llllllIIlllllIlIlIlIIlll%2 if MEMZ_lIlIlIlIIlI~=MEMZ_lIlIlllIlIlIlIIIlllIllIIl then MEMZ_lIllIIllIll=MEMZ_lIllIIllIll+MEMZ_lIlIIllIlIIIllI end MEMZ_IllIlIllI,MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_lIlIIllIlIIIllI=(MEMZ_IllIlIllI-MEMZ_lIlIlIlIIlI)/2,(MEMZ_llllllIIlllllIlIlIlIIlll-MEMZ_lIlIlllIlIlIlIIIlllIllIIl)/2,MEMZ_lIlIIllIlIIIllI*2 end if MEMZ_IllIlIllI<MEMZ_llllllIIlllllIlIlIlIIlll then MEMZ_IllIlIllI=MEMZ_llllllIIlllllIlIlIlIIlll end while MEMZ_IllIlIllI>0 do local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI%2 if MEMZ_llllllIIlllllIlIlIlIIlll>0 then MEMZ_lIllIIllIll=MEMZ_lIllIIllIll+MEMZ_lIlIIllIlIIIllI end MEMZ_IllIlIllI,MEMZ_lIlIIllIlIIIllI=(MEMZ_IllIlIllI-MEMZ_llllllIIlllllIlIlIlIIlll)/2,MEMZ_lIlIIllIlIIIllI*2 end return MEMZ_lIllIIllIll end local function MEMZ_lIlIIllIlIIIllI(MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_IllIlIllI,MEMZ_lIlIIllIlIIIllI)if MEMZ_lIlIIllIlIIIllI then local MEMZ_IllIlIllI=(MEMZ_llllllIIlllllIlIlIlIIlll/2^(MEMZ_IllIlIllI-1))%2^((MEMZ_lIlIIllIlIIIllI-1)-(MEMZ_IllIlIllI-1)+1);return MEMZ_IllIlIllI-MEMZ_IllIlIllI%1;else local MEMZ_IllIlIllI=2^(MEMZ_IllIlIllI-1);return(MEMZ_llllllIIlllllIlIlIlIIlll%(MEMZ_IllIlIllI+MEMZ_IllIlIllI)>=MEMZ_IllIlIllI)and 1 or 0;end;end;local MEMZ_IllIlIllI=1;local function MEMZ_llllllIIlllllIlIlIlIIlll()local MEMZ_lIlIlIlIIlI,MEMZ_lIlIlllIlIlIlIIIlllIllIIl,MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_lIlIIllIlIIIllI=MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_IlIlIlllIlIllIIIl,MEMZ_IllIlIllI,MEMZ_IllIlIllI+3);MEMZ_lIlIlIlIIlI=MEMZ_lIllIIllIll(MEMZ_lIlIlIlIIlI,65)MEMZ_lIlIlllIlIlIlIIIlllIllIIl=MEMZ_lIllIIllIll(MEMZ_lIlIlllIlIlIlIIIlllIllIIl,65)MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_lIllIIllIll(MEMZ_llllllIIlllllIlIlIlIIlll,65)MEMZ_lIlIIllIlIIIllI=MEMZ_lIllIIllIll(MEMZ_lIlIIllIlIIIllI,65)MEMZ_IllIlIllI=MEMZ_IllIlIllI+4;return(MEMZ_lIlIIllIlIIIllI*16777216)+(MEMZ_llllllIIlllllIlIlIlIIlll*65536)+(MEMZ_lIlIlllIlIlIlIIIlllIllIIl*256)+MEMZ_lIlIlIlIIlI;end;local function MEMZ_lIIIlIllIIlllIllllIllIIII()local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_lIllIIllIll(MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_IlIlIlllIlIllIIIl,MEMZ_IllIlIllI,MEMZ_IllIlIllI),65);MEMZ_IllIlIllI=MEMZ_IllIlIllI+1;return MEMZ_llllllIIlllllIlIlIlIIlll;end;local function MEMZ_lIlIlIlIIlI()local MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_lIlIIllIlIIIllI=MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_IlIlIlllIlIllIIIl,MEMZ_IllIlIllI,MEMZ_IllIlIllI+2);MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_lIllIIllIll(MEMZ_llllllIIlllllIlIlIlIIlll,65)MEMZ_lIlIIllIlIIIllI=MEMZ_lIllIIllIll(MEMZ_lIlIIllIlIIIllI,65)MEMZ_IllIlIllI=MEMZ_IllIlIllI+2;return(MEMZ_lIlIIllIlIIIllI*256)+MEMZ_llllllIIlllllIlIlIlIIlll;end;local function MEMZ_IlIlIIIllIIIlIIllIlIllII()local MEMZ_IllIlIllI=MEMZ_llllllIIlllllIlIlIlIIlll();local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll();local MEMZ_lIlIlllIlIlIlIIIlllIllIIl=1;local MEMZ_lIllIIllIll=(MEMZ_lIlIIllIlIIIllI(MEMZ_llllllIIlllllIlIlIlIIlll,1,20)*(2^32))+MEMZ_IllIlIllI;local MEMZ_IllIlIllI=MEMZ_lIlIIllIlIIIllI(MEMZ_llllllIIlllllIlIlIlIIlll,21,31);local MEMZ_llllllIIlllllIlIlIlIIlll=((-1)^MEMZ_lIlIIllIlIIIllI(MEMZ_llllllIIlllllIlIlIlIIlll,32));if(MEMZ_IllIlIllI==0)then if(MEMZ_lIllIIllIll==0)then return MEMZ_llllllIIlllllIlIlIlIIlll*0;else MEMZ_IllIlIllI=1;MEMZ_lIlIlllIlIlIlIIIlllIllIIl=0;end;elseif(MEMZ_IllIlIllI==2047)then return(MEMZ_lIllIIllIll==0)and(MEMZ_llllllIIlllllIlIlIlIIlll*(1/0))or(MEMZ_llllllIIlllllIlIlIlIIlll*(0/0));end;return MEMZ_IIIlIlIlIIl(MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_IllIlIllI-1023)*(MEMZ_lIlIlllIlIlIlIIIlllIllIIl+(MEMZ_lIllIIllIll/(2^52)));end;local MEMZ_IIIlIlIlIIl=MEMZ_llllllIIlllllIlIlIlIIlll;local function MEMZ_IllIIIlIIlllllIll(MEMZ_llllllIIlllllIlIlIlIIlll)local MEMZ_lIlIIllIlIIIllI;if(not MEMZ_llllllIIlllllIlIlIlIIlll)then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IIIlIlIlIIl();if(MEMZ_llllllIIlllllIlIlIlIIlll==0)then return'';end;end;MEMZ_lIlIIllIlIIIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl(MEMZ_IlIlIlllIlIllIIIl,MEMZ_IllIlIllI,MEMZ_IllIlIllI+MEMZ_llllllIIlllllIlIlIlIIlll-1);MEMZ_IllIlIllI=MEMZ_IllIlIllI+MEMZ_llllllIIlllllIlIlIlIIlll;local MEMZ_llllllIIlllllIlIlIlIIlll={}for MEMZ_IllIlIllI=1,#MEMZ_lIlIIllIlIIIllI do MEMZ_llllllIIlllllIlIlIlIIlll[MEMZ_IllIlIllI]=MEMZ_lIIIlIllllllIll(MEMZ_lIllIIllIll(MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_lIlIlllIlIlIlIIIlllIllIIl(MEMZ_lIlIIllIlIIIllI,MEMZ_IllIlIllI,MEMZ_IllIlIllI)),65))end return MEMZ_IIlIlIllIlIIIIl(MEMZ_llllllIIlllllIlIlIlIIlll);end;local MEMZ_IllIlIllI=MEMZ_llllllIIlllllIlIlIlIIlll;local function MEMZ_IIIlIlIlIIl(...)return{...},MEMZ_IIIIIIllIllI('#',...)end local function MEMZ_lIIIlIllllllIll()local MEMZ_IlIlIlllIlIllIIIl={};local MEMZ_IIIllIIIlllIllllIIlIll={};local MEMZ_IllIlIllI={};local MEMZ_IIIIIIllIllI={[#{"1 + 1 = 111";{557;221;349;956};}]=MEMZ_IIIllIIIlllIllllIIlIll,[#{{943;782;155;796};"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{197;462;699;82};}]=MEMZ_IllIlIllI,[#{{808;978;816;977};}]=MEMZ_IlIlIlllIlIllIIIl,};local MEMZ_IllIlIllI=MEMZ_llllllIIlllllIlIlIlIIlll()local MEMZ_lIlIlllIlIlIlIIIlllIllIIl={}for MEMZ_lIlIIllIlIIIllI=1,MEMZ_IllIlIllI do local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_lIIIlIllIIlllIllllIllIIII();local MEMZ_IllIlIllI;if(MEMZ_llllllIIlllllIlIlIlIIlll==2)then MEMZ_IllIlIllI=(MEMZ_lIIIlIllIIlllIllllIllIIII()~=0);elseif(MEMZ_llllllIIlllllIlIlIlIIlll==0)then MEMZ_IllIlIllI=MEMZ_IlIlIIIllIIIlIIllIlIllII();elseif(MEMZ_llllllIIlllllIlIlIlIIlll==3)then MEMZ_IllIlIllI=MEMZ_IllIIIlIIlllllIll();end;MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_lIlIIllIlIIIllI]=MEMZ_IllIlIllI;end;for MEMZ_IIIllIIIlllIllllIIlIll=1,MEMZ_llllllIIlllllIlIlIlIIlll()do local MEMZ_IllIlIllI=MEMZ_lIIIlIllIIlllIllllIllIIII();if(MEMZ_lIlIIllIlIIIllI(MEMZ_IllIlIllI,1,1)==0)then local MEMZ_lIllIIllIll=MEMZ_lIlIIllIlIIIllI(MEMZ_IllIlIllI,2,3);local MEMZ_IlIllIIIllllIIlIIlll=MEMZ_lIlIIllIlIIIllI(MEMZ_IllIlIllI,4,6);local MEMZ_IllIlIllI={MEMZ_lIlIlIlIIlI(),MEMZ_lIlIlIlIIlI(),nil,nil};if(MEMZ_lIllIIllIll==0)then MEMZ_IllIlIllI[#("1qI")]=MEMZ_lIlIlIlIIlI();MEMZ_IllIlIllI[#{"1 + 1 = 111";{155;194;361;380};{450;804;580;240};"1 + 1 = 111";}]=MEMZ_lIlIlIlIIlI();elseif(MEMZ_lIllIIllIll==1)then MEMZ_IllIlIllI[#("UB4")]=MEMZ_llllllIIlllllIlIlIlIIlll();elseif(MEMZ_lIllIIllIll==2)then MEMZ_IllIlIllI[#("UGu")]=MEMZ_llllllIIlllllIlIlIlIIlll()-(2^16)elseif(MEMZ_lIllIIllIll==3)then MEMZ_IllIlIllI[#("7dN")]=MEMZ_llllllIIlllllIlIlIlIIlll()-(2^16)MEMZ_IllIlIllI[#("Kr0t")]=MEMZ_lIlIlIlIIlI();end;if(MEMZ_lIlIIllIlIIIllI(MEMZ_IlIllIIIllllIIlIIlll,1,1)==1)then MEMZ_IllIlIllI[#("Sr")]=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_IllIlIllI[#("JA")]]end if(MEMZ_lIlIIllIlIIIllI(MEMZ_IlIllIIIllllIIlIIlll,2,2)==1)then MEMZ_IllIlIllI[#("2GX")]=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_IllIlIllI[#("6hv")]]end if(MEMZ_lIlIIllIlIIIllI(MEMZ_IlIllIIIllllIIlIIlll,3,3)==1)then MEMZ_IllIlIllI[#{{850;229;963;932};"1 + 1 = 111";"1 + 1 = 111";{348;323;235;534};}]=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_IllIlIllI[#("C4TC")]]end MEMZ_IlIlIlllIlIllIIIl[MEMZ_IIIllIIIlllIllllIIlIll]=MEMZ_IllIlIllI;end end;for MEMZ_IllIlIllI=1,MEMZ_llllllIIlllllIlIlIlIIlll()do MEMZ_IIIllIIIlllIllllIIlIll[MEMZ_IllIlIllI-1]=MEMZ_lIIIlIllllllIll();end;MEMZ_IIIIIIllIllI[3]=MEMZ_lIIIlIllIIlllIllllIllIIII();return MEMZ_IIIIIIllIllI;end;local function MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_IllIlIllI,MEMZ_IlIlIlllIlIllIIIl,MEMZ_lIlIlIlIIlI)MEMZ_IllIlIllI=(MEMZ_IllIlIllI==true and MEMZ_lIIIlIllllllIll())or MEMZ_IllIlIllI;return(function(...)local MEMZ_lIlIlllIlIlIlIIIlllIllIIl=MEMZ_IllIlIllI[1];local MEMZ_lIllIIllIll=MEMZ_IllIlIllI[3];local MEMZ_lIIIlIllllllIll=MEMZ_IllIlIllI[2];local MEMZ_IllIlIllI=MEMZ_IIIlIlIlIIl local MEMZ_llllllIIlllllIlIlIlIIlll=1;local MEMZ_IllIlIllI=-1;local MEMZ_IllIIIlIIlllllIll={};local MEMZ_IIIlIlIlIIl={...};local MEMZ_IIIIIIllIllI=MEMZ_IIIIIIllIllI('#',...)-1;local MEMZ_lIIIlIllIIlllIllllIllIIII={};local MEMZ_lIlIIllIlIIIllI={};for MEMZ_IllIlIllI=0,MEMZ_IIIIIIllIllI do if(MEMZ_IllIlIllI>=MEMZ_lIllIIllIll)then MEMZ_IllIIIlIIlllllIll[MEMZ_IllIlIllI-MEMZ_lIllIIllIll]=MEMZ_IIIlIlIlIIl[MEMZ_IllIlIllI+1];else MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI]=MEMZ_IIIlIlIlIIl[MEMZ_IllIlIllI+#{{289;604;681;558};}];end;end;local MEMZ_IllIlIllI=MEMZ_IIIIIIllIllI-MEMZ_lIllIIllIll+1 local MEMZ_IllIlIllI;local MEMZ_lIllIIllIll;while true do MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("R")];if MEMZ_lIllIIllIll<=#("JEohWB32BIIX5cGgOUEGjnC")then if MEMZ_lIllIIllIll<=#("V8ugP24Kvkr")then if MEMZ_lIllIIllIll<=#("9OILx")then if MEMZ_lIllIIllIll<=#{"1 + 1 = 111";"1 + 1 = 111";}then if MEMZ_lIllIIllIll<=#("")then if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Zr")]]==MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Fb5J")]])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("ehJ")];end;elseif MEMZ_lIllIIllIll>#("d")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#{"1 + 1 = 111";"1 + 1 = 111";}]]={};else if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#{"1 + 1 = 111";{652;324;934;58};}]]==MEMZ_IllIlIllI[#("pCY7")])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("cpS")];end;end;elseif MEMZ_lIllIIllIll<=#("yvc")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("2O")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("z3i")]];elseif MEMZ_lIllIIllIll>#("WLlu")then local MEMZ_lIllIIllIll;MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("0T")]MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll](MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll+1])MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("zH")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("dPu")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("SS")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("QIB")]][MEMZ_IllIlIllI[#("NiB5")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("AF")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Chn")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("Yp")]MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll](MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll+1])MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("cQ")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("B2s")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("cX")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("TTu")]][MEMZ_IllIlIllI[#("oh2P")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("B6")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("5zT")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("5r")]MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll](MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll+1])MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Ef")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("1d2")]];else MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("XZ")]]=MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_lIIIlIllllllIll[MEMZ_IllIlIllI[#("XAp")]],nil,MEMZ_lIlIlIlIIlI);end;elseif MEMZ_lIllIIllIll<=#{"1 + 1 = 111";"1 + 1 = 111";{139;426;377;548};{957;574;465;163};{613;843;77;154};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then if MEMZ_lIllIIllIll<=#("BVUqh9")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Wr")]]=MEMZ_IlIlIlllIlIllIIIl[MEMZ_IllIlIllI[#{{872;115;336;910};"1 + 1 = 111";"1 + 1 = 111";}]];elseif MEMZ_lIllIIllIll>#("3jfY3UX")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Xs")]]={};else MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("00")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("khi")]];end;elseif MEMZ_lIllIIllIll<=#("vSsZ6XV86")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("9A")]]=MEMZ_IllIlIllI[#("RxR")];elseif MEMZ_lIllIIllIll>#("SrVFK005oH")then local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("tQ")]MEMZ_lIlIIllIlIIIllI[MEMZ_llllllIIlllllIlIlIlIIlll](MEMZ_IlIllIIIllllIIlIIlll(MEMZ_lIlIIllIlIIIllI,MEMZ_llllllIIlllllIlIlIlIIlll+1,MEMZ_IllIlIllI[#("3pA")]))else local MEMZ_IllIlIllI=MEMZ_IllIlIllI[#("3A")]MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI]()end;elseif MEMZ_lIllIIllIll<=#("phncW3CgHiHJ2Ud4T")then if MEMZ_lIllIIllIll<=#("kQXXdzSAyJo77F")then if MEMZ_lIllIIllIll<=#("NgLfXk4t2zel")then local MEMZ_lIIIlIllIIlllIllllIllIIII;local MEMZ_lIllIIllIll;MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("00")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("7rl")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("1z")];MEMZ_lIIIlIllIIlllIllllIllIIII=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("JzL")]];MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll+1]=MEMZ_lIIIlIllIIlllIllllIllIIII;MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIIIlIllIIlllIllllIllIIII[MEMZ_IllIlIllI[#("Ofcy")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("mE")]]=MEMZ_IllIlIllI[#("5SX")];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("2o")]MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll](MEMZ_IlIllIIIllllIIlIIlll(MEMZ_lIlIIllIlIIIllI,MEMZ_lIllIIllIll+1,MEMZ_IllIlIllI[#("P6m")]))MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("aM")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#{{269;926;965;27};"1 + 1 = 111";"1 + 1 = 111";}]][MEMZ_IllIlIllI[#("pxv8")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Kb")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("Sep")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("0o")]MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]()MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Gl")]][MEMZ_IllIlIllI[#("K6c")]]=MEMZ_IllIlIllI[#("UWQn")];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("aB")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("SWT")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("CM")]MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]()elseif MEMZ_lIllIIllIll==#("3VG6hoe0FCdZu")then local MEMZ_lIIIlIllllllIll=MEMZ_lIIIlIllllllIll[MEMZ_IllIlIllI[#("OSH")]];local MEMZ_IlIllIIIllllIIlIIlll;local MEMZ_lIllIIllIll={};MEMZ_IlIllIIIllllIIlIIlll=MEMZ_IIllIllIllI({},{__index=function(MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_IllIlIllI)local MEMZ_IllIlIllI=MEMZ_lIllIIllIll[MEMZ_IllIlIllI];return MEMZ_IllIlIllI[1][MEMZ_IllIlIllI[2]];end,__newindex=function(MEMZ_lIlIIllIlIIIllI,MEMZ_IllIlIllI,MEMZ_llllllIIlllllIlIlIlIIlll)local MEMZ_IllIlIllI=MEMZ_lIllIIllIll[MEMZ_IllIlIllI]MEMZ_IllIlIllI[1][MEMZ_IllIlIllI[2]]=MEMZ_llllllIIlllllIlIlIlIIlll;end;});for MEMZ_lIlIlIlIIlI=1,MEMZ_IllIlIllI[#("JYzH")]do MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;local MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];if MEMZ_IllIlIllI[#("x")]==45 then MEMZ_lIllIIllIll[MEMZ_lIlIlIlIIlI-1]={MEMZ_lIlIIllIlIIIllI,MEMZ_IllIlIllI[#("oKF")]};else MEMZ_lIllIIllIll[MEMZ_lIlIlIlIIlI-1]={MEMZ_IlIlIlllIlIllIIIl,MEMZ_IllIlIllI[#("GFr")]};end;MEMZ_lIIIlIllIIlllIllllIllIIII[#MEMZ_lIIIlIllIIlllIllllIllIIII+1]=MEMZ_lIllIIllIll;end;MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("eK")]]=MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_lIIIlIllllllIll,MEMZ_IlIllIIIllllIIlIIlll,MEMZ_lIlIlIlIIlI);else if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("i7")]]==MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("iD2K")]])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("uGT")];end;end;elseif MEMZ_lIllIIllIll<=#("G22KkbsoODZ5Gqx")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("s4")]][MEMZ_IllIlIllI[#("jOe")]]=MEMZ_IllIlIllI[#("NmyW")];elseif MEMZ_lIllIIllIll>#("y9m9HMcrZSBAiOIp")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("DL")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("2fD")]][MEMZ_IllIlIllI[#("ubdQ")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("F7")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("cKe")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("e9")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("vc6")]][MEMZ_IllIlIllI[#("A8Hk")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("hT")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("8l9")]][MEMZ_IllIlIllI[#("2f0c")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Bd")]]==MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("1Dmx")]])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("zSY")];end;else if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("4t")]]~=MEMZ_IllIlIllI[#("ASvx")])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("O2Y")];end;end;elseif MEMZ_lIllIIllIll<=#("ZyB9Z3kAPhdhmTXDKdeN")then if MEMZ_lIllIIllIll<=#("Y3ZKVCK2f94JDR365J")then local MEMZ_lIlIlIlIIlI;local MEMZ_lIllIIllIll;MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("21")];MEMZ_lIlIlIlIIlI=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("XXq")]];MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll+1]=MEMZ_lIlIlIlIIlI;MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("lnD9")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("qU")]]=MEMZ_IllIlIllI[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("OY")]]={};MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("82")]][MEMZ_IllIlIllI[#{{63;217;571;162};{463;229;278;122};{493;483;336;932};}]]=MEMZ_IllIlIllI[#("d9KI")];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Qq")]][MEMZ_IllIlIllI[#("pPD")]]=MEMZ_IllIlIllI[#("SS9x")];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("fy")]][MEMZ_IllIlIllI[#("F3i")]]=MEMZ_IllIlIllI[#("Lqol")];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Ia")]][MEMZ_IllIlIllI[#("JiE")]]=MEMZ_IllIlIllI[#("cMZL")];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("x6")]MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll](MEMZ_IlIllIIIllllIIlIIlll(MEMZ_lIlIIllIlIIIllI,MEMZ_lIllIIllIll+1,MEMZ_IllIlIllI[#("HWu")]))MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];do return end;elseif MEMZ_lIllIIllIll==#{{821;852;803;725};"1 + 1 = 111";{392;890;279;161};"1 + 1 = 111";{939;214;291;184};"1 + 1 = 111";"1 + 1 = 111";{298;438;608;752};"1 + 1 = 111";{347;900;833;85};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{827;51;506;719};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("0Wg")];else local MEMZ_lIIIlIllllllIll=MEMZ_lIIIlIllllllIll[MEMZ_IllIlIllI[#{"1 + 1 = 111";"1 + 1 = 111";{766;533;946;905};}]];local MEMZ_IlIllIIIllllIIlIIlll;local MEMZ_lIllIIllIll={};MEMZ_IlIllIIIllllIIlIIlll=MEMZ_IIllIllIllI({},{__index=function(MEMZ_llllllIIlllllIlIlIlIIlll,MEMZ_IllIlIllI)local MEMZ_IllIlIllI=MEMZ_lIllIIllIll[MEMZ_IllIlIllI];return MEMZ_IllIlIllI[1][MEMZ_IllIlIllI[2]];end,__newindex=function(MEMZ_lIlIIllIlIIIllI,MEMZ_IllIlIllI,MEMZ_llllllIIlllllIlIlIlIIlll)local MEMZ_IllIlIllI=MEMZ_lIllIIllIll[MEMZ_IllIlIllI]MEMZ_IllIlIllI[1][MEMZ_IllIlIllI[2]]=MEMZ_llllllIIlllllIlIlIlIIlll;end;});for MEMZ_lIlIlIlIIlI=1,MEMZ_IllIlIllI[#("k9by")]do MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;local MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];if MEMZ_IllIlIllI[#("9")]==45 then MEMZ_lIllIIllIll[MEMZ_lIlIlIlIIlI-1]={MEMZ_lIlIIllIlIIIllI,MEMZ_IllIlIllI[#("sbz")]};else MEMZ_lIllIIllIll[MEMZ_lIlIlIlIIlI-1]={MEMZ_IlIlIlllIlIllIIIl,MEMZ_IllIlIllI[#{"1 + 1 = 111";{125;596;400;940};"1 + 1 = 111";}]};end;MEMZ_lIIIlIllIIlllIllllIllIIII[#MEMZ_lIIIlIllIIlllIllllIllIIII+1]=MEMZ_lIllIIllIll;end;MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Tt")]]=MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_lIIIlIllllllIll,MEMZ_IlIllIIIllllIIlIIlll,MEMZ_lIlIlIlIIlI);end;elseif MEMZ_lIllIIllIll<=#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{963;641;706;995};{410;52;666;43};{190;454;520;412};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{906;846;400;909};"1 + 1 = 111";{107;882;954;100};{661;193;889;209};"1 + 1 = 111";{283;848;452;218};"1 + 1 = 111";"1 + 1 = 111";}then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("7O")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#{"1 + 1 = 111";"1 + 1 = 111";{516;961;428;739};}]][MEMZ_IllIlIllI[#{"1 + 1 = 111";{169;124;726;51};{404;413;234;503};{511;2;696;130};}]];elseif MEMZ_lIllIIllIll>#("56HzB6uQzuGEPCbtv0N37U")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("En")]]=MEMZ_IllIlIllI[#("pjX")];else MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("uB")]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("TvO")]];end;elseif MEMZ_lIllIIllIll<=#("4eFcueeU968PLbTRLzvGmiatiUNeaWoFlHN")then if MEMZ_lIllIIllIll<=#("649MtKGIRXBrMibEMonVel3LCaUmR")then if MEMZ_lIllIIllIll<=#("DezzVRzTlMMDNvtuC1VV27s1pU")then if MEMZ_lIllIIllIll<=#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{617;324;648;270};"1 + 1 = 111";{388;733;923;237};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{925;887;493;639};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{655;469;235;499};{406;272;584;376};{326;321;946;559};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{25;77;175;563};"1 + 1 = 111";}then local MEMZ_lIIIlIllIIlllIllllIllIIII;local MEMZ_lIllIIllIll;MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#{{49;153;380;51};"1 + 1 = 111";}]]=MEMZ_lIlIlIlIIlI[MEMZ_IllIlIllI[#("shH")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("61")];MEMZ_lIIIlIllIIlllIllllIllIIII=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("76m")]];MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll+1]=MEMZ_lIIIlIllIIlllIllllIllIIII;MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIIIlIllIIlllIllllIllIIII[MEMZ_IllIlIllI[#("mGIz")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("5g")]]=MEMZ_IllIlIllI[#("2Tq")];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("hB")]MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll](MEMZ_IlIllIIIllllIIlIIlll(MEMZ_lIlIIllIlIIIllI,MEMZ_lIllIIllIll+1,MEMZ_IllIlIllI[#("Kmv")]))MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Hu")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("EfY")]][MEMZ_IllIlIllI[#("3GsC")]];MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;MEMZ_IllIlIllI=MEMZ_lIlIlllIlIlIlIIIlllIllIIl[MEMZ_llllllIIlllllIlIlIlIIlll];MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#("Ix")];MEMZ_lIIIlIllIIlllIllllIllIIII=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("SEQ")]];MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll+1]=MEMZ_lIIIlIllIIlllIllllIllIIII;MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_lIIIlIllIIlllIllllIllIIII[MEMZ_IllIlIllI[#("iD0n")]];elseif MEMZ_lIllIIllIll>#("C6KGVIiaQ9I2WsMzc7DpDAQ94")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("AF")]]=MEMZ_IIIllIIIlllIllllIIlIll(MEMZ_lIIIlIllllllIll[MEMZ_IllIlIllI[#{{669;301;769;633};"1 + 1 = 111";"1 + 1 = 111";}]],nil,MEMZ_lIlIlIlIIlI);else local MEMZ_IllIlIllI=MEMZ_IllIlIllI[#("FH")]MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI](MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI+1])end;elseif MEMZ_lIllIIllIll<=#("SOlEheV615NYLtdyPfukY09jFtN")then local MEMZ_IllIlIllI=MEMZ_IllIlIllI[#("9R")]MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI](MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI+1])elseif MEMZ_lIllIIllIll>#("AcpLMc0EZl1Eg0CQWovilfULPT32")then local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("iE")]MEMZ_lIlIIllIlIIIllI[MEMZ_llllllIIlllllIlIlIlIIlll](MEMZ_IlIllIIIllllIIlIIlll(MEMZ_lIlIIllIlIIIllI,MEMZ_llllllIIlllllIlIlIlIIlll+1,MEMZ_IllIlIllI[#("9vq")]))else if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("cv")]]==MEMZ_IllIlIllI[#("iDj6")])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("LB6")];end;end;elseif MEMZ_lIllIIllIll<=#("b9YCDGYPcmIEKIEn0e8ysxq7EhusP52j")then if MEMZ_lIllIIllIll<=#("ZXmdcNuObUcXPMHqxYP5FvOS07vlG9")then if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("dk")]]~=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Jy2C")]])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("F7g")];end;elseif MEMZ_lIllIIllIll==#("tzGUVqjYBOUrNojZFXbsgmoDEiEmeri")then if not MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("WL")]]then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("PFh")];end;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("kSk")];end;elseif MEMZ_lIllIIllIll<=#("cNSzi1W9n9orUebEQh0yERahjdqNX6TjF")then if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("dB")]]~=MEMZ_IllIlIllI[#("d7lH")])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#{{568;44;224;91};"1 + 1 = 111";"1 + 1 = 111";}];end;elseif MEMZ_lIllIIllIll>#("o9HVRObcfg77TzgaH7BVNuNKofLimqqfWh")then local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("uL")];local MEMZ_lIllIIllIll=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("I66")]];MEMZ_lIlIIllIlIIIllI[MEMZ_llllllIIlllllIlIlIlIIlll+1]=MEMZ_lIllIIllIll;MEMZ_lIlIIllIlIIIllI[MEMZ_llllllIIlllllIlIlIlIIlll]=MEMZ_lIllIIllIll[MEMZ_IllIlIllI[#("ba6Q")]];else local MEMZ_IllIlIllI=MEMZ_IllIlIllI[#("BA")]MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI](MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI+1])end;elseif MEMZ_lIllIIllIll<=#("c75BmxCM3jmu1GWAWST84v6GMc20Y02kLKedLGnzl")then if MEMZ_lIllIIllIll<=#("UBbVUNA0Exdi5QazZkELXcrcTqCTZpEuXkLGE0")then if MEMZ_lIllIIllIll<=#("pA8vFhCPyclRd4K5Ri9bDlRbo2SvUfF582ol")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("15")]]=MEMZ_IlIlIlllIlIllIIIl[MEMZ_IllIlIllI[#("CBx")]];elseif MEMZ_lIllIIllIll>#("RW5rMdRNIBBmp4xFZZdT7hMzf5sIqTlQzgaxe")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("s5")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("TG6")]][MEMZ_IllIlIllI[#("eT02")]];else local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("iA")]MEMZ_lIlIIllIlIIIllI[MEMZ_llllllIIlllllIlIlIlIIlll]=MEMZ_lIlIIllIlIIIllI[MEMZ_llllllIIlllllIlIlIlIIlll](MEMZ_IlIllIIIllllIIlIIlll(MEMZ_lIlIIllIlIIIllI,MEMZ_llllllIIlllllIlIlIlIIlll+1,MEMZ_IllIlIllI[#("Cuy")]))end;elseif MEMZ_lIllIIllIll<=#("0h9yQCrjFkhBickD1JjGlRVjxZpVXi3aAf86TJC")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("B7")]][MEMZ_IllIlIllI[#("qk9")]]=MEMZ_IllIlIllI[#("Gsxs")];elseif MEMZ_lIllIIllIll==#("h6AhA0KiF6pCmJIjx0b0mGvvrhaddoTsg9ypqNUH")then local MEMZ_IllIlIllI=MEMZ_IllIlIllI[#("aX")]MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI](MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI+1])else local MEMZ_IllIlIllI=MEMZ_IllIlIllI[#("Df")]MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI]()end;elseif MEMZ_lIllIIllIll<=#("gp13CX1IZJ3IL8MKeZrZHepm6unls2TgFLfqED0ujFoQ")then if MEMZ_lIllIIllIll<=#("VGbWPmYCRSb9O6gJQo60Xc92ugL97Qb0KxlZmzNQ5O")then do return end;elseif MEMZ_lIllIIllIll==#("3eqZHTWDprZcSGiBJMYFaQlAqUrvqMq4iogYeqdplmV")then local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#{"1 + 1 = 111";"1 + 1 = 111";}]MEMZ_lIlIIllIlIIIllI[MEMZ_llllllIIlllllIlIlIlIIlll]=MEMZ_lIlIIllIlIIIllI[MEMZ_llllllIIlllllIlIlIlIIlll](MEMZ_IlIllIIIllllIIlIIlll(MEMZ_lIlIIllIlIIIllI,MEMZ_llllllIIlllllIlIlIlIIlll+1,MEMZ_IllIlIllI[#("8fc")]))else if not MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("FW")]]then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("x65")];end;end;elseif MEMZ_lIllIIllIll<=#("UuEsd8eegjWn31IXCAmOb53DAuvrIIsY4NP6p8rrHmY9C2")then if MEMZ_lIllIIllIll==#("nSqYVahHZBa3SMWHI08tpmMHDh4hYh4bHAiKqTIXXfZGp")then MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("lv")]]=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("Bk3")]];else do return end;end;elseif MEMZ_lIllIIllIll>#{"1 + 1 = 111";{324;568;505;329};{459;686;115;806};{529;131;244;612};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{491;117;901;402};{145;591;637;630};{495;160;452;141};"1 + 1 = 111";"1 + 1 = 111";{260;55;713;288};{772;48;909;354};{679;254;424;446};{590;226;481;212};"1 + 1 = 111";{153;567;357;852};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{914;825;329;318};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{525;224;94;65};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{381;315;509;699};{653;720;519;705};"1 + 1 = 111";{146;87;408;271};{516;740;704;174};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then local MEMZ_lIllIIllIll=MEMZ_IllIlIllI[#{{794;460;853;909};"1 + 1 = 111";}];local MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("fNx")]];MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll+1]=MEMZ_llllllIIlllllIlIlIlIIlll;MEMZ_lIlIIllIlIIIllI[MEMZ_lIllIIllIll]=MEMZ_llllllIIlllllIlIlIlIIlll[MEMZ_IllIlIllI[#("RiXK")]];else if(MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("HJ")]]~=MEMZ_lIlIIllIlIIIllI[MEMZ_IllIlIllI[#("jHUC")]])then MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;else MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_IllIlIllI[#("FhT")];end;end;MEMZ_llllllIIlllllIlIlIlIIlll=MEMZ_llllllIIlllllIlIlIlIIlll+1;end;end);end;return MEMZ_IIIllIIIlllIllllIIlIll(true,{},MEMZ_lllllIllIlIIlIl())();end)(string.byte,table.insert,setmetatable);
