set -eu pipefail

log_with_date () {
	echo $(date +"%Y-%m-%dT%H:%M:%S%z") - "$1" \n
}

log_with_date "Printing pod network routes and interfaces ..."

for pod in $(kubectl get pods | grep mong | awk '{print $1}');
  do kubectl exec -ti $pod -c mongodb -- /bin/bash -c "hostname && ip a && route -n"; 
done;

log_with_date "Printing node network routes and interfaces ..."

hostname && route -n && ip a
