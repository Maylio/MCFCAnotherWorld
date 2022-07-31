#> core:scenes/8/villager
#
# 村人飛び出す
#
# @within function core:scenes/8/gate


# 村人出陣
    summon minecraft:snowball ~ ~ ~ {Tags:["Animation.Play","Entity.Bullet"],NoGravity:true,Item:{id:"minecraft:hopper",Count:1b,tag:{CustomModelData:1}}}

# 音鳴らす
    execute as @a[tag=Entity.Player.Pract] at @s run playsound entity.ender_dragon.shoot master @a ~ ~ ~ 2.0 1.5
    execute as @a[tag=Entity.Player.Pract] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2.0 0.5
    execute as @a[tag=Entity.Player.Pract] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2.0 0.8

# Airを更新して滑らかに動かす
    execute as @e[tag=Entity.Bullet] store result entity @s Air int -1 run data get entity @s Air

# 2秒後に魔王死す
    schedule function core:scenes/8/maousisu 2s