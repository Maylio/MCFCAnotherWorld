#> core:_tick
# @within tag/function minecraft:tick


# scene1-ブタ移動
    execute if score $scene Core.Instant matches 1 as @a[tag=Entity.Player.Pract] at @s run function core:scenes/1/_tick

# scene2-狂気の村人
    execute if score $scene Core.Instant matches 2 as @a[tag=Entity.Player.Pract] at @s run function core:scenes/2/_tick

# scene3-トライデント投げ選手権
    execute if score $scene Core.Instant matches 3 as @a[tag=Entity.Player.Pract] at @s run function core:scenes/3/_tick

# scene4-ポータル出現
    execute if score $scene Core.Instant matches 4 as @a[tag=Entity.Player.Pract] at @s run function core:scenes/4/_tick

# scene5-アクセルふかす
    execute if score $scene Core.Instant matches 5 as @a[tag=Entity.Player.Pract] at @s run function core:scenes/5/_tick

# scene6-発射
    execute if score $scene Core.Instant matches 6 as @a[tag=Entity.Player.Pract] at @s run function core:scenes/6/_tick

# scene7-衝突
    execute if score $scene Core.Instant matches 7 as @a[tag=Entity.Player.Pract] at @s run function core:scenes/7/_tick

# scene8-村人、飛び出す
    execute if score $scene Core.Instant matches 8 as @a[tag=Entity.Player.Pract] at @s run function core:scenes/8/_tick
