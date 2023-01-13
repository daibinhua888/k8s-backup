# k8s-backup
备份k8s（kubeadm-ha+所有资源yaml）


备份k8s集群节点的命令如下（前提是基于kubeadm-ha方式安装）：
ansible-playbook -i example/hosts.s-master.ip.ini 93-backup-cluster.yml

自动导出k8s集群中所有资源的命令如下：
sh export-entire-k8s-yaml.sh


kubeadm-ha方式安装k8s，请参考：
https://github.com/TimeBye/kubeadm-ha
