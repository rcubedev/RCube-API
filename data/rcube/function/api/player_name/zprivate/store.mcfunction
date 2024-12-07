# Made by: @rcube.
# Store username & UUID in storage

# Remove stale data
data remove storage rcube:api/player_name root.private.temp
data remove storage rcube:api/player_name root.out

# Store player head via loot table
execute in rcube:api/core/commands run loot replace block 0 0 0 container.0 loot rcube:api/player_name/get_head

# Fetch player data via stored head
execute in rcube:api/core/commands run data modify storage rcube:api/player_name root.private.temp.profile set from block 0 0 0 Items[{Slot:0b}].components."minecraft:profile"
data modify storage rcube:api/player_name root.out.username set from storage rcube:api/player_name root.private.temp.profile.name
data modify storage rcube:api/player_name root.out.UUID set from storage rcube:api/player_name root.private.temp.profile.id
