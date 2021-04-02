--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

-- Started on 2021-03-14 13:34:19

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
-- TOC entry 219 (class 1259 OID 16718)
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16716)
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 218
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- TOC entry 221 (class 1259 OID 16728)
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16726)
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 220
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- TOC entry 209 (class 1259 OID 16622)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16620)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 16632)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16630)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 16614)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16612)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 16640)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16650)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16648)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 16638)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 217 (class 1259 OID 16658)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16656)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 227 (class 1259 OID 16799)
-- Name: carapp_contactform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carapp_contactform (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    subject character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.carapp_contactform OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16797)
-- Name: carapp_contactform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carapp_contactform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carapp_contactform_id_seq OWNER TO postgres;

--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 226
-- Name: carapp_contactform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carapp_contactform_id_seq OWNED BY public.carapp_contactform.id;


--
-- TOC entry 225 (class 1259 OID 16788)
-- Name: carapp_team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carapp_team (
    id integer NOT NULL,
    firstname character varying(100) NOT NULL,
    lastname character varying(100) NOT NULL,
    designation character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    facebook_link character varying(100) NOT NULL,
    googleplus_link character varying(100) NOT NULL,
    twitter_link character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.carapp_team OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16786)
-- Name: carapp_team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carapp_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carapp_team_id_seq OWNER TO postgres;

--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 224
-- Name: carapp_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carapp_team_id_seq OWNED BY public.carapp_team.id;


--
-- TOC entry 229 (class 1259 OID 16810)
-- Name: cars_car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cars_car (
    id integer NOT NULL,
    car_title character varying(255) NOT NULL,
    state character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    color character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    year integer NOT NULL,
    condition character varying(100) NOT NULL,
    price integer NOT NULL,
    description text NOT NULL,
    car_photo character varying(100) NOT NULL,
    car_photo1 character varying(100) NOT NULL,
    car_photo2 character varying(100) NOT NULL,
    car_photo3 character varying(100) NOT NULL,
    car_photo4 character varying(100) NOT NULL,
    features character varying(195) NOT NULL,
    body_style character varying(100) NOT NULL,
    engine character varying(100) NOT NULL,
    transmition character varying(100) NOT NULL,
    interior character varying(100) NOT NULL,
    miles integer NOT NULL,
    doors character varying(100) NOT NULL,
    passengers integer NOT NULL,
    vin_no character varying(100) NOT NULL,
    milage integer NOT NULL,
    fuel_type character varying(100) NOT NULL,
    no_of_owners character varying(100) NOT NULL,
    is_featured boolean NOT NULL,
    created_date timestamp with time zone NOT NULL
);


ALTER TABLE public.cars_car OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16808)
-- Name: cars_car_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cars_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cars_car_id_seq OWNER TO postgres;

--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 228
-- Name: cars_car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cars_car_id_seq OWNED BY public.cars_car.id;


--
-- TOC entry 231 (class 1259 OID 16821)
-- Name: contacts_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts_contact (
    id integer NOT NULL,
    firstname character varying(100) NOT NULL,
    lastname character varying(100) NOT NULL,
    customer_need character varying(100) NOT NULL,
    car_title character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL,
    created_date date NOT NULL,
    user_id_id integer NOT NULL,
    car_id integer NOT NULL
);


ALTER TABLE public.contacts_contact OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16819)
-- Name: contacts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_contact_id_seq OWNER TO postgres;

--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 230
-- Name: contacts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;


--
-- TOC entry 223 (class 1259 OID 16755)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16753)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 222
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 16604)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16602)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 16593)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16591)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 232 (class 1259 OID 16859)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16871)
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16869)
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- TOC entry 236 (class 1259 OID 16882)
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16880)
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO postgres;

--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 235
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- TOC entry 238 (class 1259 OID 16893)
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16891)
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO postgres;

--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 237
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- TOC entry 240 (class 1259 OID 16901)
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16899)
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO postgres;

--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 239
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- TOC entry 242 (class 1259 OID 16909)
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16907)
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO postgres;

--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 241
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- TOC entry 2824 (class 2604 OID 16721)
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- TOC entry 2825 (class 2604 OID 16731)
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- TOC entry 2819 (class 2604 OID 16625)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2820 (class 2604 OID 16635)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2818 (class 2604 OID 16617)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 16643)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2822 (class 2604 OID 16653)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2823 (class 2604 OID 16661)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2829 (class 2604 OID 16802)
-- Name: carapp_contactform id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carapp_contactform ALTER COLUMN id SET DEFAULT nextval('public.carapp_contactform_id_seq'::regclass);


--
-- TOC entry 2828 (class 2604 OID 16791)
-- Name: carapp_team id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carapp_team ALTER COLUMN id SET DEFAULT nextval('public.carapp_team_id_seq'::regclass);


--
-- TOC entry 2830 (class 2604 OID 16813)
-- Name: cars_car id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars_car ALTER COLUMN id SET DEFAULT nextval('public.cars_car_id_seq'::regclass);


--
-- TOC entry 2831 (class 2604 OID 16824)
-- Name: contacts_contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);


--
-- TOC entry 2826 (class 2604 OID 16758)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 16607)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 16596)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2832 (class 2604 OID 16874)
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- TOC entry 2833 (class 2604 OID 16885)
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- TOC entry 2834 (class 2604 OID 16896)
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- TOC entry 2835 (class 2604 OID 16904)
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- TOC entry 2836 (class 2604 OID 16912)
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- TOC entry 3089 (class 0 OID 16718)
-- Dependencies: 219
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- TOC entry 3091 (class 0 OID 16728)
-- Dependencies: 221
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- TOC entry 3079 (class 0 OID 16622)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3081 (class 0 OID 16632)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3077 (class 0 OID 16614)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add team	1	add_team
2	Can change team	1	change_team
3	Can delete team	1	delete_team
4	Can view team	1	view_team
5	Can add contact form	2	add_contactform
6	Can change contact form	2	change_contactform
7	Can delete contact form	2	delete_contactform
8	Can view contact form	2	view_contactform
9	Can add car	3	add_car
10	Can change car	3	change_car
11	Can delete car	3	delete_car
12	Can view car	3	view_car
13	Can add contact	4	add_contact
14	Can change contact	4	change_contact
15	Can delete contact	4	delete_contact
16	Can view contact	4	view_contact
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	6	add_permission
22	Can change permission	6	change_permission
23	Can delete permission	6	delete_permission
24	Can view permission	6	view_permission
25	Can add group	7	add_group
26	Can change group	7	change_group
27	Can delete group	7	delete_group
28	Can view group	7	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add site	11	add_site
42	Can change site	11	change_site
43	Can delete site	11	delete_site
44	Can view site	11	view_site
45	Can add email address	12	add_emailaddress
46	Can change email address	12	change_emailaddress
47	Can delete email address	12	delete_emailaddress
48	Can view email address	12	view_emailaddress
49	Can add email confirmation	13	add_emailconfirmation
50	Can change email confirmation	13	change_emailconfirmation
51	Can delete email confirmation	13	delete_emailconfirmation
52	Can view email confirmation	13	view_emailconfirmation
53	Can add social account	14	add_socialaccount
54	Can change social account	14	change_socialaccount
55	Can delete social account	14	delete_socialaccount
56	Can view social account	14	view_socialaccount
57	Can add social application	15	add_socialapp
58	Can change social application	15	change_socialapp
59	Can delete social application	15	delete_socialapp
60	Can view social application	15	view_socialapp
61	Can add social application token	16	add_socialtoken
62	Can change social application token	16	change_socialtoken
63	Can delete social application token	16	delete_socialtoken
64	Can view social application token	16	view_socialtoken
\.


--
-- TOC entry 3083 (class 0 OID 16640)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	!CBOIlv3hzoyF0hGUl7EGD935TwQ0mTnlsU5L8rbx	2021-02-07 12:35:57.401982+05:30	f	harsh44	Harsh	Patel		f	t	2021-02-07 12:35:57.361687+05:30
2	!DG0RC4ne6Ru0uw8d8hHz8ehkPizr3f0OvVMZIZBx	2021-03-13 08:56:48.320076+05:30	f	harsh6	harsh	patel		f	t	2021-02-07 12:20:16.154662+05:30
1	pbkdf2_sha256$216000$PXYsP3JTpHzB$HY6wCh6+EhG0hBjd4O841oFVJglMEX4az4+Fk6Dha5s=	2021-03-14 12:29:24.040594+05:30	t	Harsh			harshpatel@gmail.com	t	t	2021-02-07 11:01:06.778696+05:30
\.


--
-- TOC entry 3085 (class 0 OID 16650)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3087 (class 0 OID 16658)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3097 (class 0 OID 16799)
-- Dependencies: 227
-- Data for Name: carapp_contactform; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carapp_contactform (id, name, email, subject, phone, message) FROM stdin;
1	Harsh R Patel	harshpatel281199@gmail.com	Jdjd	08849430206	gfhfh
2	Harsh R Patel	harshpatel281199@gmail.com	dfsd	08849430206	dsfsdf
3	Harsh Patel	hrpatel8934@gmail.com	sdsd	08849430206	sdsdsd
4	Harsh Patel	hrpatel8934@gmail.com	sdsd	08849430206	sdsdsd
\.


--
-- TOC entry 3095 (class 0 OID 16788)
-- Dependencies: 225
-- Data for Name: carapp_team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carapp_team (id, firstname, lastname, designation, photo, facebook_link, googleplus_link, twitter_link, created_at) FROM stdin;
1	Harsh	Patel	CEO	carapp/avatar-3_VGhqsYA.jpg	https://www.facebook.com/	https://www.google.com/	https://www.twitter.com/	2021-02-07 11:08:35.235316+05:30
2	Savan	Budheliya	CEO	carapp/avatar-12.jpg	https://www.facebook.com/	https://www.google.com/	https://www.twitter.com/	2021-02-07 11:08:53.455907+05:30
3	Tirth	Patel	Manager	carapp/avatar-11.jpg	https://www.facebook.com/	https://www.google.com/	https://www.twitter.com/	2021-02-07 11:09:13.493534+05:30
\.


--
-- TOC entry 3099 (class 0 OID 16810)
-- Dependencies: 229
-- Data for Name: cars_car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cars_car (id, car_title, state, city, color, model, year, condition, price, description, car_photo, car_photo1, car_photo2, car_photo3, car_photo4, features, body_style, engine, transmition, interior, miles, doors, passengers, vin_no, milage, fuel_type, no_of_owners, is_featured, created_date) FROM stdin;
1	Mg Hector	GJ	Surat	Black	A398	2019	New	200000	<p>The price of MG Hector starts at Rs. 12.89 Lakh and goes upto Rs. 18.42 Lakh. MG Hector is offered in 11 variants - the base model of Hector is Style MT and the top variant MG Hector Sharp Diesel MT which comes at a price tag of Rs. 18.42 Lakh.</p>	car/hector-black_PtAdq5s.jpg	car/MG-Hector-Rear-view-157050_N1UqQeH.jpg	car/20190630124239_MG-Hector-main_jWYaamj.jpg	car/images_XrFPxAg.jfif	car/mg-hector-review-images-interior-rear-seats-ad23_2lyTP7t.jpg	Cruise Control,Audio Interface,Airbags,Air Conditioning,Auto Start/Stop	SUV	1956 cc	Automatic	Tecometer, Leather Seats	0	4	5	Ab4385901	15	Petrol&Diesel	0	t	2021-02-07 11:12:26.927081+05:30
2	Eon	GJ	Ahmedabad	White	A502	2004	Used	300000	<p>Hyundai&nbsp;<strong>Eon</strong>&nbsp;[2011-2019] is a 5 seater Hatchback with the last recorded price of ₹ 2.96 - 4.71 Lakh. It is available in 23 variants, 1 engine option and 1 transmission option : Manual. The is available in 5 colours. The mileage of ranges from 20.3 kmpl to 21.1 kmpl.</p>	car/2011-hyundai-eon-magna-500x500_HcOFG0m.png	car/98-Concept-of-Hyundai-Eon-2019-Interior-with-Hyundai-Eon-2019_NqvCwoT.jpg	car/Hyundai-Eon-Sports-edition-exterior_sqpVs1C.jpg	car/images_e2oRZ5a.jfif	car/Hyundai_Eos_GL_2014_11954748753_AW9xnYU.jpg	Power Steering,Direct Fuel Injection,Auto Start/Stop	HatchBack	814	Manual	Good	200	4	4	Ah4385901	20	Petrol	1	f	2021-02-07 11:14:24.980372+05:30
3	Baleno	Up	Noida	Blue	A398	2017	New	500000	<p><strong>Latest Update</strong>: Maruti Baleno is one of the Maruti models that has&nbsp;<a href="https://www.cardekho.com/india-car-news/maruti-increases-prices-across-models-by-up-to-rs-34000-26630.htm">received a price hike</a>&nbsp;of up to Rs 34,000.</p>\r\n\r\n<p><strong>Maruti Baleno Price</strong>: The premium hatchback is priced between Rs 5.90 lakh and Rs 9.10 lakh (ex-showroom).</p>\r\n\r\n<p><strong>Maruti Baleno Variants</strong>: The Baleno is available in four variants: Sigma, Delta, Zeta and Alpha.</p>	car/1_H4Dtph5.jpg	car/2_ISMKrbj.jpg	car/3_ZA9q35O.jpg	car/maruti-baleno-limited-edition-front-skirting-1537849910.jpg	car/Maruti-Suzuki-Baleno-Exterior-137026_ZXxLdtW.webp	Airbags,Power Steering,Reversing Camera,Auto Start/Stop	Sedan	1197	Manual	Good	0	4	5	Ab4385901	20	Petrol&Diesel	0	t	2021-02-07 11:16:31.428077+05:30
4	Hyundai Verna	MH	Mumbai	Navy Blue	A23023	2019	New	150000	<p>Most Powerful &amp; Fun to drive 1.0 Turbo GDi, Blue Link Technology with Voice Commands. BS6 Compliant, Efficient All New 1.5L MPI Petrol, 7 DCT with Blue Link Technology. India&rsquo;s most loved sedan. Powerful and Efficient.&nbsp;<em>Hyundai</em>&nbsp;Blue Link.</p>	car/1_9xFoqw2.jpg	car/2_W8hBE0g.jpg	car/4_rH87rcJ.jpg	car/5_SjkZl9r.jpg	car/Hyundai_Verna_Sedan_bottom_small_PC_544x360_1_8zFbj0S.jpg	Cruise Control,Air Conditioning,Alarm System,ParkAssist,Auto Start/Stop	Sedan	1197	Manual	Good	0	4	5	Ahsja38782349	14	Petrol&Diesel	0	t	2021-02-07 11:18:42.220777+05:30
\.


--
-- TOC entry 3101 (class 0 OID 16821)
-- Dependencies: 231
-- Data for Name: contacts_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts_contact (id, firstname, lastname, customer_need, car_title, city, state, email, phone, message, created_date, user_id_id, car_id) FROM stdin;
1	Harsh	Patel	I'd like to know your best price for this	Mg Hector	Surat	11	harshpatel281199@gmail.com	08849430206	I like this car	2021-02-07	3	1
\.


--
-- TOC entry 3093 (class 0 OID 16755)
-- Dependencies: 223
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-02-07 11:08:35.239257+05:30	1	Harsh	1	[{"added": {}}]	1	1
2	2021-02-07 11:08:53.458758+05:30	2	Savan	1	[{"added": {}}]	1	1
3	2021-02-07 11:09:13.499465+05:30	3	Tirth	1	[{"added": {}}]	1	1
4	2021-02-07 11:12:26.931018+05:30	1	Mg Hector	1	[{"added": {}}]	3	1
5	2021-02-07 11:14:24.982813+05:30	2	Eon	1	[{"added": {}}]	3	1
6	2021-02-07 11:16:31.430071+05:30	3	Baleno	1	[{"added": {}}]	3	1
7	2021-02-07 11:18:42.223769+05:30	4	Hyundai Verna	1	[{"added": {}}]	3	1
8	2021-02-07 12:09:50.648119+05:30	1	Facebook Login	1	[{"added": {}}]	15	1
9	2021-02-07 12:10:19.101511+05:30	1	localhost:8000	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	11	1
10	2021-02-07 12:19:30.66657+05:30	2	Google Login	1	[{"added": {}}]	15	1
\.


--
-- TOC entry 3075 (class 0 OID 16604)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	carapp	team
2	carapp	contactform
3	cars	car
4	contacts	contact
5	admin	logentry
6	auth	permission
7	auth	group
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	sites	site
12	account	emailaddress
13	account	emailconfirmation
14	socialaccount	socialaccount
15	socialaccount	socialapp
16	socialaccount	socialtoken
\.


--
-- TOC entry 3073 (class 0 OID 16593)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-02-07 10:43:02.154062+05:30
2	auth	0001_initial	2021-02-07 10:43:02.242451+05:30
3	account	0001_initial	2021-02-07 10:43:02.379678+05:30
4	account	0002_email_max_length	2021-02-07 10:43:02.446544+05:30
5	admin	0001_initial	2021-02-07 10:43:02.489388+05:30
6	admin	0002_logentry_remove_auto_add	2021-02-07 10:43:02.524407+05:30
7	admin	0003_logentry_add_action_flag_choices	2021-02-07 10:43:02.543241+05:30
8	contenttypes	0002_remove_content_type_name	2021-02-07 10:43:02.584133+05:30
9	auth	0002_alter_permission_name_max_length	2021-02-07 10:43:02.608097+05:30
10	auth	0003_alter_user_email_max_length	2021-02-07 10:43:02.632076+05:30
11	auth	0004_alter_user_username_opts	2021-02-07 10:43:02.650953+05:30
12	auth	0005_alter_user_last_login_null	2021-02-07 10:43:02.6709+05:30
13	auth	0006_require_contenttypes_0002	2021-02-07 10:43:02.675891+05:30
14	auth	0007_alter_validators_add_error_messages	2021-02-07 10:43:02.697866+05:30
15	auth	0008_alter_user_username_max_length	2021-02-07 10:43:02.737768+05:30
16	auth	0009_alter_user_last_name_max_length	2021-02-07 10:43:02.76066+05:30
17	auth	0010_alter_group_name_max_length	2021-02-07 10:43:02.786591+05:30
18	auth	0011_update_proxy_permissions	2021-02-07 10:43:02.811674+05:30
19	auth	0012_alter_user_first_name_max_length	2021-02-07 10:43:02.828989+05:30
20	carapp	0001_initial	2021-02-07 10:43:02.859465+05:30
21	carapp	0002_contactform	2021-02-07 10:43:02.882415+05:30
22	cars	0001_initial	2021-02-07 10:43:02.915247+05:30
23	cars	0002_auto_20201206_2036	2021-02-07 10:43:02.936388+05:30
24	cars	0003_auto_20201213_1853	2021-02-07 10:43:02.975152+05:30
25	cars	0004_auto_20201214_1411	2021-02-07 10:43:02.989048+05:30
26	cars	0005_auto_20201214_1726	2021-02-07 10:43:03.005009+05:30
27	cars	0006_auto_20201214_1728	2021-02-07 10:43:03.034771+05:30
28	contacts	0001_initial	2021-02-07 10:43:03.121742+05:30
29	contacts	0002_auto_20201214_1411	2021-02-07 10:43:03.313268+05:30
30	sessions	0001_initial	2021-02-07 10:43:03.334354+05:30
31	sites	0001_initial	2021-02-07 10:43:03.35815+05:30
32	sites	0002_alter_domain_unique	2021-02-07 10:43:03.375686+05:30
33	socialaccount	0001_initial	2021-02-07 10:43:03.523704+05:30
34	socialaccount	0002_token_max_lengths	2021-02-07 10:43:03.595512+05:30
35	socialaccount	0003_extra_data_default_dict	2021-02-07 10:43:03.613465+05:30
\.


--
-- TOC entry 3102 (class 0 OID 16859)
-- Dependencies: 232
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
jyrhg1z4lhn07fn0rqnpotoav2dm0hze	eyJzb2NpYWxhY2NvdW50X3N0YXRlIjpbeyJwcm9jZXNzIjoibG9naW4iLCJzY29wZSI6IiIsImF1dGhfcGFyYW1zIjoiIn0sImFVRk9CVGpxQmRpbCJdfQ:1l8dtG:l1ZY7lG06oD0onCAMFAKpI0WmxOLoN6rhbtf4WJ6S74	2021-02-21 12:19:50.857046+05:30
4mkhzo5yzpq39azv3ogmllimvdvpxe6l	eyJzb2NpYWxhY2NvdW50X3N0YXRlIjpbeyJwcm9jZXNzIjoibG9naW4iLCJzY29wZSI6IiIsImF1dGhfcGFyYW1zIjoiIn0sIklGQnNSM2UxVm42SSJdfQ:1lKuuj:nLEAiO1LrKiN4qsWB9LokSQyEgSW1cYYKAZWBQMAi1I	2021-03-27 08:56:05.668117+05:30
shsp2jq2faffsh0y565v22m9yjuvuuf7	.eJxVjEEOgjAQRe_StWmgOO3UpXvOQGY6U4saSCisjHdXEha6_e-9_zIDbWsZtqrLMIq5mNacfjem9NBpB3Kn6TbbNE_rMrLdFXvQavtZ9Hk93L-DQrV8a5AAEX2DuZVzJmUJudPAUUAIMFNq1TFGLwIJPSgSB6-dY6fQRDTvDwamOLg:1lLKii:5sDvxduhUnt1gF6vFMyQxs42MI_mN9BFLI6AHFRKDOw	2021-03-28 12:29:24.050573+05:30
\.


--
-- TOC entry 3104 (class 0 OID 16871)
-- Dependencies: 234
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	localhost:8000	localhost:8000
\.


--
-- TOC entry 3106 (class 0 OID 16882)
-- Dependencies: 236
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
2	facebook	1013042225884926	2021-02-07 12:35:57.384046+05:30	2021-02-07 12:35:57.384046+05:30	{"id": "1013042225884926", "name": "Harsh Patel", "first_name": "Harsh", "last_name": "Patel"}	3
1	google	100545140120094281107	2021-03-13 08:56:48.254222+05:30	2021-02-07 12:20:16.188863+05:30	{"id": "100545140120094281107", "name": "harsh patel", "given_name": "harsh", "family_name": "patel", "picture": "https://lh3.googleusercontent.com/a-/AOh14GihqiCy53fAecDhlcKIIUg1Gf49dvIkJVQGgHd1lw4=s96-c", "locale": "en"}	2
\.


--
-- TOC entry 3108 (class 0 OID 16893)
-- Dependencies: 238
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
1	facebook	Facebook Login	685700225668770	4d7b0c1bd085f1429aaf559a638a469c	
2	google	Google Login	696593495224-77g40hmt88vb4b6bcah3mp6gs8it09d9.apps.googleusercontent.com	xegayb2f6t1lkGy016r4dU7V	
\.


--
-- TOC entry 3110 (class 0 OID 16901)
-- Dependencies: 240
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
1	1	1
2	2	1
\.


--
-- TOC entry 3112 (class 0 OID 16909)
-- Dependencies: 242
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
2	EAAJvpAZAflqIBAI0p8keBjtUi07l3J6fHinp9jDV1DQX2JtDoXQg8UiwSbZBeTZAJGg2YJ6ZAHwSvZCHImYMf9T1wWwRO9OOim7netICm84OsoYoZA2GzrdTBaBHRYRfZB0skpiNRhuREoZCuPRhitZClNAY5xzGO1RSsmltzp4Ml4gZDZD		2021-04-08 12:35:55.745824+05:30	2	1
1	ya29.a0AfH6SMAs5Kh7PwKqnWBF8a9ZPPDfMJeV1c_xRx2RpN4ae7_l8c5MZmVjQ9bkDDZic46D2yQ1bd-hXZRxG6RItXrFWbJIh7AVQWjHnKMMVBVdznfwuKGMI6-ZxCmYLR8qinhhvx8QmsbdbKd-WPoGuet6fb59		2021-03-13 09:56:46.773646+05:30	1	2
\.


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 218
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);


--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 220
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 226
-- Name: carapp_contactform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carapp_contactform_id_seq', 4, true);


--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 224
-- Name: carapp_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carapp_team_id_seq', 3, true);


--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 228
-- Name: cars_car_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cars_car_id_seq', 4, true);


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 230
-- Name: contacts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_contact_id_seq', 1, true);


--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 222
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);


--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 235
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 2, true);


--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 237
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 2, true);


--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 239
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 2, true);


--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 241
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 2, true);


--
-- TOC entry 2878 (class 2606 OID 16751)
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- TOC entry 2880 (class 2606 OID 16723)
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 16735)
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- TOC entry 2887 (class 2606 OID 16733)
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- TOC entry 2850 (class 2606 OID 16784)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2855 (class 2606 OID 16674)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2858 (class 2606 OID 16637)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2852 (class 2606 OID 16627)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 16665)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2847 (class 2606 OID 16619)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2866 (class 2606 OID 16655)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2869 (class 2606 OID 16689)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2860 (class 2606 OID 16645)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2872 (class 2606 OID 16663)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2875 (class 2606 OID 16703)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2863 (class 2606 OID 16778)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2895 (class 2606 OID 16807)
-- Name: carapp_contactform carapp_contactform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carapp_contactform
    ADD CONSTRAINT carapp_contactform_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 16796)
-- Name: carapp_team carapp_team_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carapp_team
    ADD CONSTRAINT carapp_team_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 16818)
-- Name: cars_car cars_car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars_car
    ADD CONSTRAINT cars_car_pkey PRIMARY KEY (id);


--
-- TOC entry 2899 (class 2606 OID 16829)
-- Name: contacts_contact contacts_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 16764)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2840 (class 2606 OID 16611)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2842 (class 2606 OID 16609)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 16601)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 16866)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2907 (class 2606 OID 16878)
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- TOC entry 2909 (class 2606 OID 16876)
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- TOC entry 2911 (class 2606 OID 16890)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- TOC entry 2913 (class 2606 OID 16921)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- TOC entry 2918 (class 2606 OID 16929)
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- TOC entry 2916 (class 2606 OID 16898)
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- TOC entry 2920 (class 2606 OID 16906)
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- TOC entry 2926 (class 2606 OID 16919)
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- TOC entry 2928 (class 2606 OID 16917)
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- TOC entry 2876 (class 1259 OID 16752)
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- TOC entry 2881 (class 1259 OID 16742)
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- TOC entry 2882 (class 1259 OID 16749)
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- TOC entry 2883 (class 1259 OID 16748)
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- TOC entry 2848 (class 1259 OID 16785)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2853 (class 1259 OID 16685)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2856 (class 1259 OID 16686)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2843 (class 1259 OID 16671)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2864 (class 1259 OID 16701)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2867 (class 1259 OID 16700)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2870 (class 1259 OID 16715)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2873 (class 1259 OID 16714)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2861 (class 1259 OID 16779)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2900 (class 1259 OID 16843)
-- Name: contacts_contact_user_id_id_ec89252b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX contacts_contact_user_id_id_ec89252b ON public.contacts_contact USING btree (user_id_id);


--
-- TOC entry 2888 (class 1259 OID 16775)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2891 (class 1259 OID 16776)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2901 (class 1259 OID 16868)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2904 (class 1259 OID 16867)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2905 (class 1259 OID 16879)
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- TOC entry 2914 (class 1259 OID 16927)
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- TOC entry 2921 (class 1259 OID 16941)
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- TOC entry 2922 (class 1259 OID 16940)
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- TOC entry 2923 (class 1259 OID 16952)
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- TOC entry 2924 (class 1259 OID 16953)
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- TOC entry 2936 (class 2606 OID 16736)
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2937 (class 2606 OID 16743)
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2931 (class 2606 OID 16680)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2930 (class 2606 OID 16675)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2929 (class 2606 OID 16666)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2933 (class 2606 OID 16695)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2932 (class 2606 OID 16690)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2935 (class 2606 OID 16709)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2934 (class 2606 OID 16704)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2940 (class 2606 OID 16838)
-- Name: contacts_contact contacts_contact_user_id_id_ec89252b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_user_id_id_ec89252b_fk_auth_user_id FOREIGN KEY (user_id_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2938 (class 2606 OID 16765)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2939 (class 2606 OID 16770)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2944 (class 2606 OID 16942)
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2945 (class 2606 OID 16947)
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2943 (class 2606 OID 16935)
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2942 (class 2606 OID 16930)
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2941 (class 2606 OID 16922)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-03-14 13:34:20

--
-- PostgreSQL database dump complete
--

