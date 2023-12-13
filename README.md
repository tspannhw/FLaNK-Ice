# FLaNK-Ice
Apache Iceberg - Cloud Data Lakehouse


### Configuration

````

/etc/hive/conf.cloudera.data_context_connector-975b/hive-site.xml,/etc/hadoop/conf.cloudera.stub_dfs/core-site.xml

````

### URL

````

jdbc:impala://server:443/;ssl=1;transportMode=http;httpPath=oss-kudu-demo/cdp-proxy-api/impala;AuthMech=3;
com.cloudera.impala.jdbc.Driver

jdbc:hive2://hs2-tspanniceberg.dw-se-sandboxx-aws.a465-9q4k.cloudera.site/default;transportMode=http;httpPath=cliservice;socketTimeout=60;ssl=true;auth=browser;


````

### Iceberg Table

````
CREATE TABLE customer (id int, name string, created_at timestamp)
PARTITIONED BY (country_code string)
STORED BY ICEBERG;

````

### References

* https://docs.cloudera.com/cdf-datahub/7.2.17/nifi-cdw-iceberg-ingest/topics/cdf-datahub-fm-cdw-iceberg-ingest-table.html
* https://docs.cloudera.com/cdf-datahub/7.2.17/nifi-cdw-iceberg-ingest/topics/cdf-datahub-fm-cdw-iceberg-ingest-configure-cs.html
* https://docs.cloudera.com/cdf-datahub/7.2.17/nifi-cdw-iceberg-ingest/topics/cdf-datahub-fm-cdw-iceberg-ingest-buildflow.html
* https://medium.com/cloudera-inc/writing-critical-syslog-events-to-apache-iceberg-for-analysis-a0799f24fe18
* https://medium.com/cloudera-inc/ingest-from-iceberg-tables-with-cloudera-dataflow-2dc3bb30096f
* https://docs.cloudera.com/cdw-runtime/1.5.0/iceberg-how-to/topics/iceberg-data-types.html
* https://docs.cloudera.com/cdw-runtime/1.5.0/iceberg-overview/topics/dw-pvc-iceberg-overview.html
* https://github.com/apache/hive/tree/master/packaging/src/docker
* https://iceberg.apache.org/hive-quickstart/
* https://iceberg.apache.org/docs/latest/hive/#global-hive-catalog
