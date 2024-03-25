use amandb;
show tables;
describe 01_district_wise_crimes_committed_ipc_2001_2012;
select * from 01_district_wise_crimes_committed_ipc_2001_2012;

WITH RankedMurders AS (
  SELECT 
    `STATE/UT`,
    YEAR,
    DISTRICT,
    MURDER,
    ROW_NUMBER() OVER(PARTITION BY `STATE/UT`, YEAR ORDER BY MURDER DESC) AS murder_rank
  FROM 
    01_district_wise_crimes_committed_ipc_2001_2012
    WHERE NOT DISTRICT='TOTAL' AND NOT DISTRICT='DELHI UT TOTAL'
)
SELECT 
  `STATE/UT`,
  YEAR,
  DISTRICT,
  MURDER
FROM 
  RankedMurders
WHERE 
  murder_rank = 1;
