# Made by: @rcube.
# Check if all dependencies are installed
# If not, error
#
# Called By: rcube:api/player_name/load

# Init data
data remove storage rcube:api/player_name dependencies
scoreboard players reset * rcube_api.player_name-deps

# Module 'core'
execute if data storage rcube:api/core {installed:true,version:{this:"0.2.0",minecraft:"1.20.1"}} run data modify storage rcube:api/player_name dependencies append value {module:"core",installed:true}
execute unless data storage rcube:api/core {installed:true,version:{this:"0.2.0",minecraft:"1.20.1"}} run data modify storage rcube:api/player_name dependencies append value {module:"core",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'core\' ","color":"gray"},{"text":"\\n      Stores head data from loot table","color":"gray","italic":"true"}]'}
execute unless data storage rcube:api/core {installed:true,version:{this:"0.2.0",minecraft:"1.20.1"}} run data modify storage rcube:api/player_name dependencies append value {value:true}


# Check if all dependencies are installed 
execute store result score .length rcube_api.player_name-deps if data storage rcube:api/player_name dependencies[]
execute store result score .true rcube_api.player_name-deps if data storage rcube:api/player_name dependencies[{installed:true}]
execute if score .true rcube_api.player_name-deps = .length rcube_api.player_name-deps run data modify storage rcube:api/player_name dependencies prepend value {all_installed:true}
execute unless score .true rcube_api.player_name-deps = .length rcube_api.player_name-deps run data modify storage rcube:api/player_name dependencies prepend value {all_installed:false}