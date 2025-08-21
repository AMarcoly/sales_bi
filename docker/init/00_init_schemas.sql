-- Création du rôle applicatif si nécessaire
DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'sales_user') THEN
    CREATE ROLE sales_user WITH LOGIN PASSWORD 'sales_pass_123';
  END IF;
END
$$;

-- Création de la base si nécessaire (sera ignorée si déjà existante)
DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'sales_dw') THEN
    CREATE DATABASE sales_dw OWNER sales_user;
  END IF;
END
$$;