# Made by @rcube.
# Function used to check installed state

# Store versions
data modify storage rcube:api/centre_string version.this set value "0.9.0"
data modify storage rcube:api/centre_string version.minecraft set value "1.20.1"

# Check deps
function rcube:api/centre_string/zprivate/deps

# Set installed state
execute if data storage rcube:api/centre_string {private:{dependencies:[{all:true}]}} run data modify storage rcube:api/centre_string installed set value true
execute unless data storage rcube:api/centre_string {private:{dependencies:[{all:true}]}} run data modify storage rcube:api/centre_string installed set value false
