CREATE OR REPLACE FUNCTION get_data(attr_value TEXT, user_token TEXT)
RETURNS TABLE(t_id INTEGER, name VARCHAR, post VARCHAR, spot_conf INTEGER) AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM user_tokens WHERE token = user_token
    ) THEN
        RAISE EXCEPTION 'Invalid token';
    END IF;

    RETURN QUERY EXECUTE format(
        'SELECT t_id::INT, name::VARCHAR, post::VARCHAR, spot_conf::INT FROM teacher WHERE name = %L',
        attr_value
    );
END;
$$ LANGUAGE plpgsql;
