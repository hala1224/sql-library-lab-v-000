CREATE TABLE series (
id INTEGER PRIMARY KEY,
title TEXT,
author_id INTEGER,
subgenre_id TEXT
);

CREATE TABLE subgenres (
id INTEGER PRIMARY KEY,
name TEXT
);

CREATE TABLE Authors (
id INTEGER PRIMARY KEY,
name TEXT
);

CREATE TABLE Books (
id INTEGER PRIMARY KEY,
title TEXT,
year INTEGER,
series_id 
);

CREATE TABLE series (
id INTEGER PRIMARY KEY,
title TEXT,
author TEXT,
subgenre TEXT
);

