# Made by: @rcube.
# Calculate damage dealt, contribute to player
#
# Called By: rcube:api/damage_dealt/tick

# Set tags
execute on target run tag @s add damage_dealt.private.damaged.temp
tag @s add damage_dealt.private.attacker.temp

# Store UUID of entity attacked and set to attacker
execute if entity @s[tag=damage_dealt.player.total] store result score @s rcubeAPI_damageDealt.UUID0 run data get entity @e[tag=damage_dealt.private.damaged.temp,limit=1] UUID[0]
execute if entity @s[tag=damage_dealt.player.total] store result score @s rcubeAPI_damageDealt.UUID1 run data get entity @e[tag=damage_dealt.private.damaged.temp,limit=1] UUID[1]
execute if entity @s[tag=damage_dealt.player.total] store result score @s rcubeAPI_damageDealt.UUID2 run data get entity @e[tag=damage_dealt.private.damaged.temp,limit=1] UUID[2]
execute if entity @s[tag=damage_dealt.player.total] store result score @s rcubeAPI_damageDealt.UUID3 run data get entity @e[tag=damage_dealt.private.damaged.temp,limit=1] UUID[3]

# Reset total damage if player attacked other entity
execute if entity @s[tag=damage_dealt.player.total] unless score @s rcubeAPI_damageDealt.UUID0 = @s rcubeAPI_damageDealt.UUID0.pre unless score @s rcubeAPI_damageDealt.UUID1 = @s rcubeAPI_damageDealt.UUID1.pre unless score @s rcubeAPI_damageDealt.UUID2 = @s rcubeAPI_damageDealt.UUID2.pre unless score @s rcubeAPI_damageDealt.UUID3 = @s rcubeAPI_damageDealt.UUID3.pre run scoreboard players reset @s rcubeAPI_damageDealt.damage.total

# Contribute damage done to player
scoreboard players operation @s rcubeAPI_damageDealt.damage = @s rcubeAPI_damageDealt.damage.track
execute if entity @s[tag=damage_dealt.player.total] run scoreboard players operation @s rcubeAPI_damageDealt.damage.total += @s rcubeAPI_damageDealt.damage

# Set UUID
execute if entity @s[tag=damage_dealt.player.total] run scoreboard players operation @s rcubeAPI_damageDealt.UUID0.pre = @s rcubeAPI_damageDealt.UUID0
execute if entity @s[tag=damage_dealt.player.total] run scoreboard players operation @s rcubeAPI_damageDealt.UUID1.pre = @s rcubeAPI_damageDealt.UUID1
execute if entity @s[tag=damage_dealt.player.total] run scoreboard players operation @s rcubeAPI_damageDealt.UUID2.pre = @s rcubeAPI_damageDealt.UUID2
execute if entity @s[tag=damage_dealt.player.total] run scoreboard players operation @s rcubeAPI_damageDealt.UUID3.pre = @s rcubeAPI_damageDealt.UUID3

# Run API functions utilising API
tag @s add damage_dealt.out.attacker.temp
tag @e[tag=damage_dealt.private.damaged.temp] add damage_dealt.out.damaged.temp
function #rcube:api/damage_dealt/run

# Remove stale tags
tag @e[tag=damage_dealt.private.damaged.temp] remove damage_dealt.private.damaged.temp
tag @s remove damage_dealt.private.attacker.temp
tag @e[tag=damage_dealt.out.damaged.temp] remove damage_dealt.out.damaged.temp
tag @s remove damage_dealt.out.damaged.temp

# Revoke trigger advancement
advancement revoke @s only rcube:api/damage_dealt/damaged
