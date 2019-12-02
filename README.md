# wmts-stack

```
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
docker-compose -f docker-compose.yml -f docker-compose.dev.yml down
```


## Terraform
Get list of ssh keys:
```
curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $DIGITALOCEAN_TOKEN" "https://api.digitalocean.com/v2/account/keys" > ssh.json
```

Get list of images:
```
curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $DIGITALOCEAN_TOKEN" "https://api.digitalocean.com/v2/images?type=distribution" > images.json
```
(How to get marketplace images?)

Get list of sizes:
```
curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $DIGITALOCEAN_TOKEN" "https://api.digitalocean.com/v2/sizes" 
````




```
terraform init (only once)

terraform plan

terraform apply -auto-approve
```
