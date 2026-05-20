# fail if already a hat
execute if data entity @s {Item:{components:{"minecraft:custom_data":{hatcraft.is_hat:1b}}}} run return fail


# set components
data merge entity @s {Item:{components:{\
    "minecraft:equippable":{slot:"head"},\
    "minecraft:lore":[{"italic":false,"color":"light_purple","text":"Equippable as a hat"}],\
    "minecraft:custom_data":{hatcraft.is_hat:1b,hatcraft.is_simple_hat:1b,hatcraft.is_helmet_hat:0b}\
}}}


# announce to owner
execute on origin run title @s actionbar \
    {"color":"green","text":"Converted to a simple-hat!"}
