# Made by: @rcube.
# Store username & UUID in storage

# Store player head via loot table
execute in rcube:api/core/commands run loot replace block 0 0 0 container.0 loot rcube:api/player_name/get_head

# Fetch player data via stored head
execute in rcube:api/core/commands run data modify storage rcube:api/player_name private.temp.SkullOwner set from block 0 0 0 Items[{Slot:0b}].tag.SkullOwner
data modify storage rcube:api/player_name out.username set from storage rcube:api/player_name private.temp.SkullOwner.Name
data modify storage rcube:api/player_name out.UUID set from storage rcube:api/player_name private.temp.SkullOwner.Id

# Remove stale data
data remove storage rcube:api/player_name private.temp