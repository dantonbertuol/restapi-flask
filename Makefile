APP = restapi

test:
	@flake8 . --exclude .venv

compose-up:
	@docker compose build
	@docker compose up