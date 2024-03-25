use amandb;
show tables;
describe 02_district_wise_crimes_committed_against_st_2001_2012;
select * from 02_district_wise_crimes_committed_against_st_2001_2012;

SELECT DISTRICT, MAX(DACOITY) AS HIGHEST_DACOITY
FROM 02_district_wise_crimes_committed_against_st_2001_2012
GROUP BY DISTRICT;
SELECT DISTRICT, MIN(Murder) AS LOWEST_MURDER
FROM 02_district_wise_crimes_committed_against_st_2001_2012
GROUP BY DISTRICT;

SELECT DISTRICT, YEAR, Murder
FROM 02_district_wise_crimes_committed_against_st_2001_2012
ORDER BY DISTRICT ASC, YEAR ASC;


