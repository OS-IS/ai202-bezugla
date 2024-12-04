CREATE OR REPLACE FUNCTION user_logout(user_token VARCHAR)
RETURNS VOID AS $$
BEGIN
    DELETE FROM user_tokens WHERE token = user_token;
END;
$$ LANGUAGE plpgsql;
