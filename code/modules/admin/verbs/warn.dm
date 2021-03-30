/client/proc/warn(warned_ckey)
	if (!check_rights(R_ADMIN))	return

	if (!warned_ckey || !istext(warned_ckey))	return
//	if (warned_ckey in admin_datums)
//		usr << "<font color='red'>Error: warn(): You can't warn admins.</font>"
//		return

	for (var/client/C in clients)
		if (C.ckey == warned_ckey)
			C << 'sound/effects/warn.ogg'
			world << "<big><big><big><font color='red'><b>[warned_ckey]</b>:<b> Моя жопа <big><b>ГОРИТ!!!</b></big></font></big></big></big>"
			message_admins("[key_name_admin(src)] дал варн [key_name_admin(C)].")
			return
	message_admins("[key_name_admin(src)] дал варн [warned_ckey] (DC).")