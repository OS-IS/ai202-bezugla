CREATE OR REPLACE FUNCTION change_data(attribute1 TEXT, attribute2 TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE 'UPDATE teacher SET post = ''' || attribute2 || ''' WHERE post = ''' || attribute1 || ''';';
END;
$$ LANGUAGE plpgsql;