ROOTDIR=k8s-`date +%Y%m%d`
mkdir $ROOTDIR

nsList=$(kubectl get ns|grep -v NAME|awk '{print $1}')
for ns in $nsList;
do
  echo $ns
  mkdir $ROOTDIR/$ns
  sh export-all-k8s-resource-concrete-ns.sh $ns $ROOTDIR/$ns
done
