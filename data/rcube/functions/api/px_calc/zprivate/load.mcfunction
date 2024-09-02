# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Store versions
data modify storage rcube:api/px_calc version.this set value "0.1.0"
data modify storage rcube:api/px_calc version.minecraft set value "1.20.1"

# Data
scoreboard objectives add rcubeAPI_pxCalc dummy

# Load message
execute unless data storage rcube:api/px_calc private.load_message run data modify storage rcube:api/px_calc private.load_message set value true
execute unless data storage rcube:api/px_calc {installed:true} run data modify storage rcube:api/px_calc installed set value true
execute if data storage rcube:api/px_calc {private:{load_message:true}} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "px_calc", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]