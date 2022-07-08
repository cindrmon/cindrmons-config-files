#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar;
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /var/log/polybar/polybar_main_mon.log /var/log/polybar/polybar_sub_mon_top.log /var/log/sub_mon_bot.log
polybar main_monitor 2>&1 | tee -a /var/log/polybar/polybar_main_mon.log & disown
polybar sub_monitor_top 2>&1 | tee -a /var/log/polybar/polybar_sub_mon_top.log & disown
polybar sub_monitor_bottom 2>&1 | tee -a /var/log/polybar/polybar_sub_mon_bot.log & disown

echo "Bars launched..."
