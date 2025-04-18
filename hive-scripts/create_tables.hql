-- Create table for Los Angeles crime data
USE your_username;

DROP TABLE IF EXISTS crime_data;

CREATE TABLE crime_data (
    DR_NO STRING,
    Date_Rptd STRING,
    DATE_OCC STRING,
    TIME_OCC INT,
    AREA INT,
    AREA_NAME STRING,
    Rpt_Dist_No INT,
    Part_1_2 INT,
    Crm_Cd INT,
    Crm_Cd_Desc STRING,
    Mocodes STRING,
    Vict_Age INT,
    Vict_Sex STRING,
    Vict_Descent STRING,
    Premis_Cd INT,
    Premis_Desc STRING,
    Weapon_Used_Cd STRING,
    Weapon_Desc STRING,
    Status STRING,
    Status_Desc STRING,
    Crm_Cd_1 INT,
    Crm_Cd_2 INT,
    Crm_Cd_3 INT,
    Crm_Cd_4 INT,
    LOCATION STRING,
    Cross_Street STRING,
    LAT DOUBLE,
    LON DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/your_username/crime_data_LA'
TBLPROPERTIES ('skip.header.line.count'='1');


-- Create table for Chicago crime data
DROP TABLE IF EXISTS crime_data_CH;

CREATE EXTERNAL TABLE crime_data_CH (
    ID BIGINT,
    Case_Number STRING,
    Dates STRING,
    Block STRING,
    IUCR STRING,
    Primary_Type STRING,
    Description STRING,
    Location_Description STRING,
    Arrest BOOLEAN,
    Domestic BOOLEAN,
    Beat INT,
    District INT,
    Ward INT,
    Community_Area INT,
    FBI_Code STRING,
    X_Coordinate DOUBLE,
    Y_Coordinate DOUBLE,
    Year INT,
    Updated_On STRING,
    Latitude DOUBLE,
    Longitude DOUBLE,
    Location STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/your_username/crime_data_CH'
TBLPROPERTIES ('skip.header.line.count'='1');
