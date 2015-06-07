--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: refinery_images; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_images (
    id integer NOT NULL,
    image_mime_type character varying(255),
    image_name character varying(255),
    image_size integer,
    image_width integer,
    image_height integer,
    image_uid character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.refinery_images OWNER TO deploy;

--
-- Name: refinery_images_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_images_id_seq OWNER TO deploy;

--
-- Name: refinery_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_images_id_seq OWNED BY refinery_images.id;


--
-- Name: refinery_page_part_translations; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_page_part_translations (
    id integer NOT NULL,
    refinery_page_part_id integer,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    body text
);


ALTER TABLE public.refinery_page_part_translations OWNER TO deploy;

--
-- Name: refinery_page_part_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_page_part_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_page_part_translations_id_seq OWNER TO deploy;

--
-- Name: refinery_page_part_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_page_part_translations_id_seq OWNED BY refinery_page_part_translations.id;


--
-- Name: refinery_page_parts; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_page_parts (
    id integer NOT NULL,
    refinery_page_id integer,
    title character varying(255),
    body text,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.refinery_page_parts OWNER TO deploy;

--
-- Name: refinery_page_parts_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_page_parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_page_parts_id_seq OWNER TO deploy;

--
-- Name: refinery_page_parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_page_parts_id_seq OWNED BY refinery_page_parts.id;


--
-- Name: refinery_page_translations; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_page_translations (
    id integer NOT NULL,
    refinery_page_id integer,
    locale character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    title character varying(255),
    custom_slug character varying(255),
    menu_title character varying(255),
    slug character varying(255)
);


ALTER TABLE public.refinery_page_translations OWNER TO deploy;

--
-- Name: refinery_page_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_page_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_page_translations_id_seq OWNER TO deploy;

--
-- Name: refinery_page_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_page_translations_id_seq OWNED BY refinery_page_translations.id;


--
-- Name: refinery_pages; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_pages (
    id integer NOT NULL,
    parent_id integer,
    path character varying(255),
    slug character varying(255),
    show_in_menu boolean DEFAULT true,
    link_url character varying(255),
    menu_match character varying(255),
    deletable boolean DEFAULT true,
    draft boolean DEFAULT false,
    skip_to_first_child boolean DEFAULT false,
    lft integer,
    rgt integer,
    depth integer,
    view_template character varying(255),
    layout_template character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.refinery_pages OWNER TO deploy;

--
-- Name: refinery_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_pages_id_seq OWNER TO deploy;

--
-- Name: refinery_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_pages_id_seq OWNED BY refinery_pages.id;


--
-- Name: refinery_resources; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_resources (
    id integer NOT NULL,
    file_mime_type character varying(255),
    file_name character varying(255),
    file_size integer,
    file_uid character varying(255),
    file_ext character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.refinery_resources OWNER TO deploy;

--
-- Name: refinery_resources_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_resources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_resources_id_seq OWNER TO deploy;

--
-- Name: refinery_resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_resources_id_seq OWNED BY refinery_resources.id;


--
-- Name: refinery_roles; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_roles (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.refinery_roles OWNER TO deploy;

--
-- Name: refinery_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_roles_id_seq OWNER TO deploy;

--
-- Name: refinery_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_roles_id_seq OWNED BY refinery_roles.id;


--
-- Name: refinery_roles_users; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_roles_users (
    user_id integer,
    role_id integer
);


ALTER TABLE public.refinery_roles_users OWNER TO deploy;

--
-- Name: refinery_user_plugins; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_user_plugins (
    id integer NOT NULL,
    user_id integer,
    name character varying(255),
    "position" integer
);


ALTER TABLE public.refinery_user_plugins OWNER TO deploy;

--
-- Name: refinery_user_plugins_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_user_plugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_user_plugins_id_seq OWNER TO deploy;

--
-- Name: refinery_user_plugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_user_plugins_id_seq OWNED BY refinery_user_plugins.id;


--
-- Name: refinery_users; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE refinery_users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    encrypted_password character varying(255) NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    sign_in_count integer,
    remember_created_at timestamp without time zone,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying(255)
);


ALTER TABLE public.refinery_users OWNER TO deploy;

--
-- Name: refinery_users_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE refinery_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_users_id_seq OWNER TO deploy;

--
-- Name: refinery_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE refinery_users_id_seq OWNED BY refinery_users.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO deploy;

--
-- Name: seo_meta; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE seo_meta (
    id integer NOT NULL,
    seo_meta_id integer,
    seo_meta_type character varying(255),
    browser_title character varying(255),
    meta_description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.seo_meta OWNER TO deploy;

--
-- Name: seo_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE seo_meta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seo_meta_id_seq OWNER TO deploy;

--
-- Name: seo_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE seo_meta_id_seq OWNED BY seo_meta.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_images ALTER COLUMN id SET DEFAULT nextval('refinery_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_page_part_translations ALTER COLUMN id SET DEFAULT nextval('refinery_page_part_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_page_parts ALTER COLUMN id SET DEFAULT nextval('refinery_page_parts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_page_translations ALTER COLUMN id SET DEFAULT nextval('refinery_page_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_pages ALTER COLUMN id SET DEFAULT nextval('refinery_pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_resources ALTER COLUMN id SET DEFAULT nextval('refinery_resources_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_roles ALTER COLUMN id SET DEFAULT nextval('refinery_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_user_plugins ALTER COLUMN id SET DEFAULT nextval('refinery_user_plugins_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY refinery_users ALTER COLUMN id SET DEFAULT nextval('refinery_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY seo_meta ALTER COLUMN id SET DEFAULT nextval('seo_meta_id_seq'::regclass);


--
-- Data for Name: refinery_images; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_images (id, image_mime_type, image_name, image_size, image_width, image_height, image_uid, created_at, updated_at) FROM stdin;
\.


--
-- Name: refinery_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_images_id_seq', 1, false);


--
-- Data for Name: refinery_page_part_translations; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_page_part_translations (id, refinery_page_part_id, locale, created_at, updated_at, body) FROM stdin;
1	1	en	2015-06-07 17:44:45.006611	2015-06-07 17:44:45.006611	<p>Welcome to our site. This is just a place holder page while we gather our content.</p>
2	2	en	2015-06-07 17:44:45.017073	2015-06-07 17:44:45.017073	<p>This is another block of content over here.</p>
3	3	en	2015-06-07 17:44:45.124711	2015-06-07 17:44:45.124711	<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href='/'>Return to the home page</a></p>
4	4	en	2015-06-07 17:44:45.173058	2015-06-07 17:44:45.173058	<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\n\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>
5	5	en	2015-06-07 17:44:45.181636	2015-06-07 17:44:45.181636	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>
\.


--
-- Name: refinery_page_part_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_page_part_translations_id_seq', 6, false);


--
-- Data for Name: refinery_page_parts; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_page_parts (id, refinery_page_id, title, body, "position", created_at, updated_at) FROM stdin;
1	1	Body	<p>Welcome to our site. This is just a place holder page while we gather our content.</p>	0	2015-06-07 17:44:44.998271	2015-06-07 17:44:44.998271
2	1	Side Body	<p>This is another block of content over here.</p>	1	2015-06-07 17:44:45.015073	2015-06-07 17:44:45.015073
3	2	Body	<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href='/'>Return to the home page</a></p>	0	2015-06-07 17:44:45.076761	2015-06-07 17:44:45.076761
4	3	Body	<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\n\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>	0	2015-06-07 17:44:45.170901	2015-06-07 17:44:45.170901
5	3	Side Body	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>	1	2015-06-07 17:44:45.179497	2015-06-07 17:44:45.179497
\.


--
-- Name: refinery_page_parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_page_parts_id_seq', 6, false);


--
-- Data for Name: refinery_page_translations; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_page_translations (id, refinery_page_id, locale, created_at, updated_at, title, custom_slug, menu_title, slug) FROM stdin;
1	1	en	2015-06-07 17:44:44.426955	2015-06-07 17:44:44.944394	Home	\N	\N	home
2	2	en	2015-06-07 17:44:45.031694	2015-06-07 17:44:45.037259	Page not found	\N	\N	page-not-found
3	3	en	2015-06-07 17:44:45.139903	2015-06-07 17:44:45.145646	About	\N	\N	about
\.


--
-- Name: refinery_page_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_page_translations_id_seq', 4, false);


--
-- Data for Name: refinery_pages; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_pages (id, parent_id, path, slug, show_in_menu, link_url, menu_match, deletable, draft, skip_to_first_child, lft, rgt, depth, view_template, layout_template, created_at, updated_at) FROM stdin;
1	\N	\N	home	t	/	^/$	f	f	f	1	4	0	\N	\N	2015-06-07 17:44:44.942128	2015-06-07 17:44:44.942128
2	1	\N	page-not-found	f	\N	^/404$	f	f	f	2	3	1	\N	\N	2015-06-07 17:44:45.035786	2015-06-07 17:44:45.035786
3	\N	\N	about	t	\N	\N	t	f	f	5	6	0	\N	\N	2015-06-07 17:44:45.144034	2015-06-07 17:44:45.144034
\.


--
-- Name: refinery_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_pages_id_seq', 4, false);


--
-- Data for Name: refinery_resources; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_resources (id, file_mime_type, file_name, file_size, file_uid, file_ext, created_at, updated_at) FROM stdin;
\.


--
-- Name: refinery_resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_resources_id_seq', 1, false);


--
-- Data for Name: refinery_roles; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_roles (id, title) FROM stdin;
1	Refinery
2	Superuser
\.


--
-- Name: refinery_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_roles_id_seq', 3, false);


--
-- Data for Name: refinery_roles_users; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_roles_users (user_id, role_id) FROM stdin;
1	1
1	2
\.


--
-- Data for Name: refinery_user_plugins; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_user_plugins (id, user_id, name, "position") FROM stdin;
1	1	refinery_users	0
2	1	refinery_dashboard	2
3	1	refinery_images	3
4	1	refinery_files	4
5	1	refinery_pages	1
\.


--
-- Name: refinery_user_plugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_user_plugins_id_seq', 10, true);


--
-- Data for Name: refinery_users; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY refinery_users (id, username, email, encrypted_password, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, sign_in_count, remember_created_at, reset_password_token, reset_password_sent_at, created_at, updated_at, slug) FROM stdin;
1	timk	timk@armstrongmarine.com	$2a$10$6.fok3.tLmnCDpiJ36KfTuQ.UGgYg0SNdVNl4SX2J68vhwnbI2gYC	2015-06-07 17:45:57.213228	2015-06-07 17:45:57.213228	127.0.0.1	127.0.0.1	1	\N	\N	\N	2015-06-07 17:45:57.131355	2015-06-07 17:45:57.216637	timk
\.


--
-- Name: refinery_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('refinery_users_id_seq', 2, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY schema_migrations (version) FROM stdin;
20150607174435
20150607174436
20150607174437
20150607174438
20150607174439
20150607174440
20150607174441
20150607174442
\.


--
-- Data for Name: seo_meta; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY seo_meta (id, seo_meta_id, seo_meta_type, browser_title, meta_description, created_at, updated_at) FROM stdin;
1	1	Refinery::Page::Translation	\N	\N	2015-06-07 17:44:44.43684	2015-06-07 17:44:44.43684
2	2	Refinery::Page::Translation	\N	\N	2015-06-07 17:44:45.033769	2015-06-07 17:44:45.033769
3	3	Refinery::Page::Translation	\N	\N	2015-06-07 17:44:45.142035	2015-06-07 17:44:45.142035
\.


--
-- Name: seo_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('seo_meta_id_seq', 4, false);


--
-- Name: refinery_images_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_images
    ADD CONSTRAINT refinery_images_pkey PRIMARY KEY (id);


--
-- Name: refinery_page_part_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_page_part_translations
    ADD CONSTRAINT refinery_page_part_translations_pkey PRIMARY KEY (id);


--
-- Name: refinery_page_parts_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_page_parts
    ADD CONSTRAINT refinery_page_parts_pkey PRIMARY KEY (id);


--
-- Name: refinery_page_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_page_translations
    ADD CONSTRAINT refinery_page_translations_pkey PRIMARY KEY (id);


--
-- Name: refinery_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_pages
    ADD CONSTRAINT refinery_pages_pkey PRIMARY KEY (id);


--
-- Name: refinery_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_resources
    ADD CONSTRAINT refinery_resources_pkey PRIMARY KEY (id);


--
-- Name: refinery_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_roles
    ADD CONSTRAINT refinery_roles_pkey PRIMARY KEY (id);


--
-- Name: refinery_user_plugins_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_user_plugins
    ADD CONSTRAINT refinery_user_plugins_pkey PRIMARY KEY (id);


--
-- Name: refinery_users_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY refinery_users
    ADD CONSTRAINT refinery_users_pkey PRIMARY KEY (id);


--
-- Name: seo_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY seo_meta
    ADD CONSTRAINT seo_meta_pkey PRIMARY KEY (id);


--
-- Name: id_type_index_on_seo_meta; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX id_type_index_on_seo_meta ON seo_meta USING btree (seo_meta_id, seo_meta_type);


--
-- Name: index_refinery_page_part_translations_on_locale; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_page_part_translations_on_locale ON refinery_page_part_translations USING btree (locale);


--
-- Name: index_refinery_page_part_translations_on_refinery_page_part_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_page_part_translations_on_refinery_page_part_id ON refinery_page_part_translations USING btree (refinery_page_part_id);


--
-- Name: index_refinery_page_parts_on_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_page_parts_on_id ON refinery_page_parts USING btree (id);


--
-- Name: index_refinery_page_parts_on_refinery_page_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_page_parts_on_refinery_page_id ON refinery_page_parts USING btree (refinery_page_id);


--
-- Name: index_refinery_page_translations_on_locale; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_page_translations_on_locale ON refinery_page_translations USING btree (locale);


--
-- Name: index_refinery_page_translations_on_refinery_page_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_page_translations_on_refinery_page_id ON refinery_page_translations USING btree (refinery_page_id);


--
-- Name: index_refinery_pages_on_depth; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_pages_on_depth ON refinery_pages USING btree (depth);


--
-- Name: index_refinery_pages_on_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_pages_on_id ON refinery_pages USING btree (id);


--
-- Name: index_refinery_pages_on_lft; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_pages_on_lft ON refinery_pages USING btree (lft);


--
-- Name: index_refinery_pages_on_parent_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_pages_on_parent_id ON refinery_pages USING btree (parent_id);


--
-- Name: index_refinery_pages_on_rgt; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_pages_on_rgt ON refinery_pages USING btree (rgt);


--
-- Name: index_refinery_roles_users_on_role_id_and_user_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_roles_users_on_role_id_and_user_id ON refinery_roles_users USING btree (role_id, user_id);


--
-- Name: index_refinery_roles_users_on_user_id_and_role_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_roles_users_on_user_id_and_role_id ON refinery_roles_users USING btree (user_id, role_id);


--
-- Name: index_refinery_user_plugins_on_name; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_user_plugins_on_name ON refinery_user_plugins USING btree (name);


--
-- Name: index_refinery_user_plugins_on_user_id_and_name; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE UNIQUE INDEX index_refinery_user_plugins_on_user_id_and_name ON refinery_user_plugins USING btree (user_id, name);


--
-- Name: index_refinery_users_on_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_users_on_id ON refinery_users USING btree (id);


--
-- Name: index_refinery_users_on_slug; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_refinery_users_on_slug ON refinery_users USING btree (slug);


--
-- Name: index_seo_meta_on_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_seo_meta_on_id ON seo_meta USING btree (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

