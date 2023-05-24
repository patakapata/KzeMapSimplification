execute store result score Sqrt.Origin KzeMapSimplification run data get storage kms:sqrt Source 1
execute store result score Sqrt.Source KzeMapSimplification run data get storage kms:sqrt Near 1
execute if score Sqrt.Source KzeMapSimplification matches 0 run function kms:internal/sqrt_auto_near
scoreboard players operation Sqrt.PrevSource KzeMapSimplification = Sqrt.Source KzeMapSimplification
scoreboard players set Sqrt.Result KzeMapSimplification 0
scoreboard players set Sqrt.Temp KzeMapSimplification 0
scoreboard players set Sqrt.LoopCount KzeMapSimplification 0
function kms:internal/sqrt_loop
execute store result storage kms:sqrt Result int 1 run scoreboard players get Sqrt.Result KzeMapSimplification