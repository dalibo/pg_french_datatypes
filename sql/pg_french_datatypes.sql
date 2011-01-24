-- Adjust this setting to control where the objects get created.
SET search_path = public;

SET client_min_messages = warning;

BEGIN;

--
CREATE DOMAIN code_postal_fr 
AS TEXT CHECK (value ~ E'^\\d{5}$');

CREATE DOMAIN numero_securite_sociale_fr
AS TEXT CHECK (value ~ E'^[12][0-9]{2}[0-1][0-9](2[AB]|[0-9]{2})[0-9]{3}[0-9]{3}[0-9]{2}$');


-- 
CREATE TYPE jour 
AS ENUM (
	'lundi',
	'mardi',
	'mercredi',
	'jeudi',
	'vendredi',
 	'samedi',
	'dimanche');
--
CREATE TYPE mois
AS ENUM (
        'janvier',
        'fevrier',
        'mars',
        'avril',
        'mai',
        'juin',
        'juillet',
	'aout',
	'septembre',
	'octobre',
	'novembre',
	'decembre');

COMMIT;
