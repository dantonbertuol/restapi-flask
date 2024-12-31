APP = restapi

test:
	@pytest -v --disable-warnings

compose-up:
	@docker compose build
	@docker compose up