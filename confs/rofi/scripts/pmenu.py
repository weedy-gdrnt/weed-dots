#                          __
#  _      _____  ___  ____/ /
# | | /| / / _ \/ _ \/ __  /
# | |/ |/ /  __/  __/ /_/ /
# |__/|__/\___/\___/\__,_/
# 				waybar dotfiles (script)

import subprocess

options = [
    "",
    "",
    "",
    "",
    "󰄛"
]

rofi = subprocess.Popen(
    ["rofi", "-dmenu", "-p", "pmenu", "-config", "/home/weed/.config/rofi/pmenu.rasi"],
    stdin=subprocess.PIPE,
    stdout=subprocess.PIPE,
    stderr=subprocess.DEVNULL,
    text=True,
)


selection, _ = rofi.communicate("\n".join(options))
print(_)

selection = selection.strip()
# 󰄛 hyprctl dispatch exec '[float] kitty sh -c "fastfetch; read -n 1 -s -r -p \"Press any key to exit...\" "'
if selection == "":
    subprocess.run(["sudo", "poweroff"])
elif selection == "":
    subprocess.run(["sudo", "reboot"])
elif selection == "":
    subprocess.run(["hyprctl", "dispatch", "exit"])
elif selection == "":
    subprocess.run(["hyprlock"])
elif selection == "󰄛":
    subprocess.run(
"hyprctl dispatch exec '[float] kitty sh -c \"fastfetch; echo; echo Press any key to exit...; read -n 1\"'", shell=True)
else:
    print("abort...")

