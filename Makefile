APP = restapi-flask-udemy

test:
	@pytest -v --disable-warnings

compose-up:
	@docker compose build
	@docker compose up

heroku:
	@heroku container:login
	@heroku stack:set -a $(APP) container
	@heroku container:push -a $(APP) web
	@heroku container:release -a $(APP) web
	@heroku ps:scale -a $(APP) web=1