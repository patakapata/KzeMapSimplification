scoreboard players operation Sqrt.Result KzeMapSimplification = Sqrt.Source KzeMapSimplification
scoreboard players operation Sqrt.Result KzeMapSimplification *= Sqrt.Result KzeMapSimplification
scoreboard players operation Sqrt.Result KzeMapSimplification -= Sqrt.Origin KzeMapSimplification
scoreboard players operation Sqrt.Temp KzeMapSimplification = Sqrt.Source KzeMapSimplification
scoreboard players operation Sqrt.Temp KzeMapSimplification *= 2 KzeMapSimplification
scoreboard players operation Sqrt.Result KzeMapSimplification /= Sqrt.Temp KzeMapSimplification
scoreboard players operation Sqrt.Result KzeMapSimplification *= -1 KzeMapSimplification
scoreboard players operation Sqrt.Result KzeMapSimplification += Sqrt.Source KzeMapSimplification
scoreboard players operation Sqrt.PrevSource KzeMapSimplification = Sqrt.Source KzeMapSimplification
scoreboard players operation Sqrt.Source KzeMapSimplification = Sqrt.Result KzeMapSimplification
scoreboard players add Sqrt.LoopCount KzeMapSimplification 1
execute unless score Sqrt.PrevSource KzeMapSimplification = Sqrt.Source KzeMapSimplification run function kms:internal/sqrt_loop