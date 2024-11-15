# Made by: @rcube.
# Use for public facing api

# Fetch player data
execute if data storage rcube:api/player_name root{installed:true} run function rcube:api/player_name/zprivate/store

# Not in "installed" state, error
execute unless data storage rcube:api/player_name root{installed:true} run data modify storage rcube:api/player_name out.username set value "$!ERR"
execute unless data storage rcube:api/player_name root{installed:true} run data modify storage rcube:api/player_name out.UUID set value [I;0,0,0,0]
