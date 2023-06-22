# Python Project Template

This is a minimal Python project template.

## Instructions

1. Install Python (of course).
2. Clone this repository, and remove the `.git` folder.
```
$ git clone https://github.com/noodlehaus/python-project-template <project-name>
$ cd <project-name> && rm -rf .git
```
3. Initialise the repository.
```
$ git init .
```
4. Create a virtual environment under `.venv` inside the project, and activate it.
```
$ python3 -m venv .venv && source .venv/bin/activate
```
5. Install the dependencies with `make install`.
6. Install the git pre-commit hook by running `make hooks`.
7. Run the tests with `make test`.

## Pre-commit Hook

Running `make hooks` installs a pre-commit hook on git. This pre-commit hoook runs

    1. type checking with `mypy`
    2. formatting with `black`
    3. code security check with `bandit`
    4. unit tests with `pytest`

Failure in any of the steps would stop the commit.
