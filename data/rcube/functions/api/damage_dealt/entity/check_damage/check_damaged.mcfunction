# Made by: @rcube.
# Check if damaged
#
# Called By: rcube:api/damage_dealt/tick

# Store health
execute store result score @s rcube_api.damage_dealt-entity.track.health run data get entity @s Health

# Store initial health
execute unless entity @s[tag=damage_dealt.entity.check_damage.init] run scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.init = @s rcube_api.damage_dealt-entity.track.health

# Store health (init)
execute unless entity @s[tag=damage_dealt.entity.check_damage.init] run scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.pre = @s rcube_api.damage_dealt-entity.track.health
tag @s[tag=!damage_dealt.entity.check_damage.init] add damage_dealt.entity.check_damage.init

# Check if damaged
execute unless score @s rcube_api.damage_dealt-entity.track.health.pre = @s rcube_api.damage_dealt-entity.track.health run function rcube:api/damage_dealt/entity/check_damage/damaged