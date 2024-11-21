#!/usr/bin/env python

import webbrowser
import struct
import sys

# This is sent as JSON, so this strips the " from the beginning and end of our string
def parse_url(str):
	return str[1:-1]

try:
	# Python 3.x version. Read a message from stdin and decode it.
	while True:
		rawLength = sys.stdin.buffer.read(4)
		if len(rawLength) == 0:
			sys.exit(0)
		messageLength = struct.unpack('@I', rawLength)[0]
		url = parse_url(sys.stdin.buffer.read(messageLength).decode('utf-8'))
		webbrowser.open(url, new=0, autoraise=True)

except AttributeError:
	# Python 2.x version (if sys.stdin.buffer is not defined). Read a message from stdin and decode it.
	while True:
		rawLength = sys.stdin.read(4)
		if len(rawLength) == 0:
			sys.exit(0)
		messageLength = struct.unpack('@I', rawLength)[0]
		url = parse_url(sys.stdin.read(messageLength))
		webbrowser.open(url, new=0, autoraise=True)
