#> core:scenes/8/gate
#
# ゲート召喚
#
# @within function core:scenes/4/switch


# ゲート召喚
    clone -27 -62 -10 -24 -58 -9 -53 -61 -40

# 音鳴らす
    execute as @a[tag=Entity.Player.Pract] at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1.0

# 3秒後に村人飛び出す
    schedule function core:scenes/8/villager 3s