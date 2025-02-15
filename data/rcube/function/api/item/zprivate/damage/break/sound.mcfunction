# Made by: @rcube.
# Play break sound
# 
# Called By: rcube:api/item/zprivate/damage
# Ran as: Entity, Player

# Break sound
$playsound minecraft:entity.item.break player @a ~ ~ ~ 1 $(random)
