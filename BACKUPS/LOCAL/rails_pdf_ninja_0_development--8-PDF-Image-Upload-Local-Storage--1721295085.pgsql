--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO heidless;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    title text,
    description text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.articles OWNER TO heidless;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO heidless;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    name character varying,
    picture character varying,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.images OWNER TO heidless;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO heidless;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    email character varying,
    token character varying,
    user_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.payments OWNER TO heidless;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_id_seq OWNER TO heidless;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: pdfs; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.pdfs (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    pdfdoc character varying,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.pdfs OWNER TO heidless;

--
-- Name: pdfs_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.pdfs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pdfs_id_seq OWNER TO heidless;

--
-- Name: pdfs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.pdfs_id_seq OWNED BY public.pdfs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO heidless;

--
-- Name: users; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO heidless;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO heidless;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: pdfs id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.pdfs ALTER COLUMN id SET DEFAULT nextval('public.pdfs_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-07-16 20:07:02.537752	2024-07-16 20:07:02.537752
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.articles (id, title, description, user_id, created_at, updated_at) FROM stdin;
1	test articles 0	article desc 0	1	2024-07-16 20:09:25.507153	2024-07-16 20:09:25.507153
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.images (id, name, picture, user_id, created_at, updated_at) FROM stdin;
1	test image 0	coffee.jpg	1	2024-07-16 20:09:04.977989	2024-07-16 20:09:04.977989
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.payments (id, email, token, user_id, created_at, updated_at) FROM stdin;
1	heidlessemail05@gmail.com	tok_1PdHewGNOeNKBTc3RCjx4VFM	1	2024-07-16 20:07:40.849605	2024-07-16 20:07:40.849605
\.


--
-- Data for Name: pdfs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.pdfs (id, name, description, pdfdoc, user_id, created_at, updated_at) FROM stdin;
2	test 1	sdafgasdasdgd	beach.jpg	1	2024-07-18 08:52:57.87262	2024-07-18 08:52:57.87262
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
20240710072348
20240711111617
20240714165213
20240715080602
20240716135753
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, created_at, updated_at) FROM stdin;
1	heidlessemail05@gmail.com	$2a$12$/9cCypnjquxxE5FRaaVkAecBOAF0ZA7E5zNMCcYCBxvnbF7N/0Pnu	\N	\N	\N	xa8hGMMsTjbyaGsJDLx4	2024-07-16 20:07:48.941497	2024-07-16 20:07:38.936561	\N	2024-07-16 20:07:38.936407	2024-07-16 20:07:48.942035
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.articles_id_seq', 1, true);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.images_id_seq', 1, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, true);


--
-- Name: pdfs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.pdfs_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: pdfs pdfs_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.pdfs
    ADD CONSTRAINT pdfs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_articles_on_user_id; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_articles_on_user_id ON public.articles USING btree (user_id);


--
-- Name: index_images_on_user_id; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_images_on_user_id ON public.images USING btree (user_id);


--
-- Name: index_pdfs_on_user_id; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_pdfs_on_user_id ON public.pdfs USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: images fk_rails_19cd822056; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT fk_rails_19cd822056 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: articles fk_rails_3d31dad1cc; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_rails_3d31dad1cc FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: pdfs fk_rails_6edf1da306; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.pdfs
    ADD CONSTRAINT fk_rails_6edf1da306 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

