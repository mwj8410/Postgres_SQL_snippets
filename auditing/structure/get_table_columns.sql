SELECT
  *
FROM information_schema.columns AS columns
WHERE
  table_schema = current_schema()
  AND
  table_name   = '<table>'
;
