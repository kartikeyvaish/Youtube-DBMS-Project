CREATE FUNCTION set_updated_at_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE FUNCTION set_updated_fields_for_comments()
RETURNS TRIGGER AS $$
BEGIN
    NEW.is_edited = true;
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';