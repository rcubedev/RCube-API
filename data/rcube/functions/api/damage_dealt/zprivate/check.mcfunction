# Made by: @rcube.
# Check if damaged
#
# Called By: rcube:api/damage_dealt/tick

# Store health
execute store result score @s rcubeAPI_damageDealt.track.health run data get entity @s Health

# Store max health
execute if entity @s[tag=damage_dealt.health.max] unless entity @s[tag=damage_dealt.private.check_damage.init] run scoreboard players operation @s rcubeAPI_damageDealt.track.health.init = @s rcubeAPI_damageDealt.track.health

# Store health (init)
execute unless entity @s[tag=damage_dealt.private.check_damage.init] run scoreboard players operation @s rcubeAPI_damageDealt.track.health.pre = @s rcubeAPI_damageDealt.track.health
tag @s[tag=!damage_dealt.private.check_damage.init] add damage_dealt.private.check_damage.init

# Check if damaged
execute if score @s rcubeAPI_damageDealt.track.health.pre > @s rcubeAPI_damageDealt.track.health run function rcube:api/damage_dealt/zprivate/damaged