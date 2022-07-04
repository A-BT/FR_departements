CREATE TABLE "REGION" (
	"REGION_id"	CHAR(6) NOT NULL UNIQUE,
	"REGION_libelle" VARCHAR(26),
	PRIMARY KEY("REGION_id")
);

CREATE TABLE "DEPARTEMENT" (
	"DEPARTEMENT_id" VARCHAR(3) NOT NULL UNIQUE,
	"DEPARTEMENT_libelle" VARCHAR(23),
	"DEPARTEMENT_region" CHAR(6),
	PRIMARY KEY("DEPARTEMENT_id"),
	CONSTRAINT "FK_DEPARTEMENT_region" FOREIGN KEY("DEPARTEMENT_region") REFERENCES REGION(REGION_id)
);