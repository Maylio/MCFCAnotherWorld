#> core:scenes/5/_tick
#
# シーン5の処理
#
# @within function core:_tick


# 右クリしたら
    # 次のシーンへ
        execute if score @s Player.Right matches 1.. run schedule function core:scenes/6/switch 2s
    # 右クリタグ
        execute if score @s Player.Right matches 1.. run tag @s add Entity.Right
    # スコアリセット
        execute if score @s Player.Right matches 1.. run scoreboard players reset @a[tag=Entity.Player.Pract] Player.Right

# 次のシーンまでの間
    # パーティクル
        execute if entity @a[tag=Entity.Right] at @e[tag=Entity.Truck] run particle campfire_signal_smoke ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @s
    # 音
        execute if entity @a[tag=Entity.Right] as @e[tag=Entity.Truck] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.0 0.1
        execute as @e[tag=Entity.Truck] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.2 1.6