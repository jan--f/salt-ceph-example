keyring_rgw_save:
  module.run:
    - name: ceph.keyring_save
    - kwargs: {
        'keyring_type' : 'rgw',
        'secret' : 'AQBR8KhWgKw6FhAAoXvTT6MdBE+bV+zPKzIo6w=='
        }
    - require:
      - sls: ses.ceph
