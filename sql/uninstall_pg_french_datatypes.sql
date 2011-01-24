-- Adjust this setting to control where the objects get created.
SET search_path = public;

SET client_min_messages = warning;

BEGIN;

DROP DOMAIN code_postal_fr;
DROP DOMAIN numero_securite_sociale_fr;

DROP TYPE jour;
DROP TYPE mois;

COMMIT;
