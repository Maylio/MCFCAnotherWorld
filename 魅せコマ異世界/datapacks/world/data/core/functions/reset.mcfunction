#> core:reset
#
# リセット
#
# @public

# 移動速度リセット
    attribute @s generic.movement_speed modifier remove 0-0-0-0-1
    attribute @s generic.movement_speed modifier remove 0-0-0-0-2
    attribute @s generic.movement_speed modifier remove 0-0-0-0-3
    attribute @s generic.movement_speed modifier remove 0-0-0-0-4
    attribute @s generic.movement_speed modifier remove 0-0-0-0-5
    attribute @s generic.movement_speed modifier remove 0-0-0-0-6
    attribute @s generic.movement_speed modifier remove 0-0-0-0-7
    attribute @s generic.movement_speed modifier remove 0-0-0-0-8

# ブタを所定の位置に
    tp @e[tag=Entity.Truck] -15.92 -62.00 11.69 0 0

# シーン変更
    scoreboard players set $scene Core.Instant 0
    scoreboard players set $scene Animation.Instant 0

# タイトルリセット
    title @a[tag=Entity.Player.Pract] clear

# スコアリセット
    scoreboard players reset @a[tag=Entity.Player.Pract] Player.Throw.Trident
    scoreboard players reset @a[tag=Entity.Player.Pract] Player.Right

# タグはく奪
    tag @a[tag=Entity.Player.Pract] remove Entity.Right
    tag @a[tag=Entity.Player.Pract] remove Entity.Player.Pract

# ゲート削除
    fill -15 -58 91 -18 -62 90 air
    fill -53 -61 -40 -50 -58 -39 air

# 村人抹殺
    tp @e[tag=Entity.Chara] ~ ~-1000 ~
    kill @e[tag=Entity.Chara]
    kill @e[tag=Entity.Bullet]

# 魔王暗殺
    kill @e[tag=maou]

# ストレージ整備
    data modify storage animation: play.Pos set value []
    data modify storage animation: play.Rotation set value []