# MySQL Timezone Generator

This is a basic script to generate timezone SQL from the local timezone information on a Unix-like system, using the `mysql_tzinfo_to_sql` tool included with MySQL distributions. This script will not run on Windows.

For more info on `mysql_tzinfo_to_sql`, see [https://dev.mysql.com/doc/refman/8.0/en/mysql-tzinfo-to-sql.html](https://dev.mysql.com/doc/refman/8.0/en/mysql-tzinfo-to-sql.html).

## Generating SQL

This repository provides two options. Both require this repository to be cloned locally.

If you have [Docker](https://docs.docker.com/install/) installed, this is the simplest option. Run the following inside the cloned project directory:

```
./docker-run.sh
```

If you don't have Docker, but do have [MySQL installed](https://dev.mysql.com/doc/refman/8.0/en/installing.html), you can run the generator script directly:

```
./generate-timezones.sh
```

Via either method, `timezones.sql` will be created inside the cloned directory.

## Importing into Datica CPaaS-hosted database

To import the newly-generated data into a [Datica CPaaS]-hosted [database service](https://help.datica.com/hc/en-us/articles/115004668503-Services), use the [Datica CLI](https://github.com/daticahealth/cli):

```
datica -E <your-environment-name> db import <your-database-service-name> timezones.sql
```
