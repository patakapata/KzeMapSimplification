execute store result score ProgressBarText.Percentage KzeMapSimplification run data get storage kms:progress_bar_text Percentage 1000
execute store result score ProgressBarText.Length KzeMapSimplification run data get storage kms:progress_bar_text Length
scoreboard players set ProgressBarText.PercentPerChar KzeMapSimplification 100000
scoreboard players operation ProgressBarText.PercentPerChar KzeMapSimplification /= ProgressBarText.Length KzeMapSimplification
scoreboard players operation ProgressBarText.CompletedSections KzeMapSimplification = ProgressBarText.Percentage KzeMapSimplification
scoreboard players operation ProgressBarText.CompletedSections KzeMapSimplification /= ProgressBarText.PercentPerChar KzeMapSimplification
scoreboard players operation ProgressBarText.InCompleteSections KzeMapSimplification = ProgressBarText.Length KzeMapSimplification
scoreboard players operation ProgressBarText.InCompleteSections KzeMapSimplification -= ProgressBarText.CompletedSections KzeMapSimplification

data modify storage kms:progress_bar_text Result set value []
execute if score ProgressBarText.CompletedSections KzeMapSimplification matches 1.. run function kms:internal/progress_bar_text_completed_loop
execute if score ProgressBarText.InCompleteSections KzeMapSimplification matches 1.. run function kms:internal/progress_bar_text_incomplete_loop
execute if data storage kms:progress_bar_text {AutoResolve: true} run function kms:internal/progress_bar_text_auto_resolve
