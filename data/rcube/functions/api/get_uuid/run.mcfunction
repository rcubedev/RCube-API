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
# Convert between the UUID-types

# Remove stale data
data remove storage rcube:api/get_uuid root.out
data remove storage rcube:api/get_uuid root.private.temp

# Move data
data modify storage rcube:api/get_uuid root.private.temp.data.in set from storage rcube:api/get_uuid root.in.data
data modify storage rcube:api/get_uuid root.private.temp.type set from storage rcube:api/get_uuid root.in.type
data remove storage rcube:api/get_uuid root.in

# Run conversion function
execute if data storage rcube:api/get_uuid root{private:{temp:{type:"int-array"}}} run function rcube:api/get_uuid/zprivate/int_to_string
# TODO - string to int:
# execute if data storage rcube:api/get_uuid root{private:{temp:{type:"string"}}} run function rcube:api/get_uuid/zprivate/string_to_int
