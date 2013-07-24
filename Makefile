install:
	cp benv /usr/local/bin
uninstall:
	rm -rf /usr/local/bin/benv
update:
	make uninstall
	make install