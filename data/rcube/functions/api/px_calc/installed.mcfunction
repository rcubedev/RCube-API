# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/px_calc root.version.this.str set value "0.8.0"
data modify storage rcube:api/px_calc root.version.this.major set value 0
data modify storage rcube:api/px_calc root.version.this.minor set value 8
data modify storage rcube:api/px_calc root.version.this.patch set value 0

# Store game version
data modify storage rcube:api/px_calc root.version.game.str set value "1.20.4"
data modify storage rcube:api/px_calc root.version.game.major set value 20
data modify storage rcube:api/px_calc root.version.game.patch set value 4

# Set installed state
execute unless data storage rcube:api/px_calc root{installed:true} run data modify storage rcube:api/px_calc root.installed set value true

# Return
return 1
