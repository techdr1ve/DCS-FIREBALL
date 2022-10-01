--[[
    Creates Fireball Effect for MK77-mod0 and MK77-mod1 (Napalm) at impact ground point
    Script Variant: Med_Go
    Requirements: MIST Injection, if using dedicated server ... must have A-4 mod added to server files
    without requiring external mods.
    See https://github.com/techdr1ve/DCS-FIREBALL for newest version and instruction detail
	Contributors:
	    - Dr.No & Dr.Yes - https://github.com/techdr1ve
 ]]

fireball = {}

--fireball.debugvariables = true -- set to false to disable AI units from being rescued.

fireball.eventHandler = {}
function fireball.eventHandler:onEvent(_event)
    local status, err = pcall(function(_event)

        if _event == nil or _event.initiator == nil then
            return false

        --elseif world.event.S_EVENT_SHOT == _event.id then
        elseif world.event.S_EVENT_SHOT == _event.id or (_event.id == 1) then

        --env.info("Event unit - Shot!")

        local _weapon = _event.weapon
        local _timet = _event.time
        local _unit = _event.initiator 
        --timer.getTime()

        local unitpos = _unit:getPosition()
        local unitpoint = _unit:getPoint()
        local Heading = math.atan2(unitpos.x.z, unitpos.x.x)
        local Pitch = math.asin(unitpos.x.y)
        local velocity = _unit:getVelocity()
        local Speed_x = velocity.x
        local Speed_y = velocity.y
        local Speed_z = velocity.z
        local Position_x1 = unitpoint.x
        local Position_y1 = unitpoint.y
        local Position_z1 = unitpoint.z

        local ua = Speed_y / (-9.81);


        local Position_y1_land = land.getHeight({x = Position_x1, y = Position_z1}) 

        --//Calculate time until impact. ... from A-4 CCP Computer .lua

        local h = Position_y1 - Position_y1_land;

        local t2 = math.sqrt( ua * ua + (2.0*h) / (9.81) ) - ua;
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
        --trigger.action.outText("SHOT! WATCHOUT!", 5)
        --trigger.action.outText("ua_speed: " .. ua, 15)
        --trigger.action.outText("Position-y1_land: " .. Position_y1_land, 15)
        --trigger.action.outText("h - height: " .. h, 15)
        --trigger.action.outText("Time to Impact: " .. t2, 15)
        --trigger.action.outText("Position-x2: " .. Position_x2, 15)
        --trigger.action.outText("Position-y2(pst): " .. Position_y2, 15) 
        --trigger.action.outText("Position-z2: " .. Position_z2, 15)


        --trigger.action.outText("Time(from mission start 0): " .. _timet, 10)
        --trigger.action.outText("Event unit - Weapon shot from: " .. _unit:getTypeName(), 10)
        --trigger.action.outText("Weapon - " .. _weapon:getTypeName(), 10)
        --trigger.action.outText("Heading(atan2(unitpos.x.z, unitpos.x.x)): " .. Heading, 10)
        --trigger.action.outText("Pitch(asin(unitpos.x.y)): " .. Pitch, 10)
        --trigger.action.outText("Velocity-x: " .. Speed_x, 10)
        --trigger.action.outText("Velocity-y: " .. Speed_y, 10)
        --trigger.action.outText("Velocity-z: " .. Speed_z, 10)
        --trigger.action.outText("Position-x.x: " .. Position_x1, 10)
        --trigger.action.outText("Position-x.y: " .. Position_y1, 10)
        --trigger.action.outText("Position-x.z: " .. Position_z1, 10)
        --*************DEBUG PARAMETERS END*************--




        env.info("Event unit - Weapon shot:" .. _weapon:getTypeName())
        if _weapon:getTypeName() == "MK77mod0-WPN" or _weapon:getTypeName() == "MK77mod1-WPN" then -- unit hit by firebomb ... CREATE FIRE!!!

            --trigger.action.effectSmokeBig(TwoZone, 3, 0.75, 'bob')
            --trigger.action.effectSmokeBig(someZone, 1, 0.75, 'jake')
            --trigger.action.effectSmokeStop('bob')


            --trigger.action.effectSmokeBig(ImpactPoint2, 3, 0.75, 'bob6')
            --trigger.action.effectSmokeBig(ImpactPoint, 1, 0.75, 'jake6')
            --trigger.action.effectSmokeStop('bob6')


            local unique_name
            unique_name = math.random(1,1000)
            function fireball_start()
                --trigger.action.effectSmokeBig()
                trigger.action.effectSmokeBig(ImpactPoint2, 3, 0.75, 'bob6')
                --trigger.action.effectSmokeBig(ImpactPoint, 1, 0.75, 'jake6')
                --trigger.action.effectSmokeBig(ImpactPoint3, 1, 0.75, 'jake7')

                --trigger.action.effectSmokeStop('jake6')
                --trigger.action.effectSmokeStop('jake7')
                trigger.action.effectSmokeStop('bob6')

            end



            timer.scheduleFunction(fireball_start, nil, timer.getTime() + t2)
            
            function fireball_end()
                trigger.action.effectSmokeStop('bob6')
            end
            --timer.scheduleFunction(fireball_end, nil, timer.getTime() + t2 + 5)
        
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