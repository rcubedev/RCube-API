# Made by: @rcube.
# Check if damaged
# In public API to allow summing damage prior to death
#
# Called By: rcube:api/damage_taken/zprivate/tick

# Store health
execute store result score @s rcubeAPI_damageTaken.track.health run data get entity @s Health

# Store max health
execute if entity @s[tag=damage_taken.health.max] unless entity @s[tag=damage_taken.private.check_damage.init] run scoreboard players operation @s rcubeAPI_damageTaken.track.health.init = @s rcubeAPI_damageTaken.track.health

# Store health (init)
execute unless entity @s[tag=damage_taken.private.check_damage.init] run scoreboard players operation @s rcubeAPI_damageTaken.track.health.pre = @s rcubeAPI_damageTaken.track.health
tag @s[tag=!damage_taken.private.check_damage.init] add damage_taken.private.check_damage.init

# Check if damaged
execute if score @s rcubeAPI_damageTaken.track.health.pre > @s rcubeAPI_damageTaken.track.health run function rcube:api/damage_taken/zprivate/damaged
