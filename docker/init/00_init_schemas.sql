-- Extensions utiles
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Schémas couche par couche
CREATE SCHEMA IF NOT EXISTS staging;
CREATE SCHEMA IF NOT EXISTS warehouse;
CREATE SCHEMA IF NOT EXISTS marts;

-- Contrôle minimal : rôles en lecture seule pour BI (facultatif)
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'bi_reader') THEN
    CREATE ROLE bi_reader NOLOGIN;
  END IF;
END$$;

GRANT USAGE ON SCHEMA staging, warehouse, marts TO bi_reader;
