# convertion to hat
execute as @e[type=minecraft:item] at @s run function hatcraft:make_hat/detect_work_station


# holding helmet-hat warning
execute as @a[gamemode=survival] if items entity @s weapon.* *[custom_data~{hatcraft.is_helmet_hat:1b}] run \
    title @s actionbar {"color":"red","text":"You're holding a helmet-hat. Careful not to place it if it's a block!"}


# re-schedule
schedule function hatcraft:loop 4t
