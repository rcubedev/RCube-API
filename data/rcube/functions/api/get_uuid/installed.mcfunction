# ............................................................................................................
# This module is a fork of gibbsly's Simple UUID Converter (https://github.com/gibbsly/gu)
# Simple UUID Converter (gibbsly/gu) is licensed under The Unlicense.
#    - This allows private, commercial, modification and redistribution, and is part of the public domain
#    - The license included in the API does not apply to this module.
#    - "The Unlicense" is included in both this project's main LICENSE file and in this module
# ............................................................................................................

# ............................................................................................................
# This module and all its code is licensed under "The Unlicense"
# ............................................................................................................
# Function used to check installed state

# Store version
data modify storage rcube:api/get_uuid root.version.this.str set value "0.2.0"
data modify storage rcube:api/get_uuid root.version.this.major set value 0
data modify storage rcube:api/get_uuid root.version.this.minor set value 2
data modify storage rcube:api/get_uuid root.version.this.patch set value 0

# Store game version
data modify storage rcube:api/get_uuid root.version.game.str set value "1.20.1"
data modify storage rcube:api/get_uuid root.version.game.major set value 20
data modify storage rcube:api/get_uuid root.version.game.patch set value 1

# Set installed state
execute unless data storage rcube:api/get_uuid root{installed:true} run data modify storage rcube:api/get_uuid root.installed set value true

# Return
return 1
