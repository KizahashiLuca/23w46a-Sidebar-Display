#####################################
## Minecraft 23w46a
##    Sidebar Display Datapack
## MC-Version: Java Edit. 1.20.3
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Licensed under CC BY-SA 4.0. 
#####################################

## 座標表示 / Display position
$scoreboard players display numberformat Pos: 23w46a_Sidebar fixed [{"text":"[$(x), $(y), $(z)]","color":"green"}]

## 時間表示 / Display weather
$scoreboard players set #23w46a 23w46a_DayTimeMinTmp $(daytime_min)
$execute if score #23w46a 23w46a_DayTimeMinTmp matches 0..9 run scoreboard players display numberformat DayTime: 23w46a_Sidebar fixed [{"text":"$(daytime_hour):0$(daytime_min)","color":"blue"}]
$execute unless score #23w46a 23w46a_DayTimeMinTmp matches 0..9 run scoreboard players display numberformat DayTime: 23w46a_Sidebar fixed [{"text":"$(daytime_hour):$(daytime_min)","color":"blue"}]

## 天気表示 / Display weather
$scoreboard players display numberformat Weather: 23w46a_Sidebar fixed [{"text":"$(weather)","color":"blue"}]