
class {"heat::db":
    sql_connection => "mysql://heat:%(CONFIG_HEAT_DB_PW)s@%(CONFIG_MYSQL_HOST)s/heat"
}

class { 'heat::api':
}

class { 'heat::engine':
    heat_metadata_server_url      => 'http://%(CONFIG_HEAT_METADATA_HOST)s:8000',
    heat_waitcondition_server_url => 'http://%(CONFIG_HEAT_METADATA_HOST)s:8000/v1/waitcondition',
    heat_watch_server_url         => 'http://%(CONFIG_HEAT_WATCH_HOST)s:8003',
}
