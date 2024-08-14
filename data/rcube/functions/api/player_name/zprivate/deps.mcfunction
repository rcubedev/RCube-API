# Made by: @rcube.
# Check if all dependencies are installed
# If not, error
#
# Called By: rcube:api/player_name/load

# Init data
data remove storage rcube:api/player_name dependencies
scoreboard players reset * rcubeAPI_playerName.deps

# Module 'core'
execute if data storage rcube:api/core {installed:true,version:{this:"0.3.2",minecraft:"1.20.1"}} run data modify storage rcube:api/player_name private.dependencies append value {module:"core",installed:true}
execute unless data storage rcube:api/core {installed:true,version:{this:"0.3.2",minecraft:"1.20.1"}} run data modify storage rcube:api/player_name private.dependencies append value {module:"core",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'core\' ","color":"gray"}]'}
# execute unless data storage rcube:api/core {installed:true,version:{this:"0.1.0",minecraft:"1.20.1"}} run data modify storage rcube:api/player_name private.dependencies append value {module:"core",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'core\' ","color":"gray"},{"text":"\\n      Core features","color":"gray","italic":"true"}]'}

# Check if all dependencies are installed 
execute store result score $deps.required rcubeAPI_playerName.deps if data storage rcube:api/player_name private.dependencies[]
execute store result score $deps.installed rcubeAPI_playerName.deps if data storage rcube:api/player_name private.dependencies[{installed:true}]
data remove storage rcube:api/player_name private.dependencies[].all
execute if score $deps.required rcubeAPI_playerName.deps = $deps.required rcubeAPI_playerName.deps run data modify storage rcube:api/player_name private.dependencies prepend value {all:true}
execute unless score $deps.installed rcubeAPI_playerName.deps = $deps.required rcubeAPI_playerName.deps run data modify storage rcube:api/player_name private.dependencies prepend value {all:false}