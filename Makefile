HOST = fpgamining.com
DIR = clone

clone:
	wget --mirror --wait=2 --page-requisites --html-extension \
		--convert-links --no-host-directories --directory-prefix=$(DIR) http://$(HOST)

deploy:
	aws s3 sync $(DIR) s3://$(HOST) --delete
