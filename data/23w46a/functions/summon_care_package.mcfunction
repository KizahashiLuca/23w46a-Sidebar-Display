#####################################
## Minecraft 23w46a
##    Sidebar Display Datapack
## MC-Version: Java Edit. 1.20.3
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Licensed under CC BY-SA 4.0. 
#####################################

## ケアパッケージ召喚 / Summon a care package
summon minecraft:chest_minecart ~ ~ ~ {Tags:["CarePackage"],LootTable:"minecraft:chests/bastion_treasure"}
spreadplayers ~ ~ 10 20 false @e[tag=CarePackage]