-- Table: public.days

-- DROP TABLE public.days;

CREATE TABLE public.days
(
    day_id integer NOT NULL DEFAULT nextval('days_day_id_seq'::regclass),
    num integer NOT NULL,
    CONSTRAINT days_pkey PRIMARY KEY (day_id)
)

TABLESPACE pg_default;

ALTER TABLE public.days
    OWNER to root;