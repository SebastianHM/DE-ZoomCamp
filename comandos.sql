--3.
-- SELECT count(1) FROM yellow_taxi_data WHERE tpep_pickup_datetime >= '2021-01-15 00:00:00' AND tpep_pickup_datetime < '2021-01-16 00:00:00' 

--4.
-- SELECT tip_amount, tpep_pickup_datetime  FROM yellow_taxi_data WHERE tip_amount=(SELECT MAX(tip_amount) FROM yellow_taxi_data)

--5.
-- SELECT "DOLocationID", COUNT("PULocationID") FROM yellow_taxi_data 
-- WHERE "PULocationID" = 43 
-- GROUP BY "DOLocationID"
-- ORDER BY COUNT("PULocationID") DESC
-- limit 1

--6.
-- SELECT "PULocationID","DOLocationID", AVG(total_amount) FROM yellow_taxi_data 
-- GROUP BY "PULocationID", "DOLocationID"
-- ORDER BY AVG(total_amount) DESC
-- limit 1--password=root --host=localhost --database=ny_taxi --table=yellow_taxi_data --url="https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2021-01.csv" --port=5432

