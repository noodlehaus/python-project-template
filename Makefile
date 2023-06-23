.PHONY: install freeze hooks typecheck format security test

default: lint format typecheck security

install:
	pip install -r requirements.txt

freeze:
	pip freeze > requirements.txt

hooks:
	chmod +x hooks/pre-commit
	cp hooks/pre-commit .git/hooks/

lint:
	flake8 my_module/

format:
	isort my_module/ tests/ && black my_module/ tests/

typecheck:
	mypy my_module/ tests/

security:
	bandit -r my_module/

test:
	pytest tests/
