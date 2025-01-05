CREATE OR REPLACE TABLE `uber-data-analysis-443722.uber_data_analysis_pipeline.tbl_analytics` AS (
SELECT 
f.trip_distance_id,
f.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pl.pickup_latitude,
pl.pickup_longitude,
dl.dropoff_latitude,
dl.dropoff_longitude,
pt.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge,
f.total_amount
FROM 

`uber-data-analysis-443722.uber_data_analysis_pipeline.fact_table` f

JOIN `uber-data-analysis-443722.uber_data_analysis_pipeline.datetime_dim` d ON 
f.datetime_id = d.datetime_id
JOIN `uber-data-analysis-443722.uber_data_analysis_pipeline.passenger_count_dim` p ON 
f.passenger_count_id = p.passenger_count_id
JOIN `uber-data-analysis-443722.uber_data_analysis_pipeline.trip_distance_dim` t ON 
f.trip_distance_id = t.trip_distance_id
JOIN `uber-data-analysis-443722.uber_data_analysis_pipeline.rate_code_dim` r ON 
f.rate_code_id = r.rate_code_id
JOIN `uber-data-analysis-443722.uber_data_analysis_pipeline.pickup_location_dim` pl ON 
pl.pickup_location_id = f.pickup_location_id
JOIN `uber-data-analysis-443722.uber_data_analysis_pipeline.dropoff_location_dim` dl ON 
dl.dropoff_location_id = f.dropoff_location_id
JOIN `uber-data-analysis-443722.uber_data_analysis_pipeline.payment_type_dim` pt ON 
pt.payment_type_id = f.payment_type_id)
;