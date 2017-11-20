
Start FastScore:
`docker-compose -f fastscore-over-rest/docker-compose.yml up -d`{{execute}}

List FastScore configuration:

`cat fastscore-over-rest/config.yaml`{{execute}}

Connect to FastScore; note the following:
- docker's containers are running on host01
- FastScore exposes port 8000 for management and configuration

`fastscore connect https://host01:8000`{{execute}}

Configure FastScore:

`fastscore config set fastscore-over-rest/config.yaml`{{execute}}

Show FastScore fleet status (-wait instructs to wait for all FastScore micro-services to start and -v displays versions info):
`fastscore fleet -wait -v`{{execute}}
