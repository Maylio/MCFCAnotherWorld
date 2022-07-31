#> core:scenes/1/_tick
#
# シーン1の処理
#
# @within function core:_tick


# ブタ、発進
    execute as @e[tag=Entity.Truck] at @s run tp @s ~ ~ ~0.5
    execute as @e[tag=Entity.Truck] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.2 2.0

# 特定の場所に来たらシーン切り替え
    execute if entity @e[x=-17,y=-62,z=39,dx=3,tag=Entity.Truck] run function core:scenes/2/switch