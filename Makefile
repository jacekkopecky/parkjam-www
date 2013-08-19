default: jekyll 

publish: copy

copy: jekyll
	@rsync -rlpcvz --delete-after --exclude="parks.uris" -e ssh _site/ parking:root/

jekyll:
	@jekyll build
	@find _site -name \*.bak -exec rm -v {} \;

edit:
	@gvim index.html

show:
	@open _site/index.html

clean:
	@rm -rf _site
