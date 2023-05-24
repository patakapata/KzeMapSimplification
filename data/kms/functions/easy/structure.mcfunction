execute unless entity @e[tag=kms_easy_structure_start] run tellraw @s "[KMS] 開始地点が設定されていません"
execute unless entity @e[tag=kms_easy_structure_end] run tellraw @s "[KMS] 終了地点が設定されていません"
execute unless entity @e[tag=kms_easy_structure_place] run tellraw @s "[KMS] 設置地点が設定されていません"
execute as @e[tag=kms_easy_structure,tag=!kms_easy_structure_place] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=kms_easy_structure_start] if entity @e[tag=kms_easy_structure_end] if entity @e[tag=kms_easy_structure_place] as @e[tag=kms_easy_structure_place] at @s run function kms:internal/easy_structure_nest
kill @e[tag=kms_easy_structure]
