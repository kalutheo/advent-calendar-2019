-- Table: public."user"

-- DROP TABLE public."user";

CREATE TABLE public."user"
(
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    user_id uuid NOT NULL DEFAULT uuid_generate_v4(),
    CONSTRAINT user_pkey PRIMARY KEY (user_id)
)

TABLESPACE pg_default;

ALTER TABLE public."user"
    OWNER to root;