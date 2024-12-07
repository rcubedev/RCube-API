# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/centre_string root.version.this.str set value "0.16.1"
data modify storage rcube:api/centre_string root.version.this.major set value 0
data modify storage rcube:api/centre_string root.version.this.minor set value 16
data modify storage rcube:api/centre_string root.version.this.patch set value 1

# Store game version
data modify storage rcube:api/centre_string root.version.game.str set value "1.21.2"
data modify storage rcube:api/centre_string root.version.game.major set value 21
data modify storage rcube:api/centre_string root.version.game.patch set value 2

# Check deps
function rcube:api/centre_string/zprivate/deps

# Set installed state
execute if data storage rcube:api/centre_string root{private:{dependencies:[{all:true}]}} run data modify storage rcube:api/centre_string root.installed set value true
execute unless data storage rcube:api/centre_string root{private:{dependencies:[{all:true}]}} run data modify storage rcube:api/centre_string root.installed set value false

# Return
return 1
