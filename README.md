## DCS-FIREBALL
Adds Napalm Fireball effect to MK77 weapon drop using Mk77 Mod0 & Mod1 from [A-4E-C DCS Plane Mod](https://github.com/heclak/community-a4e-c) 
to [DCS World](https://www.digitalcombatsimulator.com/en/products/world/) Simulation and BIN_200 from C101 Aviojet.
- Update: 10/17/22 :: Confirmed Working: 
  - Added Mk77 Mod0 & Mod1 in F-4, F-105, F-104, F-100, A-6E from A-4E-C
  - Get these modded airframses from: [VSN Mods-Century Series](https://filehorst.de/folder.php?key=duuqITUb)
  - Added BIN200 to everything attached to MK77 Mod1 from C101 Aviojet as well

## Installation: Inject code into Triggers/Actions in Mission Editor
- DO SCRIPT FILE --> MIST.lua
- DO SCRIPT FILE --> Napalm_Fireball_MK77_xxxxxxx.lua

## REQUIREMENTS
If using dedicated server:
- MUST have A-4 installed on the server in saved games/server_name/Mods/aircraft/ folder.
- MUST have the SAME A-4 version client-side as server-side in order to view the effect.

To add Mk77 Mod0 & Mod1 to other airplane mods:
- Only edit the main .lua file (ex; ```VSN_F100.lua```) inside (ex; ```Saved Games\DCS.openbeta\Mods\aircraft\VSN_F100```)
- Add compatible line: 
  - ex1; ```{CLSID = "{mk77mod0}" , arg_value = 0.0},```
  - ex2; ```{CLSID = "{mk77mod0}"},``` 
  - ex3; ```{CLSID = "{mk77mod1}"},```
- Do not add TER2 variant, more complex to get to work: 
  - ```{ CLSID = "{Mk-77 mod 1_TER_2_"..side.."}" },```  
  ... if you can get it to work LET ME KNOW & I'll add it in!

If using Mk77 on Other airplane mods:
- MUST have A-4 installed on the server in saved games/server_name/Mods/aircraft/ folder in order for Mk77 Mod0 & Mod1 to work.

## Script Variants
Chose Script Variant Below (3 variants) 

**3 Different Variants** -- Update: 10/17/22 This has been archived and instructions be depricated in next update
- Med Go --> Flash Fireball, then goes away
- Med Go, Small Stay --> Flash Med Fireball, Small Fire remains until end of mission
- Med Stay --> Medium Fireball remains until end of mission

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
## Application Showcase: 
_Note: debug on w/text output, actual script no text only FIRE!_
![image](https://user-images.githubusercontent.com/61528637/193335275-089f4e9f-3703-48ff-a2e6-cc38c1d7a9d5.png)
