# Python Project Template

This is a minimal Python project template.

## Instructions

1. Install Python3 (of course).
2. Clone this repository, remove the `.git` folder, then initialise.
```
git clone https://github.com/noodlehaus/python-project-template <your-project-name>
cd <project-name> && rm -rf .git
git init
```
3. Install the pre-commit hook.
```
make hooks
```
4. Run make commands to setup the project.
```
# create and activate venv
make venv && source .venv/bin/activate

# install initial deps (tools)
make reqs
```
5. Check `Makefile` so all your target files are specified in `SOURCES`.
6. Run `make` to run the tool chain.

## Pre-commit Hook

Running `make hooks` installs a pre-commit hook on git. This pre-commit hoook runs

1. linting with `flake8` and `pylint`
1. formatting with `black`
1. type checking with `mypy`
1. code security check with `bandit`
1. unit tests with `pytest`

Failure in any of the steps will stop the commit.
