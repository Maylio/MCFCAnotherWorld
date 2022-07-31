#> core:scenes/6/_tick
#
# シーン6
#
# @within function core:_tick


# 爆速移動
    execute as @e[tag=Entity.Truck] at @s run tp @s ~ ~ ~0.8

# パーティクル
    execute at @e[tag=Entity.Truck] run particle campfire_signal_smoke ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @s
# 音
    execute as @e[tag=Entity.Truck] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.0 0.1
    execute as @e[tag=Entity.Truck] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.2 2.0

# 接触したら次のシーンへ
    execute as @e[tag=Entity.Truck] at @s if entity @e[tag=Entity.Chara,distance=..0.3] run function core:scenes/7/switch