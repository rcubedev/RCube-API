# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/core root.version.this.str set value "0.7.0"
data modify storage rcube:api/core root.version.this.major set value 0
data modify storage rcube:api/core root.version.this.minor set value 7
data modify storage rcube:api/core root.version.this.patch set value 0

# Store game version
data modify storage rcube:api/core root.version.game.str set value "1.20.1"
data modify storage rcube:api/core root.version.game.major set value 20
data modify storage rcube:api/core root.version.game.patch set value 1

# Set installed state
execute unless data storage rcube:api/core root{installed:true} run data modify storage rcube:api/core root.installed set value true
