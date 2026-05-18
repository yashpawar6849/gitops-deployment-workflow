# Makefile for common project tasks

.PHONY: build test deploy lint clean

build:
	docker build -t gitops-deployment-workflow:latest .

test:
	echo "No tests defined yet. Add your test commands here."

lint:
	echo "No linter configured. Add your lint commands here."

deploy:
	kubectl apply -f kubernetes/deploy.yaml

clean:
	docker rmi gitops-deployment-workflow:latest || true
