# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/item root.version.this.str set value "0.1.1"
data modify storage rcube:api/item root.version.this.major set value 0
data modify storage rcube:api/item root.version.this.minor set value 1
data modify storage rcube:api/item root.version.this.patch set value 1

# Store game version
data modify storage rcube:api/item root.version.game.str set value "1.21.2"
data modify storage rcube:api/item root.version.game.major set value 21
data modify storage rcube:api/item root.version.game.patch set value 2

# Set installed state
execute unless data storage rcube:api/item root{installed:true} run data modify storage rcube:api/item root.installed set value true

# Return
return 1
