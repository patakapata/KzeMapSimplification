execute positioned as @s positioned ^ ^ ^1 summon marker run function kms:internal/launch_target
execute store success score Launch.Replace KzeMapSimplification if data storage kms:launch {Replace: true}
execute store result score Launch.Speed KzeMapSimplification run data get storage kms:launch Speed 100
# 速度の絶対値が10より大きくなると0に戻る為、速度を制限する
execute if score Launch.Speed KzeMapSimplification matches 1001.. run scoreboard players set Launch.Speed KzeMapSimplification 1000
execute if score Launch.Speed KzeMapSimplification matches ..-1 run scoreboard players set Launch.Speed KzeMapSimplification 0

# 実行者と目標の座標の差を計算
execute store result score Launch.Source KzeMapSimplification run data get entity @s Pos[0] -100
execute at @s store result score Launch.Target KzeMapSimplification run data get storage kms:temp_launch Pos[0] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Target KzeMapSimplification
scoreboard players operation Launch.Source KzeMapSimplification *= 10000 KzeMapSimplification
# 速度倍率を適用
scoreboard players operation Launch.Source KzeMapSimplification *= Launch.Speed KzeMapSimplification
# オフセットを適用
execute store result score Launch.Offset KzeMapSimplification run data get storage kms:launch Offset[0] 100000000
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Offset KzeMapSimplification
# 元の速度に加算
execute if score Launch.Replace KzeMapSimplification matches 0 store result score Launch.Origin KzeMapSimplification run data get entity @s Motion[0] 100000000
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification += Launch.Origin KzeMapSimplification
# 実行者に速度を適用
execute store result entity @s Motion[0] double 0.00000001 run scoreboard players get Launch.Source KzeMapSimplification

# 実行者と目標の座標の差を計算
execute store result score Launch.Source KzeMapSimplification run data get entity @s Pos[1] -100
execute at @s store result score Launch.Target KzeMapSimplification run data get storage kms:temp_launch Pos[1] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Target KzeMapSimplification
scoreboard players operation Launch.Source KzeMapSimplification *= 10000 KzeMapSimplification
# 速度倍率を適用
scoreboard players operation Launch.Source KzeMapSimplification *= Launch.Speed KzeMapSimplification
# オフセットを適用
execute store result score Launch.Offset KzeMapSimplification run data get storage kms:launch Offset[1] 100000000
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Offset KzeMapSimplification
# 元の速度に加算
execute if score Launch.Replace KzeMapSimplification matches 0 store result score Launch.Origin KzeMapSimplification run data get entity @s Motion[1] 100000000
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification += Launch.Origin KzeMapSimplification
# 実行者に速度を適用
execute store result entity @s Motion[1] double 0.00000001 run scoreboard players get Launch.Source KzeMapSimplification

# 実行者と目標の座標の差を計算
execute store result score Launch.Source KzeMapSimplification run data get entity @s Pos[2] -100
execute at @s store result score Launch.Target KzeMapSimplification run data get storage kms:temp_launch Pos[2] 100
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Target KzeMapSimplification
scoreboard players operation Launch.Source KzeMapSimplification *= 10000 KzeMapSimplification
# 速度倍率を適用
scoreboard players operation Launch.Source KzeMapSimplification *= Launch.Speed KzeMapSimplification
# オフセットを適用
execute store result score Launch.Offset KzeMapSimplification run data get storage kms:launch Offset[2] 100000000
scoreboard players operation Launch.Source KzeMapSimplification += Launch.Offset KzeMapSimplification
# 元の速度に加算
execute if score Launch.Replace KzeMapSimplification matches 0 store result score Launch.Origin KzeMapSimplification run data get entity @s Motion[2] 100000000
execute if score Launch.Replace KzeMapSimplification matches 0 run scoreboard players operation Launch.Source KzeMapSimplification += Launch.Origin KzeMapSimplification
# 実行者に速度を適用
execute store result entity @s Motion[2] double 0.00000001 run scoreboard players get Launch.Source KzeMapSimplification

