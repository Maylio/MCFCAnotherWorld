#> core:scenes/4/gate
#
# ゲート召喚
#
# @within function core:scenes/4/switch


# ゲート召喚
    clone -27 -62 -11 -24 -58 -10 -18 -62 90

# トライデント削除
    kill @e[type=trident]

# 音鳴らす
    execute as @a[tag=Entity.Player.Pract] at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1.0

# シーン変更
    schedule function core:scenes/5/switch 3s