# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

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
execute if data storage rcube:api/damage_dealt {load_message:true} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "damage_dealt", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute unless data storage rcube:api/damage_dealt load_message run data merge storage rcube:api/damage_dealt {load_message:true}
execute unless data storage rcube:api/damage_dealt {installed:true} run data merge storage rcube:api/damage_dealt {installed:true}