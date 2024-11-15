# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/core root.version.this.str set value "0.11.0"
data modify storage rcube:api/core root.version.this.major set value 0
data modify storage rcube:api/core root.version.this.minor set value 11
data modify storage rcube:api/core root.version.this.patch set value 0

# Store game version
data modify storage rcube:api/core root.version.game.str set value "1.21.2"
data modify storage rcube:api/core root.version.game.major set value 21
data modify storage rcube:api/core root.version.game.patch set value 2

# Set installed state
execute unless data storage rcube:api/core root{installed:true} run data modify storage rcube:api/core root.installed set value true

# Return
return 1
