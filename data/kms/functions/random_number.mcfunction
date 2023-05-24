scoreboard players add RandomNumber.Seed KzeMapSimplification 1
execute store result score RandomNumber.Result KzeMapSimplification run time query gametime
execute store result score RandomNumber.Max KzeMapSimplification run data get storage kms:random_number Max
execute store result score RandomNumber.Offset KzeMapSimplification run data get storage kms:random_number Offset
scoreboard players operation RandomNumber.Result KzeMapSimplification *= RandomNumber.Seed KzeMapSimplification
scoreboard players operation RandomNumber.Result KzeMapSimplification *= RandomNumber.F1 KzeMapSimplification
scoreboard players operation RandomNumber.Result KzeMapSimplification *= RandomNumber.F2 KzeMapSimplification
scoreboard players operation RandomNumber.Result KzeMapSimplification *= RandomNumber.Result KzeMapSimplification
scoreboard players operation RandomNumber.Result KzeMapSimplification /= 1000 KzeMapSimplification
scoreboard players operation RandomNumber.Result KzeMapSimplification *= RandomNumber.F1 KzeMapSimplification
scoreboard players operation RandomNumber.Result KzeMapSimplification *= RandomNumber.F2 KzeMapSimplification
scoreboard players operation RandomNumber.Result KzeMapSimplification %= RandomNumber.Max KzeMapSimplification
scoreboard players operation RandomNumber.Result KzeMapSimplification += RandomNumber.Offset KzeMapSimplification

execute store result storage kms:random_number Result int 1 run scoreboard players get RandomNumber.Result KzeMapSimplification
