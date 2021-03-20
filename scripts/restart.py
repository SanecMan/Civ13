import sys
import os
import shutil
import time
import psutil
import signal

pids = [pid for pid in os.listdir('/proc') if pid.isdigit()]

for pid in pids:
	try:

		# due to BUGS we need to make sure the file we use as a reference is newer than the other
		# todo: add test server support
		may_restart_server = []
		may_restart_server.append(port)

		if len(may_restart_server) == 0:
			may_restart_server.append("notathing")

		name = open(os.path.join('/proc', pid, 'cmdline'), 'r').read()
		if "civ13.dmb" in name:
			if not "sudo" in name:

				# main server logic: for some reason I could get a valid string/int for port so we're just using "in"

				# civ13 is the active server; restart civ13
							print("Killing the server...")
							os.kill(int(pid), signal.SIGKILL)
							os.system("sudo python3 {}{}scripts/launch.py".format(mdir,cdir))
	except IOError:
		continue

print("Done!")
