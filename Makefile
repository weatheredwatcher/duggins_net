build:
	docker build -t duggins:latest .

deploy:
	@echo Deploy
	aws lightsail push-container-image --region us-west-2 --service-name duggins-it-services-container-service-1 --label duggins-it-services --image duggins:latest
