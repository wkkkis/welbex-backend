create TABLE column_data(
    id SERIAL PRIMARY KEY,
    date_creation date,
    name_column VARCHAR(255),
    count INTEGER,
    distance INTEGER
);