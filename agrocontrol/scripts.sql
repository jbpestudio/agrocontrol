drop table public.farm;

CREATE TABLE public.farm (
	codfarm int4 NOT NULL,
	namefarm varchar NULL,
	owner_name varchar NULL,
	owner_mail varchar NULL,
	codlocation int4 NULL,
	status int4 DEFAULT 1,
	create_at timestamp DEFAULT CURRENT_TIMESTAMP,
	create_up timestamp NULL,
	CONSTRAINT farm_pkey PRIMARY KEY (codfarm)
);