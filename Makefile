SOURCES = app.py my_module/
TESTS = tests/

.PHONY: venv reqs freeze hooks lint format typecheck security test

default: lint format typecheck security

venv:
	@python3 -m venv .venv && \
		echo "\nEnvironment created. Activate it with 'source .venv/bin/activate'."

reqs:
	pip install -r requirements.txt

freeze:
	pip freeze > requirements.txt

hooks:
	cp hooks/pre-commit .git/hooks/
	chmod +x .git/hooks/pre-commit

lint:
	flake8 $(SOURCES) && pylint $(SOURCES)

format:
	isort $(SOURCES) $(TESTS) && \
		black $(SOURCES) $(TESTS)

typecheck:
	mypy $(SOURCES) $(TESTS)

security:
	bandit -r $(SOURCES)

test:
	pytest $(TESTS)
