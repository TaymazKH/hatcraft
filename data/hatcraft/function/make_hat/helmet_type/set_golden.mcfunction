# add helmet type as lore
data modify entity @s Item.components."minecraft:lore"[1].extra prepend value \
    {"translate":"item.minecraft.golden_helmet","fallback":"Golden Helmet"}


# make repairable
data modify entity @s Item.components."minecraft:repairable".items set value \
    ["minecraft:gold_ingot","minecraft:golden_helmet"]


# set durability
data modify entity @s Item.components."minecraft:max_damage" set value 77


# set armor
data modify entity @s Item.components."minecraft:attribute_modifiers"[0].amount set value 2
