-- Updated script file with fixes and improvements

function getClosestKnifePlayer()
    local closest = nil
    local closestDistance = math.huge
    
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player:HasWeapon('Knife') then
            local distance = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closest = player
            end
        end
    end
    return closest
end

-- Other script content

-- Fix references to hooks using getClosestKnifePlayer()

-- Any other updated logic with SilentAimSettings and removed UI code

if FileToSave ~= "" and FileToSave ~= nil then
    -- Save the file
end

-- Check conditions for SilentAimSettings
if SilentAimSettings.Enabled then
    -- do something
end
