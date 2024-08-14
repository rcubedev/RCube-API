# Made by: @rcube.
# Store username & UUID in storage

execute unless data storage rcube:api/core {installed:true} run data modify storage rcube:api/player_name output.username set value "Error: Module 'core' not installed"
execute unless data storage rcube:api/core {installed:true} run data remove storage rcube:api/player_name output.UUID[]

# Store player head via loot table
execute if data storage rcube:api/core {installed:true} in rcube:api/core/commands run loot replace block 0 0 0 container.0 loot rcube:api/player_name/get_head

# Fetch player data via stored head
execute if data storage rcube:api/core {installed:true} in rcube:api/core/commands run data modify storage rcube:api/player_name private.temp.SkullOwner set from block 0 0 0 Items[{Slot:0b}].tag.SkullOwner
data modify storage rcube:api/player_name output.username set from storage rcube:api/player_name private.temp.SkullOwner.Name
data modify storage rcube:api/player_name output.UUID set from storage rcube:api/player_name private.temp.SkullOwner.Id

# Remove stale data
data remove storage rcube:api/player_name private.temp