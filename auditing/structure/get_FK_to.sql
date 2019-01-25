-- Retrieves all FK constraints that reference a specific table

SELECT
  table_constraints.constraint_name AS constraint_name,
  table_constraints.table_schema AS table_schema,
  table_constraints.table_name AS table_name,
  key_column.column_name AS column_name
FROM information_schema.table_constraints AS table_constraints
JOIN information_schema.key_column_usage AS key_column
  ON table_constraints.constraint_name = key_column.constraint_name
WHERE
  constraint_type = 'FOREIGN KEY'
  AND
  table_constraints.table_name = 'user'
;
