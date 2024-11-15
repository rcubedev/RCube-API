# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/damage_taken/installed

# Data
scoreboard objectives add rcubeAPI_damageTaken.track.health dummy "[rcube:api/damage_taken] Health"
scoreboard objectives add rcubeAPI_damageTaken.track.health.pre dummy "[rcube:api/damage_taken] Health (check)"
scoreboard objectives add rcubeAPI_damageTaken.track.health.lost dummy "[rcube:api/damage_taken] Health: Lost"
scoreboard objectives add rcubeAPI_damageTaken.track.health.dmgTaken dummy "[rcube:api/damage_taken] Health: Damage Taken"
scoreboard objectives add rcubeAPI_damageTaken.track.health.init dummy "[rcube:api/damage_taken] Initial Health"
scoreboard objectives add rcubeAPI_damageTaken.damage dummy "[rcube:api/damage_taken] Player damage dealt"
scoreboard objectives add rcubeAPI_damageTaken.damage.total dummy "[rcube:api/damage_taken] Player total damage dealt"
scoreboard objectives add rcubeAPI_damageTaken.UUID0 dummy "[rcube:api/damage_taken] Entity UUID0"
scoreboard objectives add rcubeAPI_damageTaken.UUID1 dummy "[rcube:api/damage_taken] Entity UUID1"
scoreboard objectives add rcubeAPI_damageTaken.UUID2 dummy "[rcube:api/damage_taken] Entity UUID2"
scoreboard objectives add rcubeAPI_damageTaken.UUID3 dummy "[rcube:api/damage_taken] Entity UUID3"

scoreboard objectives add rcubeAPI_damageTaken.UUID0.pre dummy "[rcube:api/damage_taken] Entity UUID0 (check)"
scoreboard objectives add rcubeAPI_damageTaken.UUID1.pre dummy "[rcube:api/damage_taken] Entity UUID1 (check)"
scoreboard objectives add rcubeAPI_damageTaken.UUID2.pre dummy "[rcube:api/damage_taken] Entity UUID2 (check)"
scoreboard objectives add rcubeAPI_damageTaken.UUID3.pre dummy "[rcube:api/damage_taken] Entity UUID3 (check)"

# Load message
execute unless data storage rcube:api/damage_taken root.private.load_message run data modify storage rcube:api/damage_taken root.private.load_message set value true
execute if data storage rcube:api/damage_taken root{private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "damage_taken", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/damage_taken root{private:{load_message:true}} unless data storage rcube:api/damage_taken root{installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "damage_taken", "color":"red"},{"text": "' ","color": "red"},{"text": "failed to load.","color": "gray"}]
