.PHONY: install

install:
	pip install -r requirements.txt
	cd supybot; python setup.py install; cd -
	@# This templating sucks, but it's necessary until upstarts gets its shit together
	sed "s,{{PWD}},`pwd`,g" init/meral.conf > /etc/init/meral.conf
