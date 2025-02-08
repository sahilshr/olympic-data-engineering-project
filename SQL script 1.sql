CREATE DATABASE SCOPED CREDENTIAL cred_sahil
WITH 
    IDENTITY = 'MANAGED IDENTITY'



CREATE EXTERNAL DATA SOURCE source_transformed
WITH
(
    LOCATION = 'https://tokyoolympicprojectsahil.blob.core.windows.net/transformed-data',
    CREDENTIAL = cred_sahil
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://tokyoolympicprojectsahil.blob.core.windows.net/gold',
    CREDENTIAL = cred_sahil
)





CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.GzipCodec'
)




CREATE EXTERNAL TABLE gold.extathletes
WITH
(
    LOCATION = 'ATHLETES',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.athletes


SELECT * FROM gold.extathletes