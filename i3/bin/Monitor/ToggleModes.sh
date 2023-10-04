# Poor code written by me, but it works for me :>. I accept no judgements.
# I am vengence.
Modes=("xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --off --output HDMI1 --off --output VIRTUAL1 --off" 
"xrandr --output eDP1 --off --output DP1 --off --output DP2 --off --output DP3 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off" 
"xrandr --output eDP1 --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off")
label=("eDP1 only" "HDMI1 Only" "Dual Screen")

index=$(($RANDOM%3))
echo "element $index is ${label[$index]}"
${Modes[$index]}

sleep 1
i3-msg restart