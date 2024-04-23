--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galactic_systems; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galactic_systems (
    galactic_systems_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.galactic_systems OWNER TO freecodecamp;

--
-- Name: galactic_systems_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galactic_systems_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galactic_systems_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galactic_systems_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galactic_systems_galaxy_id_seq OWNED BY public.galactic_systems.galaxy_id;


--
-- Name: galactic_systems_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galactic_systems_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galactic_systems_star_id_seq OWNER TO freecodecamp;

--
-- Name: galactic_systems_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galactic_systems_star_id_seq OWNED BY public.galactic_systems.star_id;


--
-- Name: galactic_systems_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galactic_systems_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galactic_systems_system_id_seq OWNER TO freecodecamp;

--
-- Name: galactic_systems_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galactic_systems_system_id_seq OWNED BY public.galactic_systems.galactic_systems_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_code numeric,
    distance_from_earth integer,
    galaxy_types text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    planet_id integer NOT NULL,
    moon_code numeric,
    has_water boolean,
    dis_million_kms_from_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    star_id integer NOT NULL,
    planet_code numeric,
    has_life boolean,
    dis_from_earth_light_yrs numeric(4,2),
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    galaxy_id integer NOT NULL,
    star_types text,
    age_in_million_yrs integer,
    dis_from_earth_light_yrs integer,
    star_code numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galactic_systems galactic_systems_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_systems ALTER COLUMN galactic_systems_id SET DEFAULT nextval('public.galactic_systems_system_id_seq'::regclass);


--
-- Name: galactic_systems galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_systems ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galactic_systems_galaxy_id_seq'::regclass);


--
-- Name: galactic_systems star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_systems ALTER COLUMN star_id SET DEFAULT nextval('public.galactic_systems_star_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galactic_systems; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galactic_systems VALUES (1, 1, 1, NULL);
INSERT INTO public.galactic_systems VALUES (2, 2, 2, NULL);
INSERT INTO public.galactic_systems VALUES (3, 3, 3, NULL);
INSERT INTO public.galactic_systems VALUES (4, 4, 4, NULL);
INSERT INTO public.galactic_systems VALUES (5, 5, 5, NULL);
INSERT INTO public.galactic_systems VALUES (6, 6, 6, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky-Way', 15000, false, 1, NULL, 'non_spherical', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 14000, false, 2, 9876, 'non_spherical', false);
INSERT INTO public.galaxy VALUES (3, 'Spiral', 12500, false, 3, 9090, 'Spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Cloud-nebula', 25000, true, 4, 8899, 'SPherical', false);
INSERT INTO public.galaxy VALUES (5, 'cluster-nova', 76000, true, 5, 10987, 'SPherical', false);
INSERT INTO public.galaxy VALUES (6, 'cluster-cloud-nova', 85000, true, 6, 90876, 'Cluster_type', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1, false, 146);
INSERT INTO public.moon VALUES (2, 'Moon_1', 2, 2, false, 200);
INSERT INTO public.moon VALUES (3, 'Moon_2', 2, 3, false, 250);
INSERT INTO public.moon VALUES (4, 'Moon_3', 3, 4, false, 260);
INSERT INTO public.moon VALUES (5, 'Moon_4', 3, 5, false, 356);
INSERT INTO public.moon VALUES (6, 'Moon_5', 4, 6, false, 400);
INSERT INTO public.moon VALUES (7, 'Moon_6', 4, 7, false, 450);
INSERT INTO public.moon VALUES (8, 'Moon_7', 5, 8, false, 470);
INSERT INTO public.moon VALUES (9, 'Moon_7', 5, 9, false, 500);
INSERT INTO public.moon VALUES (10, 'Moon_8', 6, 10, false, 520);
INSERT INTO public.moon VALUES (11, 'Moon_9', 6, 11, false, 550);
INSERT INTO public.moon VALUES (12, 'Moon_10', 7, 12, false, 600);
INSERT INTO public.moon VALUES (13, 'Moon_11', 7, 13, false, 650);
INSERT INTO public.moon VALUES (14, 'Moon_12', 8, 14, false, 670);
INSERT INTO public.moon VALUES (15, 'Moon_13', 9, 15, false, 700);
INSERT INTO public.moon VALUES (16, 'Moon_14', 9, 16, false, 750);
INSERT INTO public.moon VALUES (17, 'Moon_15', 10, 17, false, 800);
INSERT INTO public.moon VALUES (18, 'Moon_16', 10, 17, false, 850);
INSERT INTO public.moon VALUES (19, 'Moon_16', 11, 18, false, 900);
INSERT INTO public.moon VALUES (20, 'Moon_18', 12, 20, false, 1000);
INSERT INTO public.moon VALUES (21, 'Moon_19', 12, 21, false, 1200);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1, true, NULL, 4500);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 2, false, 0.12, 3800);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 3, false, 0.09, 3500);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 4, false, 0.97, 4000);
INSERT INTO public.planet VALUES (5, 'Convo_one', 2, 5, false, 12.34, 6500);
INSERT INTO public.planet VALUES (6, 'Apollo_x1', 3, 6, false, 15.34, 6000);
INSERT INTO public.planet VALUES (7, 'Rover_one', 4, 7, false, 15.34, 6500);
INSERT INTO public.planet VALUES (8, 'Voyer_x1', 5, 8, false, 23.56, 5500);
INSERT INTO public.planet VALUES (9, 'Proxima_v1', 6, 9, false, 92.74, 6590);
INSERT INTO public.planet VALUES (10, 'Proxima_v2', 7, 10, false, 99.79, 6599);
INSERT INTO public.planet VALUES (11, 'Alpha_xx1', 8, 11, false, 92.74, 6590);
INSERT INTO public.planet VALUES (12, 'Proxima_b23', 9, 12, false, 82.74, 6580);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, 'Normal_star', 4500, 1, 1);
INSERT INTO public.star VALUES (2, 'alpha-centuary', 1, 'Red_giant', 6500, 15, 2);
INSERT INTO public.star VALUES (3, 'beta-centuary', 2, 'Blue_dwarf', 4500, 60, 3);
INSERT INTO public.star VALUES (4, 'gamma-centuary', 2, 'white_dwarf', 4000, 70, 4);
INSERT INTO public.star VALUES (5, 'Proxima-centuary', 3, 'Red_giant', 6000, 120, 5);
INSERT INTO public.star VALUES (6, 'gamma_one', 3, 'Red_giant', 5600, 100, 6);
INSERT INTO public.star VALUES (7, 'Alpha_one', 4, 'Normal_star', 58000, 150, 7);
INSERT INTO public.star VALUES (8, 'Alpha_two', 5, 'White_dwarf', 76000, 200, 8);
INSERT INTO public.star VALUES (9, 'Beta_one', 6, 'Blue_dwarf', 96000, 250, 9);


--
-- Name: galactic_systems_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galactic_systems_galaxy_id_seq', 1, false);


--
-- Name: galactic_systems_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galactic_systems_star_id_seq', 1, false);


--
-- Name: galactic_systems_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galactic_systems_system_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galactic_systems galactic_systems_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_systems
    ADD CONSTRAINT galactic_systems_pkey PRIMARY KEY (galactic_systems_id);


--
-- Name: galactic_systems galactic_systems_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_systems
    ADD CONSTRAINT galactic_systems_system_id_key UNIQUE (galactic_systems_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galactic_systems galactic_systems_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_systems
    ADD CONSTRAINT galactic_systems_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galactic_systems galactic_systems_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_systems
    ADD CONSTRAINT galactic_systems_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

