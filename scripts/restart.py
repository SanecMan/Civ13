import sys
import os
import shutil
import time
import psutil
import signal

pids = [pid for pid in os.listdir('/proc') if pid.isdigit()]

print("Killing the server...")
os.kill(int(pid), signal.SIGKILL)
os.system("sudo python3 {}{}scripts/launch.py".format(mdir,cdir))

print("Done!")
