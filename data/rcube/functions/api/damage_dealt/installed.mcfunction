# Made by @rcube.
# Function used to check installed state

# Store versions
data modify storage rcube:api/damage_dealt version.this set value "0.8.1"
data modify storage rcube:api/damage_dealt version.minecraft set value "1.20.1"

# Set installed state
execute unless data storage rcube:api/damage_dealt {installed:true} run data modify storage rcube:api/damage_dealt installed set value true
