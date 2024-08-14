# Made by: @rcube.
# Append to array to centre text
#
# Called By: rcube:api/centre_text/run

data modify storage rcube:api/centre_string out append value {array:'{"text":"\\u200c","bold":true}'}

# Subtract from needed runs
scoreboard players remove $loop.runs_needed rcubeAPI-centre_string 1

# Loop until meets requirement for times run
execute unless score $loop.runs_needed rcubeAPI-centre_string matches ..0 run function rcube:api/centre_string/zprivate/append