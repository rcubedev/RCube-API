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
# Convert UUID int-array to string
# Called By: rcube:api/get_uuid/run

# Prepare UUID Data
data modify storage rcube:api/get_uuid root.private.temp.data.out set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}

# Run calculations
execute store result score 0= rcubeAPI_getUUID.main store result score 1= rcubeAPI_getUUID.main run data get storage rcube:api/get_uuid root.private.temp.data.in[0]
execute store result storage rcube:api/get_uuid root.private.temp.data.out.0 int 1 run scoreboard players operation 0= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result score 2= rcubeAPI_getUUID.main run scoreboard players operation 1= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.1 int 1 run scoreboard players operation 1= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result score 3= rcubeAPI_getUUID.main run scoreboard players operation 2= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.2 int 1 run scoreboard players operation 2= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.3 int 1 run scoreboard players operation 3= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const

execute store result score 0= rcubeAPI_getUUID.main store result score 1= rcubeAPI_getUUID.main run data get storage rcube:api/get_uuid root.private.temp.data.in[1]
execute store result storage rcube:api/get_uuid root.private.temp.data.out.4 int 1 run scoreboard players operation 0= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result score 2= rcubeAPI_getUUID.main run scoreboard players operation 1= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.5 int 1 run scoreboard players operation 1= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result score 3= rcubeAPI_getUUID.main run scoreboard players operation 2= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.6 int 1 run scoreboard players operation 2= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.7 int 1 run scoreboard players operation 3= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const

execute store result score 0= rcubeAPI_getUUID.main store result score 1= rcubeAPI_getUUID.main run data get storage rcube:api/get_uuid root.private.temp.data.in[2]
execute store result storage rcube:api/get_uuid root.private.temp.data.out.8 int 1 run scoreboard players operation 0= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result score 2= rcubeAPI_getUUID.main run scoreboard players operation 1= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.9 int 1 run scoreboard players operation 1= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result score 3= rcubeAPI_getUUID.main run scoreboard players operation 2= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.a int 1 run scoreboard players operation 2= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.b int 1 run scoreboard players operation 3= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const

execute store result score 0= rcubeAPI_getUUID.main store result score 1= rcubeAPI_getUUID.main run data get storage rcube:api/get_uuid root.private.temp.data.in[3]
execute store result storage rcube:api/get_uuid root.private.temp.data.out.c int 1 run scoreboard players operation 0= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result score 2= rcubeAPI_getUUID.main run scoreboard players operation 1= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.d int 1 run scoreboard players operation 1= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result score 3= rcubeAPI_getUUID.main run scoreboard players operation 2= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.e int 1 run scoreboard players operation 2= rcubeAPI_getUUID.main %= $num.256 rcubeAPI_getUUID.const
execute store result storage rcube:api/get_uuid root.private.temp.data.out.f int 1 run scoreboard players operation 3= rcubeAPI_getUUID.main /= $num.256 rcubeAPI_getUUID.const

# Convert hex data to string
function rcube:api/get_uuid/zprivate/get_hex with storage rcube:api/get_uuid root.private.temp.data.out

# Concat string UUID
function rcube:api/get_uuid/zprivate/concat_uuid with storage rcube:api/get_uuid root.private.temp.data.out
