CREATE OR REPLACE FUNCTION get_data(attr_value TEXT)
RETURNS TABLE(t_id INTEGER, name VARCHAR, post VARCHAR, spot_conf INTEGER) AS $$
BEGIN
	RETURN QUERY EXECUTE 'SELECT * FROM teacher WHERE name = ''' || attr_value || '''';
END;
$$ LANGUAGE plpgsql;