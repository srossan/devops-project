install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test-ci:
	python -m pytest -vv test_hello.py

lint-ci:
	pylint --disable=R,C hello.py

all-ci:
	install lint-ci test-ci

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203,W0702 app.py

all: install lint test
