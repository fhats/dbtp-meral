.PHONY: install

install:
	pip install -r requirements.txt
	cd supybot; python setup.py install; cd -

