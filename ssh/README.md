Depending on platform this is different

- Personal machines on your network 
- random boxes
- cloud provider ones [Like GCP]




```
gcloud compute start-iap-tunnel dev-etl-box 22 --local-host-port=localhost:2222 --zone=us-central1-a --project <PROJECT>
````