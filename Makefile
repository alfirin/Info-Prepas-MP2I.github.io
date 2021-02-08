# Makefile to send this project to Zam
SHELL=/usr/bin/env /bin/bash

all:	send

send:	send_zamok
send_zamok:	clean
	CP --exclude=./.git/ ./*.md ./{LICENSE.txt,Makefile} ${Szam}Info-Prepas-MP2I/
        # find . -type d -exec "cd {}\; make send_zamok"

clean:
	-mv -vf ./*~ /tmp/
