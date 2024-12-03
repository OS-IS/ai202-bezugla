CREATE OR REPLACE FUNCTION change_data_safe(attribute1 VARCHAR, attribute2 VARCHAR)
RETURNS VOID AS $$
BEGIN
    EXECUTE format('UPDATE teacher SET post = %L WHERE post = %L', attribute2, attribute1);
END;
$$ LANGUAGE plpgsql;
