execute positioned as @s run summon marker ^ ^ ^1 {Tags: ["kms", "kms_launch"]}
execute unless data storage kms:launch Speed run data modify storage kms:launch Speed set value 1.0d
execute store success score Launch.Replace KzeMapSimplification if data storage kms:launch {Replace: true}
execute store result score Launch.Speed KzeMapSimplification run data get storage kms:launch Speed 100
# 速度の絶対値が10より大きくなると0に戻る為、速度をクランプする
execute if score Launch.Speed KzeMapSimplification matches 1001.. run scoreboard players set Launch.Speed KzeMapSimplification 1000
execute if score Launch.Speed KzeMapSimplification matches ..-1001 run scoreboard players set Launch.Speed KzeMapSimplification -1000

# 実行者と目標の座標の差を計算
execute store result score Launch.Source KzeMapSimplification run data get entity @s Pos[0] -100
execute at @s store result score Launch.Target KzeMapSimplification run data get entity @e[type=marker,tag=kms_launch,limit=1] Pos[0] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Target KzeMapSimplification
# 速度倍率を適用
scoreboard players operation Launch.Source KzeMapSimplification *= Launch.Speed KzeMapSimplification
scoreboard players operation Launch.Source KzeMapSimplification /= 100 KzeMapSimplification
# オフセットを適用
execute store result score Launch.Offset KzeMapSimplification run data get storage kms:launch Offset[0] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Offset KzeMapSimplification
# 元の速度に加算
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification *= 100000 KzeMapSimplification
execute if score Launch.Replace KzeMapSimplification matches 0 store result score Launch.Origin KzeMapSimplification run data get entity @s Motion[0] 10000000
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification += Launch.Origin KzeMapSimplification
# 実行者に速度を適用
execute if score Launch.Replace KzeMapSimplification matches 0 store result entity @s Motion[0] double 0.0000001 run scoreboard players get Launch.Source KzeMapSimplification
execute if score Launch.Replace KzeMapSimplification matches 1 store result entity @s Motion[0] double 0.01 run scoreboard players get Launch.Source KzeMapSimplification

# 実行者と目標の座標の差を計算
execute store result score Launch.Source KzeMapSimplification run data get entity @s Pos[1] -100
execute at @s store result score Launch.Target KzeMapSimplification run data get entity @e[type=marker,tag=kms_launch,limit=1] Pos[1] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Target KzeMapSimplification
# 速度倍率を適用
scoreboard players operation Launch.Source KzeMapSimplification *= Launch.Speed KzeMapSimplification
scoreboard players operation Launch.Source KzeMapSimplification /= 100 KzeMapSimplification
# オフセットを適用
execute store result score Launch.Offset KzeMapSimplification run data get storage kms:launch Offset[1] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Offset KzeMapSimplification
# 元の速度に加算
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification *= 100000 KzeMapSimplification
execute if score Launch.Replace KzeMapSimplification matches 0 store result score Launch.Origin KzeMapSimplification run data get entity @s Motion[1] 10000000
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification += Launch.Origin KzeMapSimplification
# 実行者に速度を適用
execute if score Launch.Replace KzeMapSimplification matches 0 store result entity @s Motion[1] double 0.0000001 run scoreboard players get Launch.Source KzeMapSimplification
execute if score Launch.Replace KzeMapSimplification matches 1 store result entity @s Motion[1] double 0.01 run scoreboard players get Launch.Source KzeMapSimplification

# 実行者と目標の座標の差を計算
execute store result score Launch.Source KzeMapSimplification run data get entity @s Pos[2] -100
execute at @s store result score Launch.Target KzeMapSimplification run data get entity @e[type=marker,tag=kms_launch,limit=1] Pos[2] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Target KzeMapSimplification
# 速度倍率を適用
scoreboard players operation Launch.Source KzeMapSimplification *= Launch.Speed KzeMapSimplification
scoreboard players operation Launch.Source KzeMapSimplification /= 100 KzeMapSimplification
# オフセットを適用
execute store result score Launch.Offset KzeMapSimplification run data get storage kms:launch Offset[2] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Offset KzeMapSimplification
# 元の速度に加算
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification *= 100000 KzeMapSimplification
execute if score Launch.Replace KzeMapSimplification matches 0 store result score Launch.Origin KzeMapSimplification run data get entity @s Motion[2] 10000000
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification += Launch.Origin KzeMapSimplification
# 実行者に速度を適用
execute if score Launch.Replace KzeMapSimplification matches 0 store result entity @s Motion[2] double 0.0000001 run scoreboard players get Launch.Source KzeMapSimplification
execute if score Launch.Replace KzeMapSimplification matches 1 store result entity @s Motion[2] double 0.01 run scoreboard players get Launch.Source KzeMapSimplification

kill @e[type=marker,tag=kms_launch]
scoreboard players reset @s KzeMapSimplification
