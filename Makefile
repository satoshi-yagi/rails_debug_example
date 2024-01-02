rails_help:
	docker-compose run --rm web rails --help

rails_new:
	docker-compose run --rm web rails new . \
		-O -C -S -J -T -G -M \
		-–skip-active-job \
		-–skip-active-storage \
		-–skip-keeps \
		--skip-action-mailbox \
		--skip-action-text \
		--skip-turbolinks \
		--skip-jbuilder \
		--skip-webpack-install \
		-–api \
		--skip \
		--force