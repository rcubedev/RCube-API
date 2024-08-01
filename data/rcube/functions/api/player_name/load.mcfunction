# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Data
scoreboard objectives add rcube_api.player_name-deps dummy

# Load message
execute unless data storage rcube:api/player_name load_message run data modify storage rcube:api/player_name load_message set value true

# Check for dependencies
function rcube:api/player_name/check_deps

# Set installed state
execute if data storage rcube:api/player_name {dependencies:[{all_installed:true}]} run data modify storage rcube:api/player_name installed set value true
execute unless data storage rcube:api/player_name {dependencies:[{all_installed:true}]} run data modify storage rcube:api/player_name installed set value false

execute if data storage rcube:api/player_name {load_message:true,installed:true} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "player_name", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/player_name {load_message:true} unless data storage rcube:api/core {installed:true} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "player_name", "color":"red"},{"text": "' ","color": "red"},{"text": "is missing dependencies.\n","color": "gray"},{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] Missing Dependencies:\n","color": "dark_gray"},{"nbt":"dependencies[].missing[]","storage":"rcube:api/player_name","interpret":true,"separator":"\n\n"}]

# Check dependencies
schedule function rcube:api/player_name/check_deps 2t