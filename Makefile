all:
	cd charts \
		&& helm2 package ../../helm-django/
	helm2 repo index --url https://jengo.github.io/helm-charts/ .
	git add .
	git commit -m '[updated] To newest version'
	git push

