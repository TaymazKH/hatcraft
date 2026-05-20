# fail if already a hat
execute if data entity @s {Item:{components:{"minecraft:custom_data":{hatcraft.is_hat:1b}}}} run return fail


# set components
item modify entity @s contents hatcraft:simple_hat


# announce to owner
execute on origin run title @s actionbar \
    {"color":"green","text":"Converted to a simple-hat!"}
