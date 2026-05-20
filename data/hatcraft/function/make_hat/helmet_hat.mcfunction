# conditions
execute unless data entity @s {Item:{count:1}} run return fail
execute on origin run function hatcraft:make_hat/detect_helmet_type
execute if score hatcraft.helmet_type hatcraft.vars matches 0 run return fail


# detect the owner
execute on origin run tag @s add hatcraft.helmet_owner


# set initial components
item modify entity @s contents hatcraft:helmet_hat


# add components based on type
execute if score hatcraft.helmet_type hatcraft.vars matches 100 run \
    item modify entity @s contents hatcraft:helmet_type/set_leather
execute if score hatcraft.helmet_type hatcraft.vars matches 200 run \
    item modify entity @s contents hatcraft:helmet_type/set_golden
execute if score hatcraft.helmet_type hatcraft.vars matches 300 run \
    item modify entity @s contents hatcraft:helmet_type/set_copper
execute if score hatcraft.helmet_type hatcraft.vars matches 400 run \
    item modify entity @s contents hatcraft:helmet_type/set_chainmail
execute if score hatcraft.helmet_type hatcraft.vars matches 500 run \
    item modify entity @s contents hatcraft:helmet_type/set_iron
execute if score hatcraft.helmet_type hatcraft.vars matches 600 run \
    item modify entity @s contents hatcraft:helmet_type/set_diamond
execute if score hatcraft.helmet_type hatcraft.vars matches 700 run \
    item modify entity @s contents hatcraft:helmet_type/set_netherite


# remove old components
data remove entity @s Item.components."minecraft:enchantments"


# copy the remaining components
# e.g. remaining durability, custom name, enchantments, previous repair cost, ...
data modify entity @s Item.components merge from entity @p[tag=hatcraft.helmet_owner] equipment.offhand.components


# delete the original helmet
execute on origin run item replace entity @s weapon.offhand with air


# announce to owner
execute on origin run title @s actionbar \
    {"color":"green","text":"Converted to a helmet-hat!"}


# clean up
scoreboard players set hatcraft.helmet_type hatcraft.vars 0
tag @a remove hatcraft.helmet_owner
