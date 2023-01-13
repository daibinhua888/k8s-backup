#!/bin/bash

NS=$1
ROOTDIR=$2

resourceList=(
deploy
services
endpoints
ingress
secrets
pvc
cm
cronjob
)

printList(){
  for aa in ${resourceList[@]};
  do
    aList=$(kubectl  -n $NS get $aa |grep -v NAME  |awk '{print $1}')
    if [ ! "${aList[*]}"x == "x" ];then
      [ -d ./$ROOTDIR/$aa ] || mkdir ./$ROOTDIR/$aa
      for i in $aList;
      do
        echo $aa $i
        kubectl -n $NS get $aa $i -o yaml > $ROOTDIR/$aa/$i.yaml
      done
    fi
  done
}

# create namespaces yaml
kubectl  get namespaces $NS -o yaml > $ROOTDIR/namespaces.yaml

# create pv yaml
pvList=$(kubectl get pv |grep "$NS/" |awk '{print $1}')
if [ ! "${pvList[*]}"x == "x" ];then
  for i in ${pvList[@]}
  do
    echo pv $i
    kubectl get pv $i -o yaml > $ROOTDIR/$i.pv.yaml
  done
fi

printList
