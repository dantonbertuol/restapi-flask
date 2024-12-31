APP = restapi

test:
	@pytest -v --disable-warnings

compose-up:
	@docker compose build
	@docker compose up

heroku:
	@heroku container:login
	@heroku stack:set -a restapi-flask-udemy container
	@heroku container:push -a restapi-flask-udemy web
	@heroku container:release -a restapi-flask-udemy web
	@heroku ps:scale -a restapi-flask-udemy web=1