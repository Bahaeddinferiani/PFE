#!/bin/bash
if [ "$DAEMON" = "datanode" ]; then
  chmod +x datanode.sh
	datadir=`echo $HDFS_CONF_dfs_datanode_data_dir | perl -pe 's#file://##'`
	$HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR datanode
else
  echo "Unknown daemon type: $DAEMON"
  exit 1
fi
