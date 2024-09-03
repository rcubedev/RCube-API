# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/centre_string/installed

# Data
scoreboard objectives add rcubeAPI_centreString dummy "[rcube:api/centre_string] Data"
scoreboard objectives add rcubeAPI_centreString.const dummy "[rcube:api/centre_string] Constant Data"
scoreboard objectives add rcubeAPI_centreString.deps dummy "[rcube:api/centre_string] Dependencies"
scoreboard players set $const.chat_width rcubeAPI_centreString.const 320
scoreboard players set =$num.2 rcubeAPI_centreString.const 2

# Load message
execute unless data storage rcube:api/centre_string private.load_message run data modify storage rcube:api/centre_string private.load_message set value true
execute if data storage rcube:api/centre_string {private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "centre_string", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/centre_string {private:{load_message:true}} unless data storage rcube:api/centre_string {installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "centre_string", "color":"red"},{"text": "' ","color": "red"},{"text": "is missing dependencies.\n","color": "gray"},{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] Missing Dependencies:\n","color": "dark_gray"},{"nbt":"dependencies[].missing[]","storage":"rcube:api/centre_string","interpret":true,"separator":"\n\n"}]
