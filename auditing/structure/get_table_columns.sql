SELECT
  *
FROM information_schema.columns AS columns
WHERE
  table_schema = 'public'
  AND
  table_name   = '<table>'
;
