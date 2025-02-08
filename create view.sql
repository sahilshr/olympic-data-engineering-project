CREATE VIEW gold.athletes
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://tokyoolympicprojectsahil.dfs.core.windows.net/transformed-data/Athletes/',
        FORMAT = 'PARQUET'
    ) as QUER1

CREATE VIEW gold.coaches
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://tokyoolympicprojectsahil.dfs.core.windows.net/transformed-data/Coaches/',
        FORMAT = 'PARQUET'
    ) as QUER1

CREATE VIEW gold.entriesgender
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://tokyoolympicprojectsahil.dfs.core.windows.net/transformed-data/EntriesGender/',
        FORMAT = 'PARQUET'
    ) as QUER1


CREATE VIEW gold.medals
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://tokyoolympicprojectsahil.dfs.core.windows.net/transformed-data/Medals/',
        FORMAT = 'PARQUET'
    ) as QUER1

CREATE VIEW gold.teams
AS
SELECT 
    *
FROM 
    OPENROWSET
    (
        BULK 'https://tokyoolympicprojectsahil.dfs.core.windows.net/transformed-data/Teams/',
        FORMAT = 'PARQUET'
    ) as QUER1
