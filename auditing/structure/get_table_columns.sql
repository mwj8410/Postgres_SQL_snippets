SELECT
  column_name
FROM information_schema.columns AS columns
WHERE
  table_schema = current_schema()
  AND
  table_name   = 'account_holding'
;
