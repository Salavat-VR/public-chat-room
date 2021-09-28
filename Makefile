MANAGE = python src/manage.py
WSGI_PORT = 8081

run:
	$(MANAGE) runserver


collect-static:
	$(MANAGE) collectstatic

make_migrations:
	$(MANAGE) makemigrations

migrations_dry:
	$(MANAGE)  makemigrations --check --dry-run

migrate:
	$(MANAGE) migrate

shell_plus:
	$(MANAGE) shell_plus --print-sql