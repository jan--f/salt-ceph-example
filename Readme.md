A simple example salt state files to use with

(https://github.com/oms4suse/python-ceph-cfg)

You should have a working salt setup for this.

Copy the files to your salt master root dir and run salt '*' state.apply.
This will install ceph and python-ceph-cfg on all your nodes and start mon's,
osd's and mds' on all nodes that have osd, mon or mds in their sal minion names.
E.g. 3 node names mon-osd-node0, mon-osd-node1 and mon-osd-mds-node2 will give
you a cluster with three mon's, three osd's and one mds.
