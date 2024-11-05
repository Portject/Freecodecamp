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



CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    celestial integer,
    diameter numeric(3,0) NOT NULL,
    stars_bn integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;



CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;



ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;




CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    diameter numeric(5,0) NOT NULL,
    no_submoons integer,
    orbital integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;



CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;



ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;




CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying,
    favourite integer,
    diameter numeric(3,1) NOT NULL,
    type text
);


ALTER TABLE public.nebula OWNER TO freecodecamp;



CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;



ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;




CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    wanderer integer,
    gas_giant boolean NOT NULL,
    diameter_km numeric(6,0) NOT NULL,
    orbital integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;



CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;



ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;




CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    celestial integer,
    goldilocks boolean NOT NULL,
    diameter_km numeric(8,0) NOT NULL,
    wanderer integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;



CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;



ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;




ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);




ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);




ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);




ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);




ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);



INSERT INTO public.galaxy VALUES (1, 'milky way', 1, 874, 100);
INSERT INTO public.galaxy VALUES (3, 'scutum', 3, 600, 40);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 2, 110, 100);
INSERT INTO public.galaxy VALUES (4, 'arcturus', 4, 769, 100);
INSERT INTO public.galaxy VALUES (5, 'large magellanic cloud', 5, 140, 30);
INSERT INTO public.galaxy VALUES (6, 'small magellanic cloud', 6, 70, 3);




INSERT INTO public.moon VALUES (1, 'mold', 1234, 3, 1);
INSERT INTO public.moon VALUES (2, 'hole', 1357, 0, 1);
INSERT INTO public.moon VALUES (3, 'spinach', 1123, 2, 1);
INSERT INTO public.moon VALUES (4, 'water', 3690, 0, 12);
INSERT INTO public.moon VALUES (5, 'air', 9630, 1, 12);
INSERT INTO public.moon VALUES (6, 'bomb', 6639, 2, 12);
INSERT INTO public.moon VALUES (7, 'gaia', 8743, 1, 4);
INSERT INTO public.moon VALUES (8, 'uranus', 3478, 1, 4);
INSERT INTO public.moon VALUES (9, 'atena', 4738, 1, 4);
INSERT INTO public.moon VALUES (10, 'artemis', 3122, 0, 7);
INSERT INTO public.moon VALUES (11, 'orion', 5268, 0, 7);
INSERT INTO public.moon VALUES (12, 'titan', 3643, 0, 7);
INSERT INTO public.moon VALUES (13, 'cyclops', 5150, 0, 1);
INSERT INTO public.moon VALUES (14, 'whale', 504, 0, 1);
INSERT INTO public.moon VALUES (15, 'scorpion', 67, 0, 6);
INSERT INTO public.moon VALUES (16, 'ares', 76, 1, 6);
INSERT INTO public.moon VALUES (17, 'scadufax', 43, 2, 6);
INSERT INTO public.moon VALUES (18, 'vista', 23, 0, 8);
INSERT INTO public.moon VALUES (19, 'fires', 12, 0, 8);
INSERT INTO public.moon VALUES (20, 'land', 2707, 0, 10);




INSERT INTO public.nebula VALUES (1, 'bar', 1, 26.9, 'reflection');
INSERT INTO public.nebula VALUES (2, 'sirius', 2, 24.0, 'diffuse');
INSERT INTO public.nebula VALUES (3, 'shan', 3, 11.0, 'supernova remnant');




INSERT INTO public.planet VALUES (1, 'fan', 1, true, 116460, 1);
INSERT INTO public.planet VALUES (2, 'lauren', 6, true, 222333, 2);
INSERT INTO public.planet VALUES (3, 'bamb', 6, true, 333222, 3);
INSERT INTO public.planet VALUES (4, 'sirus', 6, true, 123123, 4);
INSERT INTO public.planet VALUES (5, 'cale', 5, false, 545121, 5);
INSERT INTO public.planet VALUES (6, 'mojo', 5, false, 121545, 6);
INSERT INTO public.planet VALUES (7, 'dregs', 1, true, 143000, 7);
INSERT INTO public.planet VALUES (8, 'faler', 2, false, 789000, 8);
INSERT INTO public.planet VALUES (9, 'blob', 2, false, 111789, 9);
INSERT INTO public.planet VALUES (10, 'master', 3, true, 456001, 10);
INSERT INTO public.planet VALUES (11, 'jarrible', 3, false, 100456, 11);
INSERT INTO public.planet VALUES (12, 'non', 4, true, 385000, 12);




INSERT INTO public.star VALUES (1, 'sun', 1, true, 1391400, 1);
INSERT INTO public.star VALUES (2, 'delta omicron', 1, false, 214550, 2);
INSERT INTO public.star VALUES (3, 'noneragus', 2, false, 29915100, 3);
INSERT INTO public.star VALUES (4, 'electra', 3, true, 61402000, 4);
INSERT INTO public.star VALUES (5, 'hyades', 5, true, 2400000, 5);
INSERT INTO public.star VALUES (6, 'procyon', 6, true, 13041997, 6);




SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);




SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);




SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 1, false);




SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);




SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);




ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_celestial_key UNIQUE (celestial);




ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);




ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);




ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);




ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);




ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);




ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);




ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbital_key UNIQUE (orbital);




ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);




ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);




ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);




ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_wanderer_key UNIQUE (wanderer);




ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_wanderer_key1 UNIQUE (wanderer);




ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbital_fkey FOREIGN KEY (orbital) REFERENCES public.planet(orbital);




ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_wanderer_fkey FOREIGN KEY (wanderer) REFERENCES public.star(wanderer);




ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_celestial_fkey FOREIGN KEY (celestial) REFERENCES public.galaxy(celestial);



