# Temporal Server

```
kubectl -n temporal get pods
NAME                                   READY   STATUS    RESTARTS   AGE
cassandra-0                            1/1     Running   0          95m
frontend-7d6c6b7bcd-b5mcg              1/1     Running   0          89m
temporal-admintools-58d8bbc695-jch24   1/1     Running   0          92m
temporal-history-86d9d5bf95-crc4f      1/1     Running   0          89m
temporal-matching-5cfcbd457b-r4hrl     1/1     Running   0          89m
temporal-web-6c74c869b9-jcj2n          1/1     Running   0          92m
temporal-worker-868488974b-dlfq9       1/1     Running   2          89m
```

```
kubectl -n temporal get svc
NAME                         TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                                        AGE
cassandra                    ClusterIP   10.100.138.179   <none>        7000/TCP,7001/TCP,7199/TCP,9042/TCP,9160/TCP   95m
temporal-admintools          ClusterIP   10.100.208.131   <none>        22/TCP                                         92m
temporal-frontend            ClusterIP   10.100.88.15     <none>        7233/TCP                                       89m
temporal-frontend-headless   ClusterIP   10.100.167.251   <none>        7233/TCP,9090/TCP                              89m
temporal-history-headless    ClusterIP   10.100.15.98     <none>        7234/TCP,9090/TCP                              89m
temporal-matching-headless   ClusterIP   10.100.32.22     <none>        7235/TCP,9090/TCP                              89m
temporal-web                 ClusterIP   10.100.141.158   <none>        8088/TCP                                       92m
temporal-worker-headless     ClusterIP   None             <none>        7239/TCP,9090/TCP                              89m
```