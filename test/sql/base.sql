\set ECHO 0
\i sql/pg_french_datatypes.sql
\set ECHO all

CREATE TABLE test_pg_french_datatypes (
	c code_postal_fr,
	j jour,
	m mois,
	n numero_securite_sociale_fr
);

INSERT INTO test_pg_french_datatypes("c") 
VALUES (87120);

INSERT INTO test_pg_french_datatypes("c")
VALUES (75000000);

INSERT INTO test_pg_french_datatypes("n")
VALUES ('253072B07300483');

INSERT INTO test_pg_french_datatypes("n")
VALUES ('25307200730A483');

DROP TABLE test_pg_french_datatypes;
