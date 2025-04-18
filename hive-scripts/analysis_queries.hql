-- Crime Location and Time
-- Chicago
SELECT Dates AS crime_datetime, Location, Latitude, Longitude, Primary_Type
FROM crime_data_CH
WHERE Dates IS NOT NULL AND Location IS NOT NULL
ORDER BY Dates
LIMIT 5;

-- Los Angeles
SELECT DATE_OCC AS crime_date, TIME_OCC AS crime_time, LOCATION, LAT AS latitude, LON AS longitude, Crm_Cd_Desc AS crime_type
FROM crime_data
WHERE DATE_OCC IS NOT NULL AND LOCATION IS NOT NULL
ORDER BY DATE_OCC, TIME_OCC
LIMIT 5;


-- Top Types of Crimes
-- Chicago
SELECT Primary_Type, COUNT(*) AS crime_count
FROM crime_data_CH
GROUP BY Primary_Type
ORDER BY crime_count DESC
LIMIT 10;

-- Los Angeles
SELECT Crm_Cd_Desc AS crime_type, COUNT(*) AS crime_count
FROM crime_data
GROUP BY Crm_Cd_Desc
ORDER BY crime_count DESC
LIMIT 10;


-- Police Surveillance Analysis
-- Chicago
SELECT District, COUNT(*) AS total_crimes, SUM(CAST(Arrest AS INT)) AS arrests,
ROUND(SUM(CAST(Arrest AS INT)) * 100.0 / COUNT(*), 2) AS arrest_percentage
FROM crime_data_CH
WHERE District IS NOT NULL
GROUP BY District
ORDER BY arrest_percentage DESC
LIMIT 5;

-- Los Angeles
SELECT AREA_NAME, COUNT(*) AS total_crimes,
SUM(CASE WHEN Status IN ('AA', 'JA') THEN 1 ELSE 0 END) AS arrests,
ROUND(SUM(CASE WHEN Status IN ('AA', 'JA') THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS arrest_percentage
FROM crime_data
WHERE AREA_NAME IS NOT NULL
GROUP BY AREA_NAME
ORDER BY arrest_percentage DESC
LIMIT 5;


-- Arrests per Crime Type
-- Chicago
SELECT Primary_Type, COUNT(*) AS total_crimes,
SUM(CAST(Arrest AS INT)) AS arrests,
ROUND(SUM(CAST(Arrest AS INT)) * 100.0 / COUNT(*), 2) AS arrest_percentage
FROM crime_data_CH
GROUP BY Primary_Type
ORDER BY arrest_percentage DESC
LIMIT 5;

-- Los Angeles
SELECT Crm_Cd_Desc AS crime_type, COUNT(*) AS total_crimes,
SUM(CASE WHEN Status IN ('AA', 'JA') THEN 1 ELSE 0 END) AS arrests,
ROUND(SUM(CASE WHEN Status IN ('AA', 'JA') THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS arrest_percentage
FROM crime_data
GROUP BY Crm_Cd_Desc
ORDER BY arrest_percentage DESC
LIMIT 5;


-- Crimes Per Year
-- Chicago
SELECT Year, COUNT(*) AS crime_count
FROM crime_data_CH
WHERE Year IS NOT NULL AND Year BETWEEN 1900 AND 2100
GROUP BY Year
ORDER BY Year
LIMIT 5;

-- Los Angeles
SELECT SUBSTR(DATE_OCC, 7, 4) AS year, COUNT(*) AS crime_count
FROM crime_data
WHERE DATE_OCC IS NOT NULL
GROUP BY SUBSTR(DATE_OCC, 7, 4)
ORDER BY year
LIMIT 5;
