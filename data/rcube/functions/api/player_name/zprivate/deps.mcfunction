# Made by: @rcube.
# Run dependency check
#
# Called By: rcube:api/player_name/load

# Init data
data remove storage rcube:api/player_name dependencies
scoreboard players reset * rcubeAPI_playerName.deps

# Module 'core'
execute if predicate rcube:_core/installed run function rcube:api/_core/installed
execute if predicate rcube:_core/installed if data storage rcube:api/core {installed:true,version:{this:"0.4.0",minecraft:"1.20.1"}} run data modify storage rcube:api/player_name private.dependencies append value {module:"core",installed:true}
execute unless data storage rcube:api/player_name private.dependencies[{module:"core",installed:true}] run data modify storage rcube:api/player_name private.dependencies append value {module:"core",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'core\'","color":"gray"}]'}

# Check if all dependencies are installed 
execute store result score $deps.required rcubeAPI_playerName.deps if data storage rcube:api/player_name private.dependencies[]
execute store result score $deps.installed rcubeAPI_playerName.deps if data storage rcube:api/player_name private.dependencies[{installed:true}]
execute if score $deps.installed rcubeAPI_playerName.deps = $deps.required rcubeAPI_playerName.deps run data modify storage rcube:api/player_name private.dependencies prepend value {all:true}
execute unless score $deps.installed rcubeAPI_playerName.deps = $deps.required rcubeAPI_playerName.deps run data modify storage rcube:api/player_name private.dependencies prepend value {all:false}
