tag @s add ResolveText.Target
summon marker ~ ~ ~ {Tags: ["kms", "kms_resolve_text"]}
execute as @e[type=marker,tag=kms_resolve_text] at @s run function kms:internal/resolve_text_process_entity
tag @s remove ResolveText.Target
