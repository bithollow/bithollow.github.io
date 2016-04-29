blog: blog/*
	rm -rf _site/blog/*
	rm -rf blog/page*
	jekyll build
	cp -a _site/blog/page* ./blog

clean:
	rm -rf _site
