blog: blog/* _includes/blog/* _layouts/blog/* _config.yml
	rm -rf _site/blog/*
	rm -rf blog/page*
	jekyll build
	cp -a _site/blog/page* ./blog

clean:
	rm -rf _site
