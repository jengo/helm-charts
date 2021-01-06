all:
	cd charts \
		&& helm package ../../helm-django/
	helm repo index --url https://jengo.github.io/helm-charts/ .
	git add .
	git commit -m '[updated] To newest version'
	git push

