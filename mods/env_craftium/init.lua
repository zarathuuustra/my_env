core.register_globalstep(function()
 -- Get the player's object
local player = core.get_connected_players()[1]

-- Check if the player is connected
if player == nil then
	return
end
-- Get the player's Y position
local y = player:get_pos()[2]
-- Set the reward value for the current step
set_reward(-y)
 end)

-- This function is run every time the player dies
core.register_on_dieplayer(function(obj, rn)
-- Set the termination flag to true
set_termination()
end)