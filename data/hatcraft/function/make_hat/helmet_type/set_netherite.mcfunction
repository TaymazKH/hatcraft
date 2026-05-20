# add helmet type as lore
data modify entity @s Item.components."minecraft:lore"[1].extra prepend value \
    {"translate":"item.minecraft.netherite_helmet","fallback":"Netherite Helmet"}


# make repairable
data modify entity @s Item.components."minecraft:repairable".items set value \
    ["minecraft:netherite_ingot","minecraft:netherite_helmet"]


# set durability
data modify entity @s Item.components."minecraft:max_damage" set value 407


# set armor
data modify entity @s Item.components."minecraft:attribute_modifiers"[0].amount set value 3


# set armor toughness
data modify entity @s Item.components."minecraft:attribute_modifiers" append value \
    {id:"armor_toughness",type:"armor_toughness",amount:3,operation:"add_value",slot:"head"}


# set knockback resistance
data modify entity @s Item.components."minecraft:attribute_modifiers" append value \
    {id:"knockback_resistance",type:"knockback_resistance",amount:0.1,operation:"add_value",slot:"head"}
