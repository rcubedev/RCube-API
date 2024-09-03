# Made by: @rcube.
# Append to array to centre text
#
# Called By: rcube:api/centre_text/run

# Append to array
data modify storage rcube:api/centre_string out append value {array:'{"text":"\\u200c","bold":true}'}

# Subtract from needed runs
scoreboard players remove $loop rcubeAPI_centreString 1

# Loop until meets requirement for times run
execute unless score $loop rcubeAPI_centreString matches ..0 run function rcube:api/centre_string/zprivate/append
