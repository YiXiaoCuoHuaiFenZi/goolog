install:
	pip install -e .

install-dev:
	pip install -e ".[dev]"

freeze:
	CUSTOM_COMPILE_COMMAND="make freeze" pip-compile --no-emit-index-url --output-file requirements.txt setup.py

.PHONY: install install-dev lint unit coverage build-proto test freeze
