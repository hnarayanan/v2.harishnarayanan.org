all:
	publish

publish:
	rsync -aOPvhe ssh --delete --exclude-from=.exclude ./ harish@metroplex:/var/www/v2.harishnarayanan.org

install: publish

checklinks:
	wget --spider -o wget.log -e robots=off -w 1 -r -p https://v2.harishnarayanan.org/
