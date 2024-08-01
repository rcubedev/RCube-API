# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Setup custom dimension
execute in rcube:api/core/commands run forceload add 0 0 0 0 

# Load message
execute unless data storage rcube:api/core load_message run data modify storage rcube:api/core load_message set value true
execute unless data storage rcube:api/core {installed:true} run data modify storage rcube:api/core installed set value true
execute if data storage rcube:api/core {load_message:true} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "core", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]