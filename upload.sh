#!/bin/sh

if ! [ -d ./venv ] ; then
	virtualenv2 venv
	./venv/bin/pip install pyserial
	./venv/bin/pip install pillow
fi

(
	cd LEDBadgeProgrammer 
	../venv/bin/python2 ./ledbadge.py --height=11 --width=32 speed=1 effect=left \
	../badge_data/cyber_33x11.png \
	../badge_data/vogelchr_chaos_social_122x11.png \
	../badge_data/memories.png \
	../badge_data/35c3_inverted.png \
	../badge_data/36c3_led_sign.png
)
