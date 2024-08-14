# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Store versions
data modify storage rcube:api/centre_string version.this set value "0.2.0"
data modify storage rcube:api/centre_string version.minecraft set value "1.20.1"

# Data
scoreboard objectives add rcube_api.centre_string dummy
scoreboard players set $const.char_px rcube_api.centre_string 6
scoreboard players set $const.chat_width rcube_api.centre_string 320
scoreboard players set =$num.2 rcube_api.centre_string 2

# Load message
execute unless data storage rcube:api/centre_string load_message run data modify storage rcube:api/centre_string load_message set value true
execute unless data storage rcube:api/centre_string {installed:true} run data modify storage rcube:api/centre_string installed set value true
execute if data storage rcube:api/centre_string {load_message:true} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "centre_string", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]