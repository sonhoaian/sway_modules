import subprocess as sp
import time
import sys
import os

if len(sys.argv) == 1:
    time_waiting = 60*5
else:
    time_waiting = int(sys.argv[1])

cmd_image = '`find ~/Images -type f | shuf -n 1`'
cmd_load_image = 'swaymsg output "*" bg '

def RandomImg(time_wait):
    cmd = cmd_load_image + cmd_image + ' fit'
    os.system(cmd)
    time.sleep(time_wait)

def main():
    while(True):
        RandomImg(time_waiting)

main()
