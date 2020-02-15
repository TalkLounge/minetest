minetest.register_on_joinplayer(function(player)
		minetest.after(0, function(name)
			local player = minetest.get_player_by_name(name)
			if not player then
				return
			end
			player:set_physics_override({new_move = false, sneak_glitch = true})
		end, player:get_player_name())
end)