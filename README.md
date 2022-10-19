## DCS-FIREBALL
- Summary: Adds Napalm Fireball effect to MK77 weapon drop using Mk77 Mod0 & Mod1 from [A-4E-C DCS Plane Mod](https://github.com/heclak/community-a4e-c) 
to [DCS World](https://www.digitalcombatsimulator.com/en/products/world/) Simulation and BIN_200 from C101 Aviojet.
- Notice: Only DCS mod airframes are added and not actual DCS modules.
- Statement: As horrible as Napalm is in real life, just as Nuclear Weapons are, they do have a place within DCS with all their effects
- Purpose: Showcase interest and viability of Napalm weapon fireball effects in DCS.
- Goal: Influence ED & 3rd Party Devs the importance of adding Napalm effects and the Vietnam Terrain Map to DCS.
- Update: 10/18/22 :: Confirmed Working ::: All airframes added have at least 1 historical article stating use of Napalm, thereby added.
  - Mk-77 Mod0, Mod1 require A-4 mod install for weapons to appear in game
  - BIN_200 from C101 Aviojet recognized native to DCS; no dependencies needed
  - Airframes added Mk-77 Mod0, Mod1 & BIN_200: 
    - [VSN Mods: F-4, F-80, F-100, F-104, F-105, Mirage III, Tornado, SEM](https://filehorst.de/folder.php?key=duuqITUb)
    - [A-6E](https://www.digitalcombatsimulator.com/en/products/world/)
  - Airframes added BIN_200 Only: 
    - [OV-10A Bronco](https://splitair.gumroad.com/l/fwzxn)
    - [CH-53 Sea Stallion](https://www.digitalcombatsimulator.com/en/files/3316599/ )
    - [A-29B Super Tucano](https://github.com/luizrenault/a-29b-community/releases)
    - [IA-58 Pucara](https://github.com/PucaraPastrana/PucaraDCS/releases)
    - [C-130 Hercules](https://www.mediafire.com/file/8uak6lar9hyswfs/Hercules_ver_6.8.1.zip/file)

## Application Showcase: FIREBALL
_Note: debug on w/text output, actual script no text only FIRE!_
![image](https://user-images.githubusercontent.com/61528637/193335275-089f4e9f-3703-48ff-a2e6-cc38c1d7a9d5.png)

## Installation: Inject code into Triggers/Actions in Mission Editor
- DO SCRIPT FILE --> MIST.lua
  - Link: https://github.com/mrSkortch/MissionScriptingTools/releases
- DO SCRIPT FILE --> Napalm_Fireball.lua
  - Link: https://github.com/techdr1ve/DCS-FIREBALL/releases

## REQUIREMENTS
If using dedicated server:
- MUST have A-4 installed on the server in saved games/server_name/Mods/aircraft/ folder.
- MUST have the SAME A-4 version client-side as server-side in order to view the effect for Mk-77 Mod0 and Mod1.
- Note: If you do not want dependancy on A-4 mod aircraft, just use BIN_200 DCS native napalm bomb

To add Mk77 Mod0 & Mod1 to other airplane mods:
- Only edit the main .lua file (ex; ```VSN_F100.lua```) inside (ex; ```Saved Games\DCS.openbeta\Mods\aircraft\VSN_F100```)
- Add compatible line: 
  - ex1; ```{CLSID = "{mk77mod0}" , arg_value = 0.0},```
  - ex2; ```{CLSID = "{mk77mod0}"},``` 
  - ex3; ```{CLSID = "{mk77mod1}"},```
  - ex4; ```{CLSID = "BIN_200", arg_value = 0.1, required = {{station = 1,loadout = {}}} },    -- BIN-200 ```
    - Note: you must declare required station otherwise weapon will not be added, useful for dual loadouts, if not, put current pylon
- Do not add TER2 variant, more complex to get to work: 
  - ```{ CLSID = "{Mk-77 mod 1_TER_2_"..side.."}" },```  
  ... if you can get it to work LET ME KNOW & I'll add it in!

If using Mk77 on Other airplane mods:
- MUST have A-4 installed on the server in saved games/server_name/Mods/aircraft/ folder in order for Mk77 Mod0 & Mod1 to work.

## Script Configuration Setup
Configure Fireball Napalm for Mk77 mod0, mod1 and RN-24, RN-28 for Nuke Smoke

**1 Script, Configuration Galore**
- Settings based on https://wiki.hoggitworld.com/view/DCS_func_effectSmokeBig 
- Number Options: 
  - Napalm Fireball: FireFlash + FireStay:
    - 4 Huge Fire + Smoke
    - 3 Large Fire + Smoke
    - 2 Medium Fire + Smoke
    - 1 Small Fire + Smoke
  - Nuke Smoke: Multiple Joint Smokestacks
    - 8 Huge Smoke 
    - 7 Large Smoke
    - 6 Medium Smoke
    - 5 Small Smoke
  
- Firebomb Details:
  - Mk77 Mod0 --> 750 lbs, 110 U.S. gallons
  - Mk77 Mod1 --> 500 lbs, 75 U.S. gallons
  - BIN_200 --> 440lbs, ~70 U.S. gallons

```
--Mk77 Mod0 (Napalm Firebomb 750lbs)
fireball.fireflash_mod0_intensity = 4 -- Mk77-Mod0 Fireball flash size (1-4)
fireball.fireflash_mod0_density = 0.75 -- Mk77-Mod0 Fireball flash smoke density (0.0 - 1.0)

fireball.firestay_mod0 = true --  if set to true then mod0 fire will stay for the entire mission
fireball.firestay_mod0_intensity = 1 -- Mk77-Mod0 Fire that stays size (1-4)
fireball.firestay_mod0_density = 0.75 -- Mk77-Mod0 Fire that stays smoke density (0.0 - 1.0)

--Mk77 Mod1 (Napalm Firebomb 500lbs) and BIN_200 (Napalm Firebomb 440lbs)
fireball.fireflash_mod1_intensity = 3 -- Mk77-Mod1 and BIN_200 Fireball flash size (1-4)
fireball.fireflash_mod1_density = 0.75 -- Mk77-Mod1 and BIN_200 Fireball flash smoke density (0.0 - 1.0)

fireball.firestay_mod1 = true --  if set to true then Mk77-Mod1 and BIN_200 fire will stay for the entire mission
fireball.firestay_mod1_intensity = 1 -- Mk77-Mod1 and BIN_200 Fire that stays size (1-4)
fireball.firestay_mod1_density = 0.75 -- Mk77-Mod1 and BIN_200 Fire that stays smoke density (0.0 - 1.0)

--RN-28 or RN-24 (Nuclear Bombs)
fireball.nukesmoke_on = true -- if set to true then additional smoke effects will appear upon impact of RN-28 or RN-24
```
## Contributors:
- Dr.No & Dr.Yes - Developing Scripts - https://github.com/techdr1ve
- plusnine / callmepartario - Developer assisting with coordinating A-4 team & helping get resources - A-4 Discord, Github
- JNelson - Assisting with CP741.cpp computer drop code from A-4 files helped resolve impact calculation & delay time - A-4 Discord
- Ghosti - Assisting on Napalm Mk-77, BIN_200 added to other airframes than A-4 - DCS Liberation Discord & A-4 Discord
- PeeJott - Positive developer assisting the proliferation of changes to VSN mod plane files - Century Series
- Dikennek - Developer Adding Napalm BIN_200 to his OV-10A script. - Split Air Discord
- Gregory - Helping me debug Napalm BIN_200 to get this weapon to work on the OV-10A and resolve issues - Split Air Discord
- WheelyJoe - Hopefully he will add Napalm weapons for more realistic area affected accuracy; Mk-77 Mod0, Mod1 and BIN_200 to his Weapons_Damage_Updated.lua - DCS Liberation Discord
