install:
	mkdir -p $$HOME/.mozilla/native-messaging-hosts
	cp native-messaging-hosts/webapplinks.py $$HOME/.mozilla/native-messaging-hosts/webapplinks.py
	sed -e "s#@HOME@#$$HOME#" native-messaging-hosts/webapplinks.json > $$HOME/.mozilla/native-messaging-hosts/webapplinks.json

