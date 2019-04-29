#!/bin/sh -e

mysql_tzinfo_to_sql /usr/share/zoneinfo > timezones.sql
