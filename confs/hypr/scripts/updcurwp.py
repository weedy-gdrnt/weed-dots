#!/usr/sbin/python

import subprocess

result = subprocess.run(['swww', 'query'], capture_output=True, text=True)
output = result.stdout

print("Current wallpaper: ")
curwp = output.split()[len(output.split())-1]
print(curwp)
print("Creating symlink...")
subprocess.run(["rm", "currentwp"])
subprocess.run(["ln", "-s", curwp, "currentwp"])
print("Done.")
