CREATE TABLE IF NOT EXISTS public.users
(
userid integer NOT NULL,
name character varying(255) COLLATE pg_catalog."default",
password character varying(255) COLLATE pg_catalog."default",
role integer,
email character varying(255) COLLATE pg_catalog."default",
CONSTRAINT users_pkey PRIMARY KEY (userid)
);

CREATE TABLE IF NOT EXISTS public.services
(
id integer NOT NULL,
name character varying COLLATE pg_catalog."default",
serviceimg character varying COLLATE pg_catalog."default",
servicedesc character varying COLLATE pg_catalog."default",
CONSTRAINT services_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.rating
(
id integer NOT NULL,
serviceid integer,
username character varying(255) COLLATE pg_catalog."default",
rating smallint,
comment character varying COLLATE pg_catalog."default",
date timestamp without time zone,
CONSTRAINT rating_pkey PRIMARY KEY (id),
CONSTRAINT rating_serviceid_fkey FOREIGN KEY (serviceid)
REFERENCES public.services (id) MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);