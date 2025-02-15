# Made by: @rcube.
# Variable damage
#
# Called By: rcube:api/load

# Run function
$function $(function) with storage rcube:api/item root.private.temp

# Move data
data modify storage rcube:api/item root.private.temp.data.damage.inflict set from storage rcube:api/item root.in.data.damage.inflict
data remove storage rcube:api/item root.in.data.damage.inflict
