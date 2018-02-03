#!/usr/bin/env bash
# $ for i in $( kg po|awk '{ print $1 }'|grep -v NAMESPACE|sort -u ); do k top po -n $i; done|grep -v NAME|awk '{print $3 "\t" $1 "\t" $2}'|sort -hr|head
# 324Mi	deis-monitor-influxdb-68c5fc56-lw7kj	6m
# 231Mi	deis-controller-6b4bf46655-7c8ws	0m
# 158Mi	deis-database-9bd9699cd-vx5nz	6m
# 133Mi	deis-logger-fluentd-knm2t	2m
# 132Mi	deis-logger-fluentd-tjcd8	2m
# 132Mi	deis-logger-fluentd-d6cpg	1m
# 65Mi	deis-minio-65dd56c5b5-7gcrg	0m
# 60Mi	hipper-zeppelin-web-799d6c88d7-njl88	1m
# 59Mi	hipper-zeppelin-web-799d6c88d7-vw2sp	1m
# 55Mi	hipper-zeppelin-web-799d6c88d7-x4rlm	1m
#  ...

for i in $( kg po|awk '{ print $1 }'|grep -v NAMESPACE|sort -u ); do k top po -n $i; done|grep -v NAME|awk '{print $3 "\t" $1 "\t" $2}'|sort -hr|head


