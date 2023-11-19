#####################################
## Minecraft 23w46a
##    Sidebar Display Datapack
## MC-Version: Java Edit. 1.20.3
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定 / Set scoreboard
scoreboard objectives add 23w46a_PosX dummy [{"text":"Care Pacakge Position - X"}]
scoreboard objectives add 23w46a_PosY dummy [{"text":"Care Pacakge Position - Y"}]
scoreboard objectives add 23w46a_PosZ dummy [{"text":"Care Pacakge Position - Z"}]

scoreboard objectives add 23w46a_DayTime dummy [{"text":"Day Time - Raw data"}]
scoreboard objectives add 23w46a_DayTimeHour dummy [{"text":"Day Time - Hour"}]
scoreboard objectives add 23w46a_DayTimeMin dummy [{"text":"Day Time - Minute"}]
scoreboard objectives add 23w46a_DayTimeMinTmp dummy [{"text":"Day Time - Minute Temp"}]
scoreboard objectives add 23w46a_1000 dummy [{"text":"1000"}]
scoreboard objectives add 23w46a_60 dummy [{"text":"60"}]
scoreboard objectives add 23w46a_24 dummy [{"text":"24"}]
scoreboard players set #23w46a 23w46a_1000 1000
scoreboard players set #23w46a 23w46a_60 60
scoreboard players set #23w46a 23w46a_24 24

scoreboard objectives add 23w46a_KillCount minecraft.custom:minecraft.mob_kills [{"text":"Result - Kill Count"}]

scoreboard objectives add 23w46a_Sidebar dummy [{"text":"Information","color":"green","bold":true}]
scoreboard objectives setdisplay sidebar 23w46a_Sidebar
scoreboard objectives modify 23w46a_Sidebar numberformat
scoreboard objectives modify 23w46a_Sidebar displayautoupdate true

scoreboard players set CarePackage 23w46a_Sidebar 2147483647
scoreboard players set Pos: 23w46a_Sidebar 2147483646
scoreboard players set Space1 23w46a_Sidebar 2147483645
scoreboard players set World 23w46a_Sidebar 2147483644
scoreboard players set DayTime: 23w46a_Sidebar 2147483643
scoreboard players set Weather: 23w46a_Sidebar 2147483642
scoreboard players set Space2 23w46a_Sidebar 2147483641
scoreboard players set Result 23w46a_Sidebar 2147483640
scoreboard players set @a 23w46a_KillCount 0
scoreboard players set @a 23w46a_Sidebar 0

## スコアボード表示設定 / Set display configuration
scoreboard players display name CarePackage 23w46a_Sidebar [{"text":"[[Care Package]]","color":"red"}]
scoreboard players display name World 23w46a_Sidebar [{"text":"[[World]]","color":"blue"}]
scoreboard players display name Result 23w46a_Sidebar [{"text":"[[Mob Kill]]","color":"yellow"}]
scoreboard players display name Space1 23w46a_Sidebar [""]
scoreboard players display name Space2 23w46a_Sidebar [""]
scoreboard players display numberformat CarePackage 23w46a_Sidebar blank
scoreboard players display numberformat World 23w46a_Sidebar blank
scoreboard players display numberformat Result 23w46a_Sidebar blank
scoreboard players display numberformat Space1 23w46a_Sidebar blank
scoreboard players display numberformat Space2 23w46a_Sidebar blank

## ケアパッケージ召喚 / Summon a chest minecart as a care package
kill @e[tag=CarePackage]
function 23w46a:summon_care_package