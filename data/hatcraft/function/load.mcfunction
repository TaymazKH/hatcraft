# initialize scoreboard
scoreboard objectives add hatcraft.vars dummy
scoreboard players set helmet_type hatcraft.vars 0


# initialize main loop
schedule clear hatcraft:loop
function hatcraft:loop
