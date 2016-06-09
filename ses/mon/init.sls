include:
  - ses.ceph
  - ses.common.admin_key
  - ses.common.mon_key
  - ses.common.osd_key
  - ses.common.rgw_key
  - ses.common.mds_key

mon_create:
    module.run:
    - name: ceph.mon_create
    - require:
      - module: keyring_admin_save
      - module: keyring_mon_save
      - module: keyring_osd_save
      - module: keyring_mds_save

cluster_status:
    ceph.quorum:
    - require:
      - module: mon_create

