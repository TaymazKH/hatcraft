# add helmet type as lore
data modify entity @s Item.components."minecraft:lore"[1].extra prepend value \
    {"translate":"item.minecraft.diamond_helmet","fallback":"Diamond Helmet"}


# make repairable
data modify entity @s Item.components."minecraft:repairable".items set value \
    ["minecraft:diamond","minecraft:diamond_helmet"]


# set durability
data modify entity @s Item.components."minecraft:max_damage" set value 363


# set armor
data modify entity @s Item.components."minecraft:attribute_modifiers"[0].amount set value 3


# set armor toughness
data modify entity @s Item.components."minecraft:attribute_modifiers" append value \
    {id:"armor_toughness",type:"armor_toughness",amount:2,operation:"add_value",slot:"head"}
