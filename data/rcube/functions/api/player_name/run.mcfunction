# Made by: @rcube.
# Run checks for function

# If not missing deps, fetch player data
execute if data storage rcube:api/player_name {installed:true} run function rcube:api/player_name/zprivate/store

# If missing deps, provide false data UUID with error
execute unless data storage rcube:api/player_name {installed:true} run data modify storage rcube:api/player_name output.username set value "$err: missing dep(s)"
execute unless data storage rcube:api/player_name {installed:true} run data remove storage rcube:api/player_name output.UUID
execute unless data storage rcube:api/player_name {installed:true} run data modify storage rcube:api/player_name output.UUID append value 0
execute unless data storage rcube:api/player_name {installed:true} run data modify storage rcube:api/player_name output.UUID append value 0
execute unless data storage rcube:api/player_name {installed:true} run data modify storage rcube:api/player_name output.UUID append value 0
execute unless data storage rcube:api/player_name {installed:true} run data modify storage rcube:api/player_name output.UUID append value 0
