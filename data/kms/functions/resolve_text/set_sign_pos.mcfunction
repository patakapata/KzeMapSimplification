summon marker ~ ~ ~ {Tags:["kms_resolve_text_set_sign_pos"]}
data modify storage kms:resolve_test SignPos set from entity @e[limit=1,tag=kms_resolve_text_set_sign_pos,type=marker] Pos
kill @e[tag=kms_resolve_text_set_sign_pos,type=marker]