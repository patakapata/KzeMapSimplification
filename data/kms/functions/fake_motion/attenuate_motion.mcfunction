execute store result score AttenuateMotion.Strength KzeMapSimplification run data get storage kms:attenuate_motion Strength 10000

execute store result score AttenuateMotion.Source KzeMapSimplification run data get entity @s Motion[0] 10000
scoreboard players operation AttenuateMotion.Source KzeMapSimplification *= AttenuateMotion.Strength KzeMapSimplification
scoreboard players operation AttenuateMotion.Source KzeMapSimplification /= 10000 KzeMapSimplification
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get AttenuateMotion.Source KzeMapSimplification

execute store result score AttenuateMotion.Source KzeMapSimplification run data get entity @s Motion[1] 10000
scoreboard players operation AttenuateMotion.Source KzeMapSimplification *= AttenuateMotion.Strength KzeMapSimplification
scoreboard players operation AttenuateMotion.Source KzeMapSimplification /= 10000 KzeMapSimplification
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get AttenuateMotion.Source KzeMapSimplification

execute store result score AttenuateMotion.Source KzeMapSimplification run data get entity @s Motion[2] 10000
scoreboard players operation AttenuateMotion.Source KzeMapSimplification *= AttenuateMotion.Strength KzeMapSimplification
scoreboard players operation AttenuateMotion.Source KzeMapSimplification /= 10000 KzeMapSimplification
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get AttenuateMotion.Source KzeMapSimplification
