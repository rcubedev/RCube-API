# Made by: @rcube.
#
# Called By: rcube:api/load

# Check if damage taken
execute as @e[tag=damage_taken.check_damage] at @s run function rcube:api/damage_taken/check
