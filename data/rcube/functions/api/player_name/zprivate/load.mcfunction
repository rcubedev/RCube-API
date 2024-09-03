# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/player_name/installed

# Data
scoreboard objectives add rcubeAPI_playerName.deps dummy "[rcube:api/player_name] Dependencies"

# Load message
execute unless data storage rcube:api/player_name private.load_message run data modify storage rcube:api/player_name private.load_message set value true
execute if data storage rcube:api/player_name {private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "player_name", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/player_name {private:{load_message:true}} unless data storage rcube:api/player_name {installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "player_name", "color":"red"},{"text": "' ","color": "red"},{"text": "is missing dependencies.\n","color": "gray"},{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] Missing Dependencies:\n","color": "dark_gray"},{"nbt":"dependencies[].missing[]","storage":"rcube:api/player_name","interpret":true,"separator":"\n\n"}]
