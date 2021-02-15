terraform plan -var serviceprinciple_id=$SERVICE_PRINCIPAL \
-var serviceprinciple_key="$SERVICE_PRINCIPAL_SECRET" \
-var tenant_id=$TENANT_ID \
-var subscription_id=$SUBSCRIPTION \
-var ssh_key="$SSH_KEY"



TENANT_ID=bb3c97ff-11b5-4b37-92cf-1897b2d8766b

SUBSCRIPTION=3e61aed4-4b76-44d4-9343-6979c9d282fd