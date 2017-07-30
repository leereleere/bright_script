#!/bin/bash

#Альтернативный вариант
#xrandr --listactivemonitors | wc -l > tmp
#b=$( grep -o -n -c -w "Monitors: 1" tmp )
#Альтернативный вариант

b=$(xrandr --listactivemonitors | wc -l)
a=2

if (( $a == $b )); then

    echo "Продолжение работы"

else 

    echo "Данная програма не работает с многомониторными системами"
    exit 

        fi 

xrandr > tmp
clear

if grep -q "DVI-0 connected primary" tmp; then
    rm tmp
    echo "У вас DVI монитор"
    echo "Введите желаемое значение яркости от 0.1 до 1"
    read x
    xrandr --output DVI-0 --brightness $x
    clear
    echo "Выбрана яркость равная = $x"

elif grep -q "VGA-1 connected primary" tmp; then
    rm tmp
    echo "У вас VGA монитор"
    echo "Введите желаемое значение яркости от 0.1 до 1"
    read x
    xrandr --output VGA-1 --brightness $x
    clear
    echo "Выбрана яркость равная = $x"
    
elif grep -q "VGA-0 connected primary" tmp; then
    rm tmp
    echo "У вас VGA монитор"
    echo "Введите желаемое значение яркости от 0.1 до 1"
    read x
    xrandr --output VGA-0 --brightness $x
    clear
    echo "Выбрана яркость равная = $x"    
    
elif grep -q "LVDS connected primary" tmp; then
    rm tmp
    echo "У вас встроенный монитор"
    echo "Введите желаемое значение яркости от 0.1 до 1"
    read x
    xrandr --output LVDS --brightness $x
    clear
    echo "Выбрана яркость равная = $x"

elif grep -q "HDMI-0 connected primary" tmp; then
    echo "У вас HDMI монитор"
    rm tmp
    echo "Введите желаемое значение яркости от 0.1 до 1"
    read x
    xrandr --output HDMI-0 --brightness $x
    clear
    echo "Выбрана яркость равная = $x"

elif grep -q "HDMI-1 connected primary" tmp; then
    echo "У вас HDMI монитор"
    rm tmp
    echo "Введите желаемое значение яркости от 0.1 до 1"
    read x
    xrandr --output HDMI-1 --brightness $x
    clear
    echo "Выбрана яркость равная = $x"

elif grep -q "DisplayPort-0 connected primary" tmp; then
    echo "У вас DisplayPort монитор"
    rm tmp
    echo "Введите желаемое значение яркости от 0.1 до 1"
    read x
    xrandr --output DisplayPort-0 --brightness $x
    clear
    echo "Выбрана яркость равная = $x"

elif grep -q "DisplayPort-1 connected primary" tmp; then
    echo "У вас DisplayPort монитор"
    rm tmp
    echo "Введите желаемое значение яркости от 0.1 до 1"
    read x
    xrandr --output DisplayPort-1 --brightness $x
    clear
    echo "Выбрана яркость равная = $x"

        fi
