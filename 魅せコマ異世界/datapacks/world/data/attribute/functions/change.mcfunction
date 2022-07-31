#> attribute:change
#
# 移動速度を変更
#
# @public


# 一度全部消す
    execute as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier remove 0-0-0-0-1
    execute as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier remove 0-0-0-0-2
    execute as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier remove 0-0-0-0-3
    execute as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier remove 0-0-0-0-4
    execute as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier remove 0-0-0-0-5
    execute as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier remove 0-0-0-0-6
    execute as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier remove 0-0-0-0-7
    execute as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier remove 0-0-0-0-8

# スコアから移動速度を変更
    execute if score $scene Attribute.Instant matches 1 as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier add 0-0-0-0-1 scene1 -0.001 add
    execute if score $scene Attribute.Instant matches 2 as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier add 0-0-0-0-2 scene2 -0.003 add
    execute if score $scene Attribute.Instant matches 3 as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier add 0-0-0-0-3 scene3 -0.002 add
    execute if score $scene Attribute.Instant matches 4 as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier add 0-0-0-0-4 scene4 -0.004 add
    execute if score $scene Attribute.Instant matches 5 as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier add 0-0-0-0-5 scene5 -0.005 add
    execute if score $scene Attribute.Instant matches 6 as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier add 0-0-0-0-6 scene6 -0.006 add
    execute if score $scene Attribute.Instant matches 7 as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier add 0-0-0-0-7 scene7 -0.007 add
    execute if score $scene Attribute.Instant matches 8 as @a[tag=Entity.Player.Pract] run attribute @s generic.movement_speed modifier add 0-0-0-0-8 scene8 -0.008 add