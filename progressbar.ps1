Edit tnsnames.ora
ORCL =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = your-db-host)(PORT = 1521))
    (CONNECT_DATA =
      (SERVICE_NAME = your-service-name)
    )
  )
