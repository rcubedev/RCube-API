# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/centre_string version.this.str set value "0.11.0"
data modify storage rcube:api/centre_string version.this.major set value 0
data modify storage rcube:api/centre_string version.this.minor set value 11
data modify storage rcube:api/centre_string version.this.patch set value 0

# Store game version
data modify storage rcube:api/centre_string version.game.str set value "1.20.1"
data modify storage rcube:api/centre_string version.game.major set value 20
data modify storage rcube:api/centre_string version.game.patch set value 1

# Check deps
function rcube:api/centre_string/zprivate/deps

# Set installed state
execute if data storage rcube:api/centre_string {private:{dependencies:[{all:true}]}} run data modify storage rcube:api/centre_string installed set value true
execute unless data storage rcube:api/centre_string {private:{dependencies:[{all:true}]}} run data modify storage rcube:api/centre_string installed set value false
