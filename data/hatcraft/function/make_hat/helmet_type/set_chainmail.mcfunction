# add helmet type as lore
data modify entity @s Item.components."minecraft:lore"[1].extra prepend value \
    {"translate":"item.minecraft.chainmail_helmet","fallback":"Chainmail Helmet"}


# make repairable
data modify entity @s Item.components."minecraft:repairable".items set value \
    ["minecraft:iron_ingot","minecraft:chainmail_helmet"]


# set durability
data modify entity @s Item.components."minecraft:max_damage" set value 165


# set armor
data modify entity @s Item.components."minecraft:attribute_modifiers"[0].amount set value 2
