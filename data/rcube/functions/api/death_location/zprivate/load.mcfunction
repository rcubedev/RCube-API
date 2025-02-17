# Made by: @rcube.
# Setup module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/death_location/installed

# Load message
execute unless data storage rcube:api/death_location root.private.load_message run data modify storage rcube:api/death_location root.private.load_message set value true
execute if data storage rcube:api/death_location root{private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "death_location", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/death_location root{private:{load_message:true}} unless data storage rcube:api/death_location root{installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "death_location", "color":"red"},{"text": "' ","color": "red"},{"text": "failed to load.","color": "gray"}]
