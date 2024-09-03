# Made by @rcube.
# Function used to check installed state

# Store versions
data modify storage rcube:api/centre_string version.this set value "0.8.0"
data modify storage rcube:api/centre_string version.minecraft set value "1.20.1"

# Set installed state
execute unless data storage rcube:api/centre_string {installed:true} run data modify storage rcube:api/centre_string installed set value true
