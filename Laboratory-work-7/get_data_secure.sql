CREATE OR REPLACE FUNCTION get_data_safe(attr_value VARCHAR)
RETURNS TABLE(t_id INTEGER, name VARCHAR, post VARCHAR, spot_conf INTEGER) AS $$
BEGIN
    RETURN QUERY EXECUTE format('SELECT * FROM teacher WHERE name = %L', attr_value);
END;
$$ LANGUAGE plpgsql;
