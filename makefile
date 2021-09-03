all:
	npm --silent ci --no-progress
	npm run build
	npm run generate

production:
	git pull
	make

install:
	ssh -q root@mpont91.com 'cd /var/www/cv && make production'
