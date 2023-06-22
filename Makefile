.PHONY: install freeze hooks typecheck format security test

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
	black my_module/

typecheck:
	mypy my_module/

security:
	bandit -r my_module/

test:
	pytest tests/
