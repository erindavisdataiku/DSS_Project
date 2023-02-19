SELECT 
    "flight_data_copy1_prepared"."departure_date" AS "departure_date",
    "flight_data_copy1_prepared"."arrival_date" AS "arrival_date",
    "flight_data_copy1_prepared"."UniqueCarrier" AS "UniqueCarrier",
    "flight_data_copy1_prepared"."FlightNum" AS "FlightNum",
    "flight_data_copy1_prepared"."TailNum" AS "TailNum",
    "flight_data_copy1_prepared"."ActualElapsedTime" AS "ActualElapsedTime",
    "flight_data_copy1_prepared"."CRSElapsedTime" AS "CRSElapsedTime",
    "flight_data_copy1_prepared"."AirTime" AS "AirTime",
    "flight_data_copy1_prepared"."ArrDelay" AS "ArrDelay",
    "flight_data_copy1_prepared"."Late" AS "Late",
    "flight_data_copy1_prepared"."Origin" AS "Origin",
    "flight_data_copy1_prepared"."Dest" AS "Dest",
    "flight_data_copy1_prepared"."Distance" AS "Distance",
    "flight_data_copy1_prepared"."TaxiIn" AS "TaxiIn",
    "flight_data_copy1_prepared"."TaxiOut" AS "TaxiOut",
    "flight_data_copy1_prepared"."Cancelled" AS "Cancelled",
    "flight_data_copy1_prepared"."CancellationCode" AS "CancellationCode",
    "flight_data_copy1_prepared"."Diverted" AS "Diverted",
    "airport_filtered_copy"."City" AS "origin_City",
    "airport_filtered_copy"."Country" AS "origin_Country",
    "airport_filtered_copy"."Latitude" AS "origin_Latitude",
    "airport_filtered_copy"."Longitude" AS "origin_Longitude",
    "airport_filtered_copy"."Altitude" AS "origin_Altitude",
    "airport_filtered_copy_2"."City" AS "dest_City",
    "airport_filtered_copy_2"."Country" AS "dest_Country",
    "airport_filtered_copy_2"."Latitude" AS "dest_Latitude",
    "airport_filtered_copy_2"."Longitude" AS "dest_Longitude",
    "airport_filtered_copy_2"."Altitude" AS "dest_Altitude"
  FROM "SEDEMO"."ERIND"."FLIGHT_DATA_COPY1_PREPARED" "flight_data_copy1_prepared"
  LEFT JOIN "SEDEMO"."ERIND"."AIRPORT_FILTERED_COPY" "airport_filtered_copy"
    ON "flight_data_copy1_prepared"."Origin" = "airport_filtered_copy"."IATA_FAA"
  LEFT JOIN "SEDEMO"."ERIND"."AIRPORT_FILTERED_COPY" "airport_filtered_copy_2"
    ON "flight_data_copy1_prepared"."Dest" = "airport_filtered_copy_2"."IATA_FAA"