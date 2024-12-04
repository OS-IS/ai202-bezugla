CREATE OR REPLACE FUNCTION user_register(test_password TEXT)
RETURNS BOOLEAN AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM most_popular_letter_passes WHERE password = test_password) THEN
        RAISE EXCEPTION 'Password is too weak!';
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END;
$$ LANGUAGE plpgsql;
