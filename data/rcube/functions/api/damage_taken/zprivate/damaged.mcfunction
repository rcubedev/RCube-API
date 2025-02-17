# Made by: @rcube.
# Calculate damage dealt, contribute to player
#
# Called By: rcube:api/damage_taken/check

# Set tags
tag @s add damage_taken.private.damaged.temp
execute on attacker run tag @s add damage_taken.private.attacker.temp
tag @s add damage_taken.out.damaged

# Store UUID of entity attacked and set to attacker
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] store result score @s rcubeAPI_damageTaken.UUID0 run data get entity @e[tag=damage_taken.private.damaged.temp,limit=1] UUID[0]
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] store result score @s rcubeAPI_damageTaken.UUID1 run data get entity @e[tag=damage_taken.private.damaged.temp,limit=1] UUID[1]
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] store result score @s rcubeAPI_damageTaken.UUID2 run data get entity @e[tag=damage_taken.private.damaged.temp,limit=1] UUID[2]
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] store result score @s rcubeAPI_damageTaken.UUID3 run data get entity @e[tag=damage_taken.private.damaged.temp,limit=1] UUID[3]

# Track damage taken & health lost
scoreboard players operation @s rcubeAPI_damageTaken.track.health.dmgTaken = @s rcubeAPI_damageTaken.track.health.pre
scoreboard players operation @s rcubeAPI_damageTaken.track.health.dmgTaken -= @s rcubeAPI_damageTaken.track.health
execute if entity @s[tag=damage_taken.health.total.lost] run scoreboard players operation @s rcubeAPI_damageTaken.track.health.lost += @s rcubeAPI_damageTaken.track.health.dmgTaken

# Reset total damage if player attacked other entity
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] unless score @s rcubeAPI_damageTaken.UUID0 = @s rcubeAPI_damageTaken.UUID0.pre unless score @s rcubeAPI_damageTaken.UUID1 = @s rcubeAPI_damageTaken.UUID1.pre unless score @s rcubeAPI_damageTaken.UUID2 = @s rcubeAPI_damageTaken.UUID2.pre unless score @s rcubeAPI_damageTaken.UUID3 = @s rcubeAPI_damageTaken.UUID3.pre run scoreboard players reset @s rcubeAPI_damageTaken.damage.total

# Contribute damage done to player
execute as @e[tag=damage_taken.private.attacker.temp,limit=1] run scoreboard players operation @s rcubeAPI_damageTaken.damage = @e[tag=damage_taken.private.damaged.temp,limit=1] rcubeAPI_damageTaken.track.health.dmgTaken
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] run scoreboard players operation @s rcubeAPI_damageTaken.damage.total += @s rcubeAPI_damageTaken.damage

# Set health
scoreboard players operation @s rcubeAPI_damageTaken.track.health.pre = @s rcubeAPI_damageTaken.track.health

# Set UUID
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] run scoreboard players operation @s rcubeAPI_damageTaken.UUID0.pre = @s rcubeAPI_damageTaken.UUID0
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] run scoreboard players operation @s rcubeAPI_damageTaken.UUID1.pre = @s rcubeAPI_damageTaken.UUID1
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] run scoreboard players operation @s rcubeAPI_damageTaken.UUID2.pre = @s rcubeAPI_damageTaken.UUID2
execute if entity @s[tag=damage_taken.damage.total] as @e[tag=damage_taken.private.attacker.temp,limit=1] run scoreboard players operation @s rcubeAPI_damageTaken.UUID3.pre = @s rcubeAPI_damageTaken.UUID3

# Remove stale tag
tag @s remove damage_taken.private.damaged.temp
tag @e[tag=damage_taken.private.attacker.temp] remove damage_taken.private.attacker.temp
