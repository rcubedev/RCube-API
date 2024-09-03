# Made by @rcube.
# Function used to check installed state

# Store versions
data modify storage rcube:api/px_calc version.this set value "0.3.0"
data modify storage rcube:api/px_calc version.minecraft set value "1.20.1"

# Set installed state
execute unless data storage rcube:api/px_calc {installed:true} run data modify storage rcube:api/px_calc installed set value true
