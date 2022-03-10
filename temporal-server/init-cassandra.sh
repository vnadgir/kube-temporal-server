#!/bin/bash
kubectl -n temporal exec -it services/temporal-admintools -- bash -c "CASSANDRA_HOST=cassandra.temporal.svc.cluster.local CASSANDRA_PORT=9042 temporal-cassandra-tool create-Keyspace -k temporal"
kubectl -n temporal exec -it services/temporal-admintools -- bash -c "CASSANDRA_HOST=cassandra.temporal.svc.cluster.local CASSANDRA_PORT=9042 CASSANDRA_KEYSPACE=temporal temporal-cassandra-tool setup-schema -v 0.0"
kubectl -n temporal exec -it services/temporal-admintools -- bash -c "CASSANDRA_HOST=cassandra.temporal.svc.cluster.local CASSANDRA_PORT=9042 CASSANDRA_KEYSPACE=temporal temporal-cassandra-tool update -schema-dir /etc/temporal/schema/cassandra/temporal/versioned"
kubectl -n temporal exec -it services/temporal-admintools -- bash -c "CASSANDRA_HOST=cassandra.temporal.svc.cluster.local CASSANDRA_PORT=9042 temporal-cassandra-tool create-Keyspace -k temporal_visibility"
kubectl -n temporal exec -it services/temporal-admintools -- bash -c "CASSANDRA_HOST=cassandra.temporal.svc.cluster.local CASSANDRA_PORT=9042 CASSANDRA_KEYSPACE=temporal_visibility temporal-cassandra-tool setup-schema  -v 0.0"
kubectl -n temporal exec -it services/temporal-admintools -- bash -c "CASSANDRA_HOST=cassandra.temporal.svc.cluster.local CASSANDRA_PORT=9042 CASSANDRA_KEYSPACE=temporal_visibility temporal-cassandra-tool update -schema-dir /etc/temporal/schema/cassandra/visibility/versioned"
