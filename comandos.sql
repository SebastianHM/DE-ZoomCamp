--3.
-- SELECT count(1) FROM yellow_taxi_data WHERE tpep_pickup_datetime >= '2021-01-15 00:00:00' AND tpep_pickup_datetime < '2021-01-16 00:00:00' 

--4.
-- SELECT tip_amount, tpep_pickup_datetime  FROM yellow_taxi_data WHERE tip_amount=(SELECT MAX(tip_amount) FROM yellow_taxi_data)

--5
--SELECT do_loc."Zone" , COUNT(*) 
--FROM yellow_taxi_data 
--LEFT JOIN taxi_zones_data as do_loc 
--ON yellow_taxi_data."DOLocationID" = do_loc."LocationID"
--LEFT JOIN taxi_zones_data as pu_loc
--ON yellow_taxi_data."PULocationID" = pu_loc."LocationID"
--WHERE pu_loc."Zone" = 'Central Park'
--AND yellow_taxi_data.tpep_pickup_datetime >= '2021-01-14 00:00:00'
--AND yellow_taxi_data.tpep_pickup_datetime < '2021-01-15 00:00:00'
--GROUP BY do_loc."Zone"
--ORDER BY COUNT(*) DESC
--LIMIT 1;


--6
--SELECT CONCAT(COALESCE(pu_loc."Zone",'Unknown'), ' / ', COALESCE(do_loc."Zone",'Unknown')), AVG(total_amount)
--FROM yellow_taxi_data 
--LEFT JOIN taxi_zones_data as pu_loc
--ON yellow_taxi_data."PULocationID" = pu_loc."LocationID"
--LEFT JOIN taxi_zones_data as do_loc
--ON yellow_taxi_data."DOLocationID" = do_loc."LocationID"
--GROUP BY pu_loc."Zone", do_loc."Zone"
--ORDER BY AVG(total_amount) DESC
--LIMIT 1;