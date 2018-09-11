SELECT
  table_constraints.constraint_name,
  table_constraints.table_name,
  key_column.column_name,
  constraint_column_usage.table_name  AS foreign_table_name,
  constraint_column_usage.column_name AS foreign_column_name
FROM information_schema.table_constraints AS table_constraints
JOIN information_schema.key_column_usage AS key_column
  ON table_constraints.constraint_name = key_column.constraint_name
JOIN information_schema.constraint_column_usage AS constraint_column_usage
  ON constraint_column_usage.constraint_name = table_constraints.constraint_name
WHERE
  constraint_type = 'FOREIGN KEY'
;
