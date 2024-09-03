# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/px_calc/installed

# Data
scoreboard objectives add rcubeAPI_pxCalc dummy "[rcube:api/px_calc] Data"

# Load message
execute unless data storage rcube:api/px_calc private.load_message run data modify storage rcube:api/px_calc private.load_message set value true
execute if data storage rcube:api/px_calc {private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "px_calc", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/px_calc {private:{load_message:true}} unless data storage rcube:api/px_calc {installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "px_calc", "color":"red"},{"text": "' ","color": "red"},{"text": "failed to load.","color": "gray"}]
