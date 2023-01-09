az aks create --resource-group demo-medium-aks-rg --name demo-medium-aks \
    --enable-addons monitoring,http_application_routing \
    --kubernetes-version 1.23.12 --generate-ssh-keys \
    --service-principal abx--sdf--sdf--4f5-12dsa --client-secret axs-sss-09ds-9500 --node-count 4 \
    --vm-set-type VirtualMachineScaleSets \
    --load-balancer-sku standard
    --enable-cluster-autoscaler \ 
    --min-count 1 \
    --max-count 5 

az aks get-credentials --resource-group demo-medium-aks-rg --name demo-medium-aks

az acr create --resource-group demo-medium-aks-rg --name demo-medium-acr --sku basic --admin-enabled true

az aks get-credentials --resource-group demo-medium-aks-rg --name demo-medium-aks

az acr build --registry demo-medium-acr --image some-basic-vue-app:v1 .

kubectl apply -f deployment.yaml

