install:
	mkdir -p $$HOME/.mozilla/native-messaging-hosts
	cp native-app/pwalinks.py $$HOME/.mozilla/native-messaging-hosts/pwalinks.py
	sed -e "s#%APPDIR%#$$HOME/.mozilla/native-messaging-hosts/pwalinks.py#" native-app/pwalinks.json > $$HOME/.mozilla/native-messaging-hosts/pwalinks.json
