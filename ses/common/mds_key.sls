keyring_mds_save:
  module.run:
    - name: ceph.keyring_save
    - kwargs: {
        'keyring_type' : 'mds',
        'secret' : 'AQBR8KhWgKw6FhAAoXvTT6MdBE+bV+zPKzIo6w=='
        }
    - require:
      - sls: ses.ceph
