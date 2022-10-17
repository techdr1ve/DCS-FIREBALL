--[[
    Fireball Napalm Script for Mk77 mod0, mod1

    Summary: Allows A-4E-C, F-4, F-105, F-104, F-100, A-6E to have a fireball appears on impact of Mk-77 mod0 and mod1 napalm firebombs
    Supports: Single player and Multiplayer (given that the server and client have the same version of A-4E-C)

    Requirements: 
    1) A-4E-C MUST be installed in order for Mk-77 mod0 and mod1 to work (leveraging this weapon from A-4E-C files)
        https://github.com/heclak/community-a4e-c/releases

    2) Multiplayer Dedicated Server: server and client have the same version of A-4E-C installed in mods/aircrafts folder

    Details: See https://github.com/techdr1ve/DCS-FIREBALL for a instructions on installation and the latest version

	Contributors:
	    - Dr.No & Dr.Yes - https://github.com/techdr1ve

    Version: 1.0.0 - 09/30/2022
      - Initial Working Script with 3 versions 
 ]]

fireball = {}

-- ************************************************************************
-- *********************  USER CONFIGURATION ******************************
-- ************************************************************************

-- Settings based on https://wiki.hoggitworld.com/view/DCS_func_effectSmokeBig 
-- Number Options: 4 Huge Fire + Smoke, 3 Large Fire + Smoke, 2 Medium Fire + Smoke, 1 Small Fire + Smoke ... 8 Huge Smoke, 7 Large Smoke, 6 Medium Smoke, 5 Small Smoke
-- Firebomb Details: Mk77 Mod0 --> 750 lbs, 110 U.S. gallons  ... Mk77 Mod1 --> 500 lbs, 75 U.S. gallons

--Mk77 Mod0 (Napalm Firebomb 750lbs)
fireball.fireflash_mod0_intensity = 4 -- Mk77-Mod0 Fireball flash size (1-4)
fireball.fireflash_mod0_density = 0.75 -- Mk77-Mod0 Fireball flash smoke density (0.0 - 1.0)

fireball.firestay_mod0 = true --  if set to true then mod0 fire will stay for the entire mission
fireball.firestay_mod0_intensity = 1 -- Mk77-Mod0 Fire that stays size (1-4)
fireball.firestay_mod0_density = 0.75 -- Mk77-Mod0 Fire that stays smoke density (0.0 - 1.0)

--Mk77 Mod1 (Napalm Firebomb 500lbs)
fireball.fireflash_mod1_intensity = 3 -- Mk77-Mod1 Fireball flash size (1-4)
fireball.fireflash_mod1_density = 0.75 -- Mk77-Mod0 Fireball flash smoke density (0.0 - 1.0)

fireball.firestay_mod1 = true --  if set to true then mod1 fire will stay for the entire mission
fireball.firestay_mod1_intensity = 1 -- Mk77-Mod1 Fire that stays size (1-4)
fireball.firestay_mod1_density = 0.75 -- Mk77-Mod1 Fire that stays smoke density (0.0 - 1.0)

--RN-28 or RN-24 (Nuclear Bombs)
fireball.nukesmoke_on = true -- if set to true then additional smoke effects will appear upon impact of RN-28 or RN-24

--Debug turn on
fireball.debug = false -- if set to true then debug text will appear upon weapon release 

-- ***************************************************************
-- **************** Event Handler Functions *********************
-- ***************************************************************
fireball.eventHandler = {}
function fireball.eventHandler:onEvent(_event)
    local status, err = pcall(function(_event)

        if _event == nil or _event.initiator == nil then
            return false

        --elseif world.event.S_EVENT_SHOT == _event.id then
        elseif world.event.S_EVENT_SHOT == _event.id or (_event.id == 1) then

        --env.info("Event unit - Shot!")

        --*************CREATE ALL NECCESARY VARIABLES/ATTRIBUTES*************--
        local _weapon = _event.weapon
        local _timet = _event.time
        local _unit = _event.initiator 
        --timer.getTime()

        local unitpos = _unit:getPosition()
        local unitpoint = _unit:getPoint()
        local Heading = math.atan2(unitpos.x.z, unitpos.x.x)
        local Pitch = math.asin(unitpos.x.y)
        local velocity = _unit:getVelocity()
        
        local point = _unit:getPoint()
        local windOverPoint = {}
        local windOverPoint = atmosphere.getWind(point)
        local WindSpeed_x = windOverPoint.x
        local WindSpeed_y = windOverPoint.y
        local WindSpeed_z = windOverPoint.z

        local point_t = _unit:getPoint()
        local windOverPoint_t = {}
        local windOverPoint_t = atmosphere.getWindWithTurbulence(point_t)
        local WindSpeedt_x = windOverPoint_t.x
        local WindSpeedt_y = windOverPoint_t.y
        local WindSpeedt_z = windOverPoint_t.z

        -- getting just turbulence from wind
        local WindSpeedSum_x = windOverPoint.x - windOverPoint_t.x
        local WindSpeedSum_y = windOverPoint.y - windOverPoint_t.y
        local WindSpeedSum_z = windOverPoint.z - windOverPoint_t.z        
        
        --local Speed_x = velocity.x
        --local Speed_y = velocity.y
        --local Speed_z = velocity.z
        --local Speed_x = velocity.x + WindSpeed_x
        --local Speed_y = velocity.y + WindSpeed_y
        --local Speed_z = velocity.z + WindSpeed_z
        
        -- getting summation of velocity at point minus wind turbulence
        local Speed_x = velocity.x + WindSpeedSum_x
        local Speed_y = velocity.y + WindSpeedSum_y
        local Speed_z = velocity.z + WindSpeedSum_z
        
        local Position_x1 = unitpoint.x
        local Position_y1 = unitpoint.y
        local Position_z1 = unitpoint.z


        local ua = Speed_y / (-9.81);

        local Position_y1_land = land.getHeight({x = Position_x1, y = Position_z1}) 

        --//Calculate time until impact. ... from A-4 CCP Computer .lua

        local h = Position_y1 - Position_y1_land;

        if _weapon:getTypeName() == "RN-28" or _weapon:getTypeName() == "RN-24" then
            fireball.gravity = 20.51
        else 
            fireball.gravity = 9.81
        end 

        local t2 = math.sqrt( ua * ua + (2.0*h) / (fireball.gravity) ) - ua;
        --local t2 = 3
        
        local Position_x2 = Position_x1 + Speed_x * t2
        local Position_z2 = Position_z1 + Speed_z * t2
    
        local Position_y2 = land.getHeight({x = Position_x2, y = Position_z2}) 


        local ImpactPoint = {
            x = Position_x2,
            y = Position_y2,
            z = Position_z2,
        }

        local ImpactPoint2 = ImpactPoint
        local ImpactPoint3 = ImpactPoint
        
        --*************DEBUG PARAMETERS START*************--
        if fireball.debug then
            trigger.action.outText("SHOT! WATCHOUT!", 5)
            trigger.action.outText("ua_speed: " .. ua, 15)
            trigger.action.outText("Position-y1_land: " .. Position_y1_land, 15)
            trigger.action.outText("h - height: " .. h, 15)
            trigger.action.outText("Time to Impact: " .. t2, 15)
            trigger.action.outText("Position-x2: " .. Position_x2, 15)
            trigger.action.outText("Position-y2(pst): " .. Position_y2, 15) 
            trigger.action.outText("Position-z2: " .. Position_z2, 15)
            trigger.action.outText("Time(from mission start 0): " .. _timet, 10)
            trigger.action.outText("Event unit - Weapon shot from: " .. _unit:getTypeName(), 10)
            trigger.action.outText("Weapon - " .. _weapon:getTypeName(), 10)
            trigger.action.outText("Heading(atan2(unitpos.x.z, unitpos.x.x)): " .. Heading, 10)
            trigger.action.outText("Pitch(asin(unitpos.x.y)): " .. Pitch, 10)
            trigger.action.outText("Velocity-x: " .. Speed_x, 10)
            trigger.action.outText("Velocity-y: " .. Speed_y, 10)
            trigger.action.outText("Velocity-z: " .. Speed_z, 10)
            trigger.action.outText("WindVelocity-x: " .. WindSpeed_x, 10)
            trigger.action.outText("WindVelocity-y: " .. WindSpeed_y, 10)
            trigger.action.outText("WindVelocity-z: " .. WindSpeed_z, 10)
            trigger.action.outText("Position-x.x: " .. Position_x1, 10)
            trigger.action.outText("Position-x.y: " .. Position_y1, 10)
            trigger.action.outText("Position-x.z: " .. Position_z1, 10)
        end
        --*************DEBUG PARAMETERS END*************--

        --*************ACTION EVENTS EXECUTION*************--
        env.info("Event unit - Weapon shot:" .. _weapon:getTypeName())
        if _weapon:getTypeName() == "MK77mod0-WPN" then -- unit hit by firebomb ... CREATE FIRE!!!

            fireball.mod0_stay_unique_name = tostring(math.random(1,1000))

            function fireball_start()
                trigger.action.effectSmokeBig(ImpactPoint2, fireball.fireflash_mod0_intensity, fireball.fireflash_mod0_density, 'mod0-id')
                
                if fireball.firestay_mod0 then
                    trigger.action.effectSmokeBig(ImpactPoint, fireball.firestay_mod0_intensity, fireball.firestay_mod0_density, fireball.mod0_stay_unique_name)
                end

                trigger.action.effectSmokeStop('mod0-id')

            end

            function fireball_end()
                trigger.action.effectSmokeStop(fireball.mod0_stay_unique_name)
                --trigger.action.effectSmokeStop('mod1-id')
            end

            timer.scheduleFunction(fireball_start, nil, timer.getTime() + t2)
            --timer.scheduleFunction(fireball_end, nil, timer.getTime() + t2 + 5)

        end

        --env.info("Event unit - Weapon shot:" .. _weapon:getTypeName())
        if _weapon:getTypeName() == "MK77mod1-WPN" then -- unit hit by firebomb ... CREATE FIRE!!!

            --local unique_name
            --unique_name = math.random(1,1000)
            function fireball_start()

                trigger.action.effectSmokeBig(ImpactPoint2, fireball.fireflash_mod1_intensity, fireball.fireflash_mod1_density, 'mod1-id')

                if fireball.firestay_mod1 then
                    trigger.action.effectSmokeBig(ImpactPoint, fireball.firestay_mod1_intensity, fireball.firestay_mod1_density, 'mod1_fire_stay')
                end

                trigger.action.effectSmokeStop('mod1-id')
            end

            timer.scheduleFunction(fireball_start, nil, timer.getTime() + t2)
            
            --function fireball_end()
                --trigger.action.effectSmokeStop('bob6')
                --trigger.action.effectSmokeStop('mod0-id')
                --trigger.action.effectSmokeStop('mod1-id')
            --end
            --timer.scheduleFunction(fireball_end, nil, timer.getTime() + t2 + 5)
        
        end        

        -- If Nuke goes off, smoke appears upon impact
        if fireball.nukesmoke_on then 
            if _weapon:getTypeName() == "RN-28" or _weapon:getTypeName() == "RN-24" then -- impact by nuke ... CREATE FIRE!!!

                local ImpactPointnew1a = {
                    x = Position_x2 + 30,
                    y = Position_y2,
                    z = Position_z2 + 30,
                }

                local ImpactPointnew2a = {
                    x = Position_x2 - 30,
                    y = Position_y2,
                    z = Position_z2 + 30,
                }

                local ImpactPointnew3a = {
                    x = Position_x2 + 30,
                    y = Position_y2,
                    z = Position_z2 - 30,
                }

                local ImpactPointnew4a = {
                    x = Position_x2 - 30,
                    y = Position_y2,
                    z = Position_z2 - 30,
                }

                local ImpactPointnew1b = {
                    x = Position_x2 + 40,
                    y = Position_y2,
                    z = Position_z2 + 55,
                }

                local ImpactPointnew2b = {
                    x = Position_x2 - 55,
                    y = Position_y2,
                    z = Position_z2 + 40,
                }

                local ImpactPointnew3b = {
                    x = Position_x2 + 55,
                    y = Position_y2,
                    z = Position_z2 - 40,
                }

                local ImpactPointnew4b = {
                    x = Position_x2 - 40,
                    y = Position_y2,
                    z = Position_z2 - 55,
                }


                --local unique_name
                --unique_name = math.random(1,1000)
                function nukesmoke_start()
                    --trigger.action.effectSmokeBig()
                    trigger.action.effectSmokeBig(ImpactPoint2, 8, 1.00, 'nukesmoke_main')
                    trigger.action.effectSmokeBig(ImpactPointnew1a, 8, 1.00, 'nukesmoke_a')
                    trigger.action.effectSmokeBig(ImpactPointnew2a, 8, 1.00, 'nukesmoke_b')
                    trigger.action.effectSmokeBig(ImpactPointnew3a, 8, 1.00, 'nukesmoke_c')
                    trigger.action.effectSmokeBig(ImpactPointnew4a, 8, 1.00, 'nukesmoke_d')

                end

                timer.scheduleFunction(nukesmoke_start, nil, timer.getTime() + t2)
                
                function nukesmoke_end()
                    trigger.action.effectSmokeStop('nukesmoke_main')
                    trigger.action.effectSmokeStop('nukesmoke_a')
                    trigger.action.effectSmokeStop('nukesmoke_b')
                    trigger.action.effectSmokeStop('nukesmoke_c')
                    trigger.action.effectSmokeStop('nukesmoke_d')
                end
                --timer.scheduleFunction(nukesmoke_end, nil, timer.getTime() + t2 + 5)
            end
        end

        end
    end, _event)
    if (not status) then
        env.error(string.format("Error while handling event %s", err), false)
    end
end

---------fireball_for_unit----- Dr. No Code-------------------------------copied from elseif world.event.S_EJECTION-----------------------------

world.addEventHandler(fireball.eventHandler)

env.info("fireball event handler added")