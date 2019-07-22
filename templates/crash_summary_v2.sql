-- Query generated by: templates/unnest_parquet_view.sql.py crash_summary_v2 telemetry_raw.crash_summary_v2
CREATE OR REPLACE VIEW
  `moz-fx-data-derived-datasets.telemetry.crash_summary_v2` AS
SELECT
  * REPLACE (
    experiments.key_value AS experiments,
    (SELECT AS STRUCT payload.* REPLACE (payload.metadata.key_value AS metadata)) AS payload
  )
FROM
  `moz-fx-data-derived-datasets.telemetry_raw.crash_summary_v2`