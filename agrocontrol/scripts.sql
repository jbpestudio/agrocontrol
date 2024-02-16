drop table if exists public.thfarm;

CREATE TABLE public.thfarm (
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

drop table if exists public.throl;
CREATE TABLE public.throl(
	codrol int4 NOT NULL,
	namerole varchar null,
	status int4 DEFAULT 1,
	create_at timestamp DEFAULT CURRENT_TIMESTAMP,
	create_up timestamp NULL
);

drop table if exists public.thlocation;
CREATE TABLE public.thlocation(
	codlocation int4 NOT NULL,
	namelocation varchar null,
	status int4 DEFAULT 1,
	create_at timestamp DEFAULT CURRENT_TIMESTAMP,
	create_up timestamp NULL
);


