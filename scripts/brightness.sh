max_bightness=12
tick_amount=1
min_brightness=3

brightness=$(cat ~/dotfiles/scripts/brightness.txt)
echo $brightness

for arg in $@; do
    if [[ $arg =~ "inc" ]]; then
        if [ $brightness -lt $max_bightness ]; then
            brightness=$(($brightness+$tick_amount))
        fi
        echo "Brightness = $brightness"
    elif [[ $arg =~ "dec" ]]; then
        if [ $brightness -gt $min_brightness ]; then
            brightness=$(($brightness-$tick_amount))
        fi
        echo "Brightness = $brightness"
    fi

    echo $brightness > ~/dotfiles/scripts/brightness.txt

done

xrandr --output eDP-1 --brightness $(bc <<< "scale=2; $brightness/10")
