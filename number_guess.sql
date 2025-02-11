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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    secret_number integer,
    number_of_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 904, 9);
INSERT INTO public.games VALUES (2, 3, 911, 911);
INSERT INTO public.games VALUES (3, 3, 651, 651);
INSERT INTO public.games VALUES (4, 4, 375, 375);
INSERT INTO public.games VALUES (5, 4, 590, 590);
INSERT INTO public.games VALUES (6, 3, 812, 814);
INSERT INTO public.games VALUES (7, 3, 687, 688);
INSERT INTO public.games VALUES (8, 3, 615, 615);
INSERT INTO public.games VALUES (9, 5, 283, 283);
INSERT INTO public.games VALUES (10, 5, 244, 244);
INSERT INTO public.games VALUES (11, 6, 529, 529);
INSERT INTO public.games VALUES (12, 6, 922, 922);
INSERT INTO public.games VALUES (13, 5, 606, 608);
INSERT INTO public.games VALUES (14, 5, 619, 620);
INSERT INTO public.games VALUES (15, 5, 558, 558);
INSERT INTO public.games VALUES (16, 7, 636, 8);
INSERT INTO public.games VALUES (17, 7, 736, 12);
INSERT INTO public.games VALUES (18, 8, 373, 373);
INSERT INTO public.games VALUES (19, 8, 92, 92);
INSERT INTO public.games VALUES (20, 9, 89, 89);
INSERT INTO public.games VALUES (21, 9, 60, 60);
INSERT INTO public.games VALUES (22, 8, 297, 299);
INSERT INTO public.games VALUES (23, 8, 132, 133);
INSERT INTO public.games VALUES (24, 8, 33, 33);
INSERT INTO public.games VALUES (25, 10, 767, 767);
INSERT INTO public.games VALUES (26, 10, 209, 209);
INSERT INTO public.games VALUES (27, 11, 625, 625);
INSERT INTO public.games VALUES (28, 11, 450, 450);
INSERT INTO public.games VALUES (29, 10, 193, 195);
INSERT INTO public.games VALUES (30, 10, 60, 61);
INSERT INTO public.games VALUES (31, 10, 7, 7);
INSERT INTO public.games VALUES (32, 12, 743, 743);
INSERT INTO public.games VALUES (33, 12, 989, 989);
INSERT INTO public.games VALUES (34, 13, 766, 766);
INSERT INTO public.games VALUES (35, 13, 145, 145);
INSERT INTO public.games VALUES (36, 12, 711, 713);
INSERT INTO public.games VALUES (37, 12, 564, 565);
INSERT INTO public.games VALUES (38, 12, 315, 315);
INSERT INTO public.games VALUES (39, 14, 892, 892);
INSERT INTO public.games VALUES (40, 14, 552, 552);
INSERT INTO public.games VALUES (41, 15, 396, 396);
INSERT INTO public.games VALUES (42, 15, 29, 29);
INSERT INTO public.games VALUES (43, 14, 282, 284);
INSERT INTO public.games VALUES (44, 14, 158, 159);
INSERT INTO public.games VALUES (45, 14, 279, 279);
INSERT INTO public.games VALUES (46, 16, 178, 178);
INSERT INTO public.games VALUES (47, 16, 10, 10);
INSERT INTO public.games VALUES (48, 17, 884, 884);
INSERT INTO public.games VALUES (49, 17, 729, 729);
INSERT INTO public.games VALUES (50, 16, 525, 527);
INSERT INTO public.games VALUES (51, 16, 944, 945);
INSERT INTO public.games VALUES (52, 16, 471, 471);
INSERT INTO public.games VALUES (53, 18, 543, 544);
INSERT INTO public.games VALUES (54, 18, 27, 28);
INSERT INTO public.games VALUES (55, 19, 475, 476);
INSERT INTO public.games VALUES (56, 19, 28, 29);
INSERT INTO public.games VALUES (57, 18, 956, 959);
INSERT INTO public.games VALUES (58, 18, 661, 663);
INSERT INTO public.games VALUES (59, 18, 768, 769);
INSERT INTO public.games VALUES (60, 7, 654, 10);
INSERT INTO public.games VALUES (61, 20, 333, 334);
INSERT INTO public.games VALUES (62, 20, 661, 662);
INSERT INTO public.games VALUES (63, 21, 258, 259);
INSERT INTO public.games VALUES (64, 21, 296, 297);
INSERT INTO public.games VALUES (65, 20, 667, 670);
INSERT INTO public.games VALUES (66, 20, 749, 751);
INSERT INTO public.games VALUES (67, 20, 839, 840);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'JU');
INSERT INTO public.players VALUES (2, 'Sky');
INSERT INTO public.players VALUES (3, 'user_1739282855310');
INSERT INTO public.players VALUES (4, 'user_1739282855309');
INSERT INTO public.players VALUES (5, 'user_1739282891046');
INSERT INTO public.players VALUES (6, 'user_1739282891045');
INSERT INTO public.players VALUES (7, 'Ju');
INSERT INTO public.players VALUES (8, 'user_1739283109420');
INSERT INTO public.players VALUES (9, 'user_1739283109419');
INSERT INTO public.players VALUES (10, 'user_1739283124672');
INSERT INTO public.players VALUES (11, 'user_1739283124671');
INSERT INTO public.players VALUES (12, 'user_1739283127032');
INSERT INTO public.players VALUES (13, 'user_1739283127031');
INSERT INTO public.players VALUES (14, 'user_1739283129260');
INSERT INTO public.players VALUES (15, 'user_1739283129259');
INSERT INTO public.players VALUES (16, 'user_1739283331568');
INSERT INTO public.players VALUES (17, 'user_1739283331567');
INSERT INTO public.players VALUES (18, 'user_1739283787984');
INSERT INTO public.players VALUES (19, 'user_1739283787983');
INSERT INTO public.players VALUES (20, 'user_1739283860855');
INSERT INTO public.players VALUES (21, 'user_1739283860854');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 67, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

