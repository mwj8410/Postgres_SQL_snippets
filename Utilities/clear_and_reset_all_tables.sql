DO $$ DECLARE
r RECORD;
BEGIN
  FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = current_schema() AND tablename != 'migrations') LOOP
    EXECUTE 'TRUNCATE TABLE ' || quote_ident(r.tablename) || ' CASCADE';
  END LOOP;
END $$;

DO $$ DECLARE
r RECORD;
BEGIN
  FOR r IN ( SELECT sequence_name FROM information_schema.sequences WHERE sequence_schema = current_schema() ) LOOP
    EXECUTE 'ALTER SEQUENCE ' || quote_ident(r.sequence_name) || ' RESTART';
  END LOOP;
END $$;
