build:
	docker build -t yard-sdk-verification-pipeline:latest .

run:
	docker run --env-file .env -p 9000:9000 yard-sdk-verification-pipeline:latest

test:
	docker run --rm yard-sdk-verification-pipeline:latest python -c "print('smoke test passed')"

health:
	curl -f http://localhost:9000/health
