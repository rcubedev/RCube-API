# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Store versions
data modify storage rcube:api/damage_dealt version.this set value "0.6.2"
data modify storage rcube:api/damage_dealt version.minecraft set value "1.20.1"

# Data
scoreboard objectives add rcube_api.damage_dealt-entity.track.health dummy
scoreboard objectives add rcube_api.damage_dealt-entity.track.health.pre dummy
scoreboard objectives add rcube_api.damage_dealt-entity.track.health.lost dummy
scoreboard objectives add rcube_api.damage_dealt-entity.track.health.dmgTaken dummy
scoreboard objectives add rcube_api.damage_dealt-entity.track.health.init dummy
scoreboard objectives add rcube_api.damage_dealt-entity.damage dummy
scoreboard objectives add rcube_api.damage_dealt-entity.damage.total dummy
scoreboard objectives add rcube_api.damage_dealt-entity.UUID0 dummy
scoreboard objectives add rcube_api.damage_dealt-entity.UUID1 dummy
scoreboard objectives add rcube_api.damage_dealt-entity.UUID2 dummy
scoreboard objectives add rcube_api.damage_dealt-entity.UUID3 dummy

scoreboard objectives add rcube_api.damage_dealt-entity.UUID0.pre dummy
scoreboard objectives add rcube_api.damage_dealt-entity.UUID1.pre dummy
scoreboard objectives add rcube_api.damage_dealt-entity.UUID2.pre dummy
scoreboard objectives add rcube_api.damage_dealt-entity.UUID3.pre dummy

# Load message
execute unless data storage rcube:api/damage_dealt private.load_message run data modify storage rcube:api/damage_dealt private.load_message set value true
execute unless data storage rcube:api/damage_dealt {installed:true} run data modify storage rcube:api/damage_dealt installed set value true
execute if data storage rcube:api/damage_dealt {private:{load_message:true}} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "damage_dealt", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]