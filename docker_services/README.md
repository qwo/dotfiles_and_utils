# Postgres
docker run --name postgres-postgis  -p 5432:5432 -v postgres-data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=<Password> -d mdillon/postgis

# Grafana 
docker run   -d   -p 3000:3000   --name=grafana   -v grafana-storage:/var/lib/grafana   grafana/grafana
