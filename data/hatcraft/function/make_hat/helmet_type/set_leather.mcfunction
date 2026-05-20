# add helmet type as lore
data modify entity @s Item.components."minecraft:lore"[1].extra prepend value \
    {"translate":"item.minecraft.leather_helmet","fallback":"Leather Cap"}


# make repairable
data modify entity @s Item.components."minecraft:repairable".items set value \
    ["minecraft:leather","minecraft:leather_helmet"]


# set durability
data modify entity @s Item.components."minecraft:max_damage" set value 55


# set armor
data modify entity @s Item.components."minecraft:attribute_modifiers"[0].amount set value 1
