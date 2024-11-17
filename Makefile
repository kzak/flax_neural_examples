.PHONY: install
install:
	uv sync

.PHONY: jupyter
jupyter:
	uv run jupyter lab --ip='*' --no-browser --NotebookApp.token='' --NotebookApp.password=''	

.PHONY: check
check:
	uv run ruff check

.PHONY: fix
fix:
	uv run ruff check --fix