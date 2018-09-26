
found=0

brightness="/sys/class/backlight/intel_backlight/brightness"
actual_brightness="/sys/class/backlight/intel_backlight/actual_brightness"
max_bightness="/sys/class/backlight/intel_backlight/max_brightness"

min_brightness_val=500

if [ -e $brightness ] && [ -e $actual_brightness ] && [ -e $max_bightness ]; then
    echo $brightness found
    echo $actual_brightness found
    echo $max_bightness found
    found=1
fi



if [ $found -gt 0 ]; then
    tick_amount=100

    # Fetch values
    brightness_val=$(cat $brightness)

    echo Current brightness $brightness_val
    actual_brightness_val=$(cat $actual_brightness)

    echo Actual brightness $actual_brightness_val
    max_bightness_val=$(cat $max_bightness)

    new_brightness=500

    OP=$1
    AMOUNT=$2

    # Run through arguments and handle brightness
    if [[ $OP =~ "inc" ]]; then
        if [[ $brightness_val -lt $max_bightness_val ]]; then
            brightness_val=$(($brightness_val+$AMOUNT))
        else
            brightness_val=$min_brightness_val
        fi
    elif [[ $OP =~ "dec" ]]; then
        if [[ $brightness_val -gt $min_brightness_val ]]; then
            brightness_val=$(($brightness_val-$AMOUNT))
        else
            brightness_val=$max_bightness_val
        fi
    fi
    echo Brightness = $brightness_val

    sudo cat $brightness_val > $brightness


else
    echo "Couldn't find backlight properties."
fi

