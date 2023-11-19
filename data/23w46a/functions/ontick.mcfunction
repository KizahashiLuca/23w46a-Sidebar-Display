#####################################
## Minecraft 23w46a
##    Sidebar Display Datapack
## MC-Version: Java Edit. 1.20.3
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Licensed under CC BY-SA 4.0. 
#####################################

## ケアパッケージ召喚 / Summon a care package
execute unless entity @e[tag=CarePackage] run function 23w46a:summon_care_package

## ケアパッケージ座標取得 / Get position of care packages
execute as @e[tag=CarePackage] store result score @s 23w46a_PosX run data get entity @s Pos[0] 1.0
execute as @e[tag=CarePackage] store result score @s 23w46a_PosY run data get entity @s Pos[1] 1.0
execute as @e[tag=CarePackage] store result score @s 23w46a_PosZ run data get entity @s Pos[2] 1.0

## ストレージ設定 - ケアパッケージ座標 / Modify data to storage from scoreboard - position of care package
execute store result storage 23w46a: macro.x int 1.0 run scoreboard players get @e[tag=CarePackage,limit=1] 23w46a_PosX
execute store result storage 23w46a: macro.y int 1.0 run scoreboard players get @e[tag=CarePackage,limit=1] 23w46a_PosY
execute store result storage 23w46a: macro.z int 1.0 run scoreboard players get @e[tag=CarePackage,limit=1] 23w46a_PosZ

## 時間計算 / Calculate day time
execute store result score #23w46a 23w46a_DayTime run time query daytime
scoreboard players operation #23w46a 23w46a_DayTimeHour = #23w46a 23w46a_DayTime
scoreboard players operation #23w46a 23w46a_DayTimeMin = #23w46a 23w46a_DayTime
scoreboard players add #23w46a 23w46a_DayTimeHour 6000
scoreboard players operation #23w46a 23w46a_DayTimeHour /= #23w46a 23w46a_1000
execute if score #23w46a 23w46a_DayTimeHour >= #23w46a 23w46a_24 run scoreboard players remove #23w46a 23w46a_DayTimeHour 24
scoreboard players operation #23w46a 23w46a_DayTimeMin %= #23w46a 23w46a_1000
scoreboard players operation #23w46a 23w46a_DayTimeMin *= #23w46a 23w46a_60
scoreboard players operation #23w46a 23w46a_DayTimeMin /= #23w46a 23w46a_1000

## ストレージ設定 - 時間 / Modify data to storage - day time
execute store result storage 23w46a: macro.daytime_min int 1.0 run scoreboard players get #23w46a 23w46a_DayTimeMin
execute store result storage 23w46a: macro.daytime_hour int 1.0 run scoreboard players get #23w46a 23w46a_DayTimeHour

## ストレージ設定 - 天気 / Modify data to storage - weather
execute if predicate 23w46a:weather/clear run data modify storage 23w46a: macro.weather set value "Clear"
execute if predicate 23w46a:weather/rain run data modify storage 23w46a: macro.weather set value "Rain"
execute if predicate 23w46a:weather/thunder run data modify storage 23w46a: macro.weather set value "Thunder"

## スコアボード設定 - リザルト / Set scoreboard - player result
execute as @a run scoreboard players operation @s 23w46a_Sidebar = @s 23w46a_KillCount

## マクロでスコアボードサイドバーを設定 / Set scoreboard sidebar by macro
function 23w46a:set_sidebar with storage 23w46a: macro