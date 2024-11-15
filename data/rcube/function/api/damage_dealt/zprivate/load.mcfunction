# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/damage_dealt/installed

# Data
scoreboard objectives add rcubeAPI_damageDealt.damage dummy "[rcube:api/damage_dealt] Damage dealt"
scoreboard objectives add rcubeAPI_damageDealt.damage.total dummy "[rcube:api/damage_dealt] Total damage dealt"
scoreboard objectives add rcubeAPI_damageDealt.damage.track minecraft.custom:minecraft.damage_dealt "[rcube:api/damage_dealt] Track damage dealt"
scoreboard objectives add rcubeAPI_damageDealt.UUID0 dummy "[rcube:api/damage_dealt] Entity UUID0"
scoreboard objectives add rcubeAPI_damageDealt.UUID1 dummy "[rcube:api/damage_dealt] Entity UUID1"
scoreboard objectives add rcubeAPI_damageDealt.UUID2 dummy "[rcube:api/damage_dealt] Entity UUID2"
scoreboard objectives add rcubeAPI_damageDealt.UUID3 dummy "[rcube:api/damage_dealt] Entity UUID3"

scoreboard objectives add rcubeAPI_damageDealt.UUID0.pre dummy "[rcube:api/damage_dealt] Entity UUID0 (check)"
scoreboard objectives add rcubeAPI_damageDealt.UUID1.pre dummy "[rcube:api/damage_dealt] Entity UUID1 (check)"
scoreboard objectives add rcubeAPI_damageDealt.UUID2.pre dummy "[rcube:api/damage_dealt] Entity UUID2 (check)"
scoreboard objectives add rcubeAPI_damageDealt.UUID3.pre dummy "[rcube:api/damage_dealt] Entity UUID3 (check)"

# Load message
execute unless data storage rcube:api/damage_dealt root.private.load_message run data modify storage rcube:api/damage_dealt root.private.load_message set value true
execute if data storage rcube:api/damage_dealt root{private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "damage_dealt", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/damage_dealt root{private:{load_message:true}} unless data storage rcube:api/damage_dealt root{installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "damage_dealt", "color":"red"},{"text": "' ","color": "red"},{"text": "failed to load.","color": "gray"}]

# Run tick
function rcube:api/damage_dealt/zprivate/tick
