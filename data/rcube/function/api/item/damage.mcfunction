# Made by: @rcube.
# Damage item (break if needed/output)
# Users are required to:
#  - define max_damage component when item given
#  - define damage component as 0 or any value when item given

# Remove stale data
data remove storage rcube:api/item root.out
data remove storage rcube:api/item root.private.temp
scoreboard players reset #in rcubeAPI_item
scoreboard players reset $damage_max rcubeAPI_item
scoreboard players reset $damage_add rcubeAPI_item
scoreboard players reset $damage rcubeAPI_item
scoreboard players reset #damage.total rcubeAPI_item
scoreboard players reset #damage.exclude rcubeAPI_item
scoreboard players reset #gamemode rcubeAPI_item

# Move data
data modify storage rcube:api/item root.private.temp set from storage rcube:api/item root.in
execute unless data storage rcube:api/item root.in run scoreboard players set #in rcubeAPI_item 0
data remove storage rcube:api/item root.in
execute if score #in rcubeAPI_item matches 0 run data modify storage rcube:api/item root.private.temp.components."minecraft:max_damage" set from entity @s SelectedItem.components."minecraft:max_damage"
execute if score #in rcubeAPI_item matches 0 run data modify storage rcube:api/item root.private.temp.components."minecraft:damage" set from entity @s SelectedItem.components."minecraft:damage"
execute if score #in rcubeAPI_item matches 0 run data modify storage rcube:api/item root.private.temp.data set from entity @s SelectedItem.components."minecraft:custom_data".rcube.item
execute store result score $damage rcubeAPI_item run data get storage rcube:api/item root.private.temp.components."minecraft:damage" 10000
execute store result score #damage.total rcubeAPI_item run data get storage rcube:api/item root.private.temp.components."minecraft:max_damage" 10000
execute store result score $damage_max rcubeAPI_item run data get storage rcube:api/item root.private.temp.components."minecraft:max_damage" 1

# Fetch damage to inflict (if variable damage)
# If damage is variable, run function to find damage to inflict & store
execute unless data storage rcube:api/item root.private.temp.data.damage{"function":"none"} run function rcube:api/item/zprivate/damage/var with storage rcube:api/item root.private.temp.data.damage
execute if data storage rcube:api/item root.private.temp.data.damage.inflict store result score $damage_add rcubeAPI_item run data get storage rcube:api/item root.private.temp.data.damage.inflict 10000
# If damage isn't set, set to default
execute unless score $damage_add rcubeAPI_item matches -2147483648..2147483647 run scoreboard players set $damage_add rcubeAPI_item 10000

# Fetch gamemode
execute if score #in rcubeAPI_item matches 0 if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players set #gamemode rcubeAPI_item 1

# Damage item
scoreboard players operation $damage rcubeAPI_item += $damage_add rcubeAPI_item
scoreboard players operation #damage.total rcubeAPI_item -= $damage rcubeAPI_item
scoreboard players operation $damage rcubeAPI_item = #damage.total rcubeAPI_item
scoreboard players operation $damage rcubeAPI_item /= $damage_max rcubeAPI_item
execute if score #gamemode rcubeAPI_item matches 1 run item modify entity @s weapon.mainhand rcube:api/item/damage

# Break item
execute if score #in rcubeAPI_item matches 0 if score #gamemode rcubeAPI_item matches 1 run data modify storage rcube:api/item root.private.temp.components."minecraft:damage" set from entity @s SelectedItem.components."minecraft:damage"
execute if score #in rcubeAPI_item matches 0 if score #gamemode rcubeAPI_item matches 1 store result score #damage.exclude rcubeAPI_item run data get storage rcube:api/item root.private.temp.components."minecraft:damage"
execute if score #in rcubeAPI_item matches 0 if score #gamemode rcubeAPI_item matches 1 run scoreboard players operation $damage_max rcubeAPI_item -= #damage.exclude rcubeAPI_item
execute unless score #in rcubeAPI_item matches 0 run scoreboard players operation $damage_max rcubeAPI_item -= #damage.exclude rcubeAPI_item
execute if score #in rcubeAPI_item matches 0 if score #gamemode rcubeAPI_item matches 1 if score $damage_max rcubeAPI_item matches ..0 store result storage rcube:api/item root.private.temp.random float 0.01 run random value 80..120
execute unless score #in rcubeAPI_item matches 0 if score $damage_max rcubeAPI_item matches ..0 store result storage rcube:api/item root.out.sound_rng float 0.01 run random value 80..120
execute if score #in rcubeAPI_item matches 0 if score #gamemode rcubeAPI_item matches 1 if score $damage_max rcubeAPI_item matches ..0 run item replace entity @s weapon.mainhand with air
execute if score #in rcubeAPI_item matches 0 if score #gamemode rcubeAPI_item matches 1 if score $damage_max rcubeAPI_item matches ..0 run function rcube:api/item/zprivate/damage/break/sound with storage rcube:api/item root.private.temp
execute unless score #in rcubeAPI_item matches 0 if score $damage_max rcubeAPI_item matches ..0 run data modify storage rcube:api/item root.out.break set value true
