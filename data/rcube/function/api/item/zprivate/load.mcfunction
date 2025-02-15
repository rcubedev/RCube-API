# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/item/installed

# Data
scoreboard objectives add rcubeAPI_item dummy "[rcube:dragon_rework] Item"

# Load message
execute unless data storage rcube:api/item root.private.load_message run data modify storage rcube:api/item root.private.load_message set value true
execute if data storage rcube:api/item root{private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "item", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/item root{private:{load_message:true}} unless data storage rcube:api/item root{installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "item", "color":"red"},{"text": "' ","color": "red"},{"text": "failed to load.","color": "gray"}]
