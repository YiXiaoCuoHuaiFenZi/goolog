install:
	pip install -e .

install-dev:
	pip install -e ".[dev]"

freeze:
	CUSTOM_COMPILE_COMMAND="make freeze" pip-compile --no-emit-index-url --output-file requirements.txt setup.py

unit:
	py.test -W ignore::DeprecationWarning --ignore=venv

.PHONY: install install-dev unit freeze