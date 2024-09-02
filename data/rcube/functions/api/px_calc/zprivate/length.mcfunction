# Made by: @rcube.
# Find pixel length, add to total
#
# Called By: rcube:api/px_calc/run, THIS

# Chop first letter off string
data modify storage rcube:api/px_calc private.temp.chop set string storage rcube:api/px_calc private.temp.chop1 0 1
data modify storage rcube:api/px_calc private.temp.chop1 set string storage rcube:api/px_calc private.temp.chop1 1

# Set char to approx if char's px length unknown
scoreboard players set #px.temp rcubeAPI_pxCalc 6

# Find and set px length for known chars
execute if data storage rcube:api/px_calc private{temp:{chop:" "}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"!"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 2
execute if data storage rcube:api/px_calc private{temp:{chop:'"'}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"#"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"$"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"%"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"&"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"'"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 2
execute if data storage rcube:api/px_calc private{temp:{chop:"("}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"*"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"*"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"+"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:","}} run scoreboard players set #px.temp rcubeAPI_pxCalc 2
execute if data storage rcube:api/px_calc private{temp:{chop:"-"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"."}} run scoreboard players set #px.temp rcubeAPI_pxCalc 2
execute if data storage rcube:api/px_calc private{temp:{chop:"/"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"0"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"1"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"2"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"3"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"4"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"5"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"6"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"7"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"8"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"9"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:":"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 2
execute if data storage rcube:api/px_calc private{temp:{chop:";"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 2
execute if data storage rcube:api/px_calc private{temp:{chop:"<"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 5
execute if data storage rcube:api/px_calc private{temp:{chop:"="}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:">"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 5
execute if data storage rcube:api/px_calc private{temp:{chop:"?"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"@"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 7
execute if data storage rcube:api/px_calc private{temp:{chop:"A"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"B"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"C"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"D"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"E"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"F"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"G"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"H"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"I"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"J"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"K"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"L"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"M"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"N"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"O"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"P"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"Q"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"R"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"S"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"T"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"U"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"V"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"W"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"X"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"Y"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"Z"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"["}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"\\"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"]"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"^"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"_"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"`"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 3
execute if data storage rcube:api/px_calc private{temp:{chop:"a"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"b"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"c"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"d"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"e"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"f"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 5
execute if data storage rcube:api/px_calc private{temp:{chop:"g"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"h"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"i"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 2
execute if data storage rcube:api/px_calc private{temp:{chop:"j"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"k"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 5
execute if data storage rcube:api/px_calc private{temp:{chop:"l"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 3
execute if data storage rcube:api/px_calc private{temp:{chop:"m"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"n"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"o"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"p"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"q"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"r"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"s"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"t"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"u"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"v"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"w"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"x"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"y"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"z"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 6
execute if data storage rcube:api/px_calc private{temp:{chop:"{"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"|"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 2
execute if data storage rcube:api/px_calc private{temp:{chop:"}"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 4
execute if data storage rcube:api/px_calc private{temp:{chop:"~"}} run scoreboard players set #px.temp rcubeAPI_pxCalc 7

# Add to output
scoreboard players operation $px rcubeAPI_pxCalc += #px.temp rcubeAPI_pxCalc

# Subtract from needed runs
scoreboard players remove $loop rcubeAPI_pxCalc 1

# Loop until runs needed met
execute unless score $loop rcubeAPI_pxCalc matches ..0 run function rcube:api/px_calc/zprivate/length
