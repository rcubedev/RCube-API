# Made by: @rcube.
# Setup module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/_core/installed

# Setup core dimension
execute in rcube:api/core/commands run forceload add 0 0 0 0
# Item Data
execute in rcube:api/core/commands run setblock 0 0 0 yellow_shulker_box

# Load message
execute unless data storage rcube:api/core private.load_message run data modify storage rcube:api/core private.load_message set value true
execute if data storage rcube:api/core {private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "core", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/core {private:{load_message:true}} unless data storage rcube:api/core {installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "core", "color":"red"},{"text": "' ","color": "red"},{"text": "failed to load.","color": "gray"}]
