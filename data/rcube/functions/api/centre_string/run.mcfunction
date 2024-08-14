# Made by: @rcube.
# Run calculations needed to centre string

# Clear stale data
data remove storage rcube:api/centre_string private.temp

# Move data
data modify storage rcube:api/centre_string private.temp set from storage rcube:api/centre_string input
data remove storage rcube:api/centre_string input
# data modify storage rcube:api/centre_string private.temp.string set string storage rcube:api/centre_string input.string
# data modify storage rcube:api/centre_string private.temp.bold set from storage rcube:api/centre_string input.bold
# data modify storage rcube:api/centre_string private.temp.extra.chars set from storage rcube:api/centre_string input.extra.chars
# data modify storage rcube:api/centre_string private.temp.extra.px set from storage rcube:api/centre_string input.extra.px
# data modify storage rcube:api/centre_string private.temp.extra.bold set from storage rcube:api/centre_string input.extra.bold
# data remove storage rcube:api/centre_string in.string
# data remove storage rcube:api/centre_string in.bold
# data remove storage rcube:api/centre_string in.extra.chars
# data remove storage rcube:api/centre_string in.extra.px
# data remove storage rcube:api/centre_string in.extra.bold

# Store character count
execute store result score $char_count rcubeAPI-centre_string run data get storage rcube:api/centre_string private.temp.string

# Get pixel approximation
scoreboard players operation $px rcubeAPI-centre_string = $char_count rcubeAPI-centre_string
scoreboard players operation $px rcubeAPI-centre_string *= $const.char_px rcubeAPI-centre_string.const
execute if score $px rcubeAPI-centre_string > $const.chat_width rcubeAPI-centre_string.const run scoreboard players operation $px rcubeAPI-centre_string = $const.chat_width rcubeAPI-centre_string.const

# Find px count needed to centre text (assume default of 320px/line)
scoreboard players operation $px_needed rcubeAPI-centre_string = $const.chat_width rcubeAPI-centre_string.const
scoreboard players operation $px_needed rcubeAPI-centre_string -= $px rcubeAPI-centre_string
scoreboard players operation $px_needed rcubeAPI-centre_string /= =$num.2 rcubeAPI-centre_string.const

# Clear output array
data modify storage rcube:api/centre_string out set value [{array:'""'}]

# Prepare to loop output onto array
scoreboard players operation $loop.runs_needed rcubeAPI-centre_string = $px_needed rcubeAPI-centre_string
# Addon empty character to disable inheritence
# Begin loop to append to array
function rcube:api/centre_string/zprivate/append
