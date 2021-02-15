terraform plan -var serviceprinciple_id=$SERVICE_PRINCIPAL \
-var serviceprinciple_key="$SERVICE_PRINCIPAL_SECRET" \
-var tenant_id=$TENANT_ID \
-var subscription_id=$SUBSCRIPTION \
-var ssh_key="$SSH_KEY"



TENANT_ID=6b40b30e-9dd5-487f-8598-c03d910bc6f5

SUBSCRIPTION=5f25ab28-b660-41e9-86b4-15dd16737c75


echo $SERVICE_PRINCIPAL_JSON
{ "appId": "6c54e0dc-8ac3-4b17-b417-63b7cd011e05", "displayName": "aks-getting-started-sp", "name": "http://aks-getting-started-sp", "password": "gTYE8iNp2oeUy2xp7rV_AsD.Nt-.OwTDNp", "tenant": "6b40b30e-9dd5-487f-8598-c03d910bc6f5" }


terraform apply -var serviceprinciple_id=$SERVICE_PRINCIPAL \
-var serviceprinciple_key="$SERVICE_PRINCIPAL_SECRET" \
-var tenant_id=$TENANT_ID \
-var subscription_id=$SUBSCRIPTION \
-var ssh_key="$SSH_KEY"

az aks get-credentials -n petclinic-aks -g petclinic-aks


terraform destroy -var serviceprinciple_id=$SERVICE_PRINCIPAL \
-var serviceprinciple_key="$SERVICE_PRINCIPAL_SECRET" \
-var tenant_id=$TENANT_ID \
-var subscription_id=$SUBSCRIPTION \
-var ssh_key="$SSH_KEY"