execute store result score AngleLerp.Source KzeMapSimplification run data get storage kms:angle_lerp Source 100
execute store result score AngleLerp.Target KzeMapSimplification run data get storage kms:angle_lerp Target 100
execute store result score AngleLerp.Delta KzeMapSimplification run data get storage kms:angle_lerp Delta 100

scoreboard players add AngleLerp.Source KzeMapSimplification 18000
scoreboard players add AngleLerp.Target KzeMapSimplification 18000
scoreboard players operation AngleLerp.Source KzeMapSimplification %= 36000 KzeMapSimplification
scoreboard players operation AngleLerp.Target KzeMapSimplification %= 36000 KzeMapSimplification
scoreboard players operation AngleLerp.Diff KzeMapSimplification = AngleLerp.Target KzeMapSimplification
scoreboard players operation AngleLerp.Diff KzeMapSimplification -= AngleLerp.Source KzeMapSimplification
execute if score AngleLerp.Diff KzeMapSimplification matches ..-18001 run scoreboard players add AngleLerp.Diff KzeMapSimplification 36000
execute if score AngleLerp.Diff KzeMapSimplification matches 18001.. run scoreboard players remove AngleLerp.Diff KzeMapSimplification 36000
scoreboard players operation AngleLerp.Diff KzeMapSimplification *= AngleLerp.Delta KzeMapSimplification
scoreboard players operation AngleLerp.Diff KzeMapSimplification /= 100 KzeMapSimplification
scoreboard players operation AngleLerp.Source KzeMapSimplification += AngleLerp.Diff KzeMapSimplification
scoreboard players remove AngleLerp.Source KzeMapSimplification 18000

execute store result storage kms:angle_lerp Result float 0.01 run scoreboard players get AngleLerp.Source KzeMapSimplification
