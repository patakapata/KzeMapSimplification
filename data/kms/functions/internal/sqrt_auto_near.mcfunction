# ^269   ( ~ !10  ) 100
# ^1009  ( ~ !30  ) 900
# ^1499  ( ~ !50  ) 2500
# ^3109  ( ~ !100 ) 10000
# ^8353  ( ~ !200 ) 40000
# ^8923  ( ~ !300 ) 90000
# ^14947 ( ~ !400 ) 160000
# ^28687 ( ~ 544  ) 295936

execute if score Sqrt.Origin KzeMapSimplification matches ..1000000 run scoreboard players set Sqrt.Source KzeMapSimplification 269
execute if score Sqrt.Origin KzeMapSimplification matches 1000001..9000000 run scoreboard players set Sqrt.Source KzeMapSimplification 1009
execute if score Sqrt.Origin KzeMapSimplification matches 9000001..25000000 run scoreboard players set Sqrt.Source KzeMapSimplification 1499
execute if score Sqrt.Origin KzeMapSimplification matches 25000001..100000000 run scoreboard players set Sqrt.Source KzeMapSimplification 3109
execute if score Sqrt.Origin KzeMapSimplification matches 100000001..400000000 run scoreboard players set Sqrt.Source KzeMapSimplification 8353
execute if score Sqrt.Origin KzeMapSimplification matches 400000001..900000000 run scoreboard players set Sqrt.Source KzeMapSimplification 8923
execute if score Sqrt.Origin KzeMapSimplification matches 900000001..1600000000 run scoreboard players set Sqrt.Source KzeMapSimplification 14947
execute if score Sqrt.Origin KzeMapSimplification matches 1600000001.. run scoreboard players set Sqrt.Source KzeMapSimplification 28687
