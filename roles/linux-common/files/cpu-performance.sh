# This script sets the CPU governeror to "performance" instead of the "powersave" 
# This script should run on start because the CPU defaults to "powersave" on boot
#
# You can check the current governor by running:
# grep -E "model name|cpu MHz" /proc/cpuinfo
#
# Read more
# http://superuser.com/a/454104
# http://wiki.archlinux.org/index.php/CPU_frequency_scaling
 
# This is a per core setting for whatever reason, set all cores.
echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
# it