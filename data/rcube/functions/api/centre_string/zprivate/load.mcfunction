# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Store versions
data modify storage rcube:api/centre_string version.this set value "0.3.0"
data modify storage rcube:api/centre_string version.minecraft set value "1.20.1"

# Data
scoreboard objectives add rcubeAPI-centre_string dummy
scoreboard objectives add rcubeAPI-centre_string.const dummy
scoreboard players set $const.char_px rcubeAPI-centre_string.const 6
scoreboard players set $const.chat_width rcubeAPI-centre_string.const 320
scoreboard players set =$num.2 rcubeAPI-centre_string.const 2

# Load message
execute unless data storage rcube:api/centre_string private.load_message run data modify storage rcube:api/centre_string private.load_message set value true
execute unless data storage rcube:api/centre_string {installed:true} run data modify storage rcube:api/centre_string installed set value true
execute if data storage rcube:api/centre_string {private:{load_message:true}} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "centre_string", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]