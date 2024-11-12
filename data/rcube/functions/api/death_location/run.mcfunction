# Made by: @rcube.
# Find death location

# Remove stale data
data remove storage rcube:api/death_location root.private.LastDeathLocation

# Copy "LastDeathLocation" to storage
data modify storage rcube:api/death_location root.private.LastDeathLocation set from entity @s LastDeathLocation

# Convert LastDeathLocation "pos" int-array to a "Pos" double-list
execute if data entity @s LastDeathLocation.pos run data modify storage rcube:api/death_location root.out.Pos set value [0d,0d,0d]
execute store result storage rcube:api/death_location root.out.Pos[0] double 1 run data get storage rcube:api/death_location root.private.LastDeathLocation.pos[0]
execute store result storage rcube:api/death_location root.out.Pos[1] double 1 run data get storage rcube:api/death_location root.private.LastDeathLocation.pos[1]
execute store result storage rcube:api/death_location root.out.Pos[2] double 1 run data get storage rcube:api/death_location root.private.LastDeathLocation.pos[2]

# Migrate output dimension
data modify storage rcube:api/death_location root.out.dimension set from storage rcube:api/death_location root.private.LastDeathLocation.dimension
