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
# Output string
# Called By: rcube:api/get_uuid/zprivate/int_to_string

$data modify storage rcube:api/get_uuid root.out set value "$(3)$(2)$(1)$(0)-$(7)$(6)-$(5)$(4)-$(b)$(a)-$(9)$(8)$(f)$(e)$(d)$(c)"
