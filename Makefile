lint-vanilla:
	echo "lint chart created with 'helm create nginx'"
	helm lint nginx

lint-broken:
	echo "lint nginx-broken-yaml chart"
	helm lint nginx-broken-yaml

template-vanilla:
	echo "template chart created with 'helm create nginx'"
	helm template nginx

template-broken:
	echo "template nginx-broken-yaml chart"
	helm template nginx-broken-yaml

kubeval-vanilla:
	kubeval nginx/

conftest-vanilla:
	helm template nginx | conftest test -

terratest-vanilla:
	go test .

kubeval-vanilla:
	helm template nginx | kubeval 
