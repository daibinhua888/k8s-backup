# k8s-backup
备份k8s（kubeadm-ha+所有资源yaml）


备份k8s集群节点的命令如下（前提是基于kubeadm-ha方式安装）：
ansible-playbook -i example/hosts.s-master.ip.ini 93-backup-cluster.yml

自动导出k8s集群中所有资源的命令如下：
sh export-entire-k8s-yaml.sh


kubeadm-ha方式安装k8s，请参考：
https://github.com/TimeBye/kubeadm-ha


# tree k8s-backup
k8s-backup
├── export-all-k8s-resource-concrete-ns.sh
├── export-entire-k8s-yaml.sh
├── k8s-20230113
│   ├── customs-declaration-and-billing
│   │   ├── cm
│   │   │   ├── customs-declaration-and-billing-configs.yaml
│   │   │   └── kube-root-ca.crt.yaml
│   │   ├── deploy
│   │   │   ├── customs-finance-service.yaml
│   │   │   ├── frontend-pc-admin.yaml
│   │   │   ├── pigx-auth.yaml
│   │   │   ├── pigx-gateway.yaml
│   │   │   ├── pigx-redis.yaml
│   │   │   ├── pigx-register.yaml
│   │   │   └── pigx-upms-biz.yaml
│   │   ├── endpoints
│   │   │   ├── pc-admin.yaml
│   │   │   ├── pigx-auth.yaml
│   │   │   ├── pigx-gateway.yaml
│   │   │   ├── pigx-redis.yaml
│   │   │   └── pigx-register.yaml
│   │   ├── ingress
│   │   │   ├── nacos.yaml
│   │   │   └── www.yaml
│   │   ├── namespaces.yaml
│   │   ├── secrets
│   │   │   ├── default-token-x8qdm.yaml
│   │   │   └── registry-aliyun-images.yaml
│   │   └── services
│   │       ├── pc-admin.yaml
│   │       ├── pigx-auth.yaml
│   │       ├── pigx-gateway.yaml
│   │       ├── pigx-redis.yaml
│   │       └── pigx-register.yaml
