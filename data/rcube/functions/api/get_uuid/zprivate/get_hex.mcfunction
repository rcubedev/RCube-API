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
# Convert int to string
# Called By: rcube:api/get_uuid/zprivate/int_to_string

$data modify storage rcube:api/get_uuid root.private.temp.data.out.0 set from storage rcube:api/get_uuid root.private.hex_data[$(0)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.1 set from storage rcube:api/get_uuid root.private.hex_data[$(1)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.2 set from storage rcube:api/get_uuid root.private.hex_data[$(2)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.3 set from storage rcube:api/get_uuid root.private.hex_data[$(3)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.4 set from storage rcube:api/get_uuid root.private.hex_data[$(4)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.5 set from storage rcube:api/get_uuid root.private.hex_data[$(5)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.6 set from storage rcube:api/get_uuid root.private.hex_data[$(6)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.7 set from storage rcube:api/get_uuid root.private.hex_data[$(7)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.8 set from storage rcube:api/get_uuid root.private.hex_data[$(8)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.9 set from storage rcube:api/get_uuid root.private.hex_data[$(9)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.a set from storage rcube:api/get_uuid root.private.hex_data[$(a)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.b set from storage rcube:api/get_uuid root.private.hex_data[$(b)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.c set from storage rcube:api/get_uuid root.private.hex_data[$(c)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.d set from storage rcube:api/get_uuid root.private.hex_data[$(d)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.e set from storage rcube:api/get_uuid root.private.hex_data[$(e)]
$data modify storage rcube:api/get_uuid root.private.temp.data.out.f set from storage rcube:api/get_uuid root.private.hex_data[$(f)]
