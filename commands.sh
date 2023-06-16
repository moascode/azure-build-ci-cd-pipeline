# environmnet setup
ssh-keygen -t rsa
make all

# azure webapp
az webapp up -n helloflaskmoascode -g azuredevops -l southeastasia --sku F1
./make_predict_azure_app.sh 
az webapp log tail

# locust test
pip3 install locust
locust -f locustfile.py --host https://helloflaskmoascode.azurewebsites.net/  --headless -u 20 -r 5 -t 20s