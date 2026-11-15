PRAGMA foreign_keys=ON;
CREATE TABLE IF NOT EXISTS schema_migrations(version INTEGER PRIMARY KEY,applied_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP);
INSERT OR IGNORE INTO schema_migrations(version) VALUES(1),(2);
INSERT OR REPLACE INTO metadata(key,value) VALUES('coordinate_system','MARS_LOCAL_METERS_NOT_RFC7946');
PRAGMA user_version=2;
