use amandb;
show tables;
describe 42_district_wise_crimes_committed_against_women_2001_2012;
select * from 42_district_wise_crimes_committed_against_women_2001_2012;

SELECT `STATE/UT`, DISTRICT, Year, MAX(Rape) AS MAX_RAPES, MAX(`Kidnapping and Abduction`) AS MAX_KIDNAPPINGS
FROM 42_district_wise_crimes_committed_against_women_2001_2012
GROUP BY `STATE/UT`, DISTRICT, Year;

SELECT `STATE/UT`, DISTRICT, Year,  MIN(RAPE) AS MIN_RAPES, MIN(`Kidnapping and Abduction`) AS MIN_KIDNAPPINGS
FROM 42_district_wise_crimes_committed_against_women_2001_2012
GROUP BY `STATE/UT`, DISTRICT, Year;


