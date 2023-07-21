--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    best_game integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL,
    play_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 22);
INSERT INTO public.games VALUES (2, 2, 27);
INSERT INTO public.games VALUES (3, 3, 527);
INSERT INTO public.games VALUES (4, 3, 868);
INSERT INTO public.games VALUES (5, 4, 300);
INSERT INTO public.games VALUES (6, 3, 664);
INSERT INTO public.games VALUES (7, 3, 738);
INSERT INTO public.games VALUES (8, 3, 1000);
INSERT INTO public.games VALUES (9, 5, 384);
INSERT INTO public.games VALUES (10, 5, 587);
INSERT INTO public.games VALUES (11, 6, 387);
INSERT INTO public.games VALUES (12, 6, 761);
INSERT INTO public.games VALUES (13, 5, 229);
INSERT INTO public.games VALUES (14, 5, 790);
INSERT INTO public.games VALUES (15, 5, 426);
INSERT INTO public.games VALUES (16, 7, 978);
INSERT INTO public.games VALUES (17, 8, 98);
INSERT INTO public.games VALUES (18, 8, 30);
INSERT INTO public.games VALUES (19, 7, 727);
INSERT INTO public.games VALUES (20, 7, 988);
INSERT INTO public.games VALUES (21, 7, 481);
INSERT INTO public.games VALUES (22, 9, 691);
INSERT INTO public.games VALUES (23, 9, 156);
INSERT INTO public.games VALUES (24, 10, 634);
INSERT INTO public.games VALUES (25, 10, 759);
INSERT INTO public.games VALUES (26, 9, 520);
INSERT INTO public.games VALUES (27, 9, 864);
INSERT INTO public.games VALUES (28, 9, 319);
INSERT INTO public.games VALUES (29, 11, 669);
INSERT INTO public.games VALUES (30, 11, 348);
INSERT INTO public.games VALUES (31, 12, 704);
INSERT INTO public.games VALUES (32, 12, 159);
INSERT INTO public.games VALUES (33, 11, 299);
INSERT INTO public.games VALUES (34, 11, 671);
INSERT INTO public.games VALUES (35, 11, 234);
INSERT INTO public.games VALUES (36, 13, 199);
INSERT INTO public.games VALUES (37, 14, 410);
INSERT INTO public.games VALUES (38, 14, 336);
INSERT INTO public.games VALUES (39, 13, 165);
INSERT INTO public.games VALUES (40, 13, 941);
INSERT INTO public.games VALUES (41, 13, 348);
INSERT INTO public.games VALUES (42, 15, 543);
INSERT INTO public.games VALUES (43, 16, 845);
INSERT INTO public.games VALUES (44, 15, 34);
INSERT INTO public.games VALUES (45, 15, 341);
INSERT INTO public.games VALUES (46, 15, 721);
INSERT INTO public.games VALUES (47, 1, 10);
INSERT INTO public.games VALUES (48, 17, 394);
INSERT INTO public.games VALUES (49, 17, 760);
INSERT INTO public.games VALUES (50, 18, 341);
INSERT INTO public.games VALUES (51, 18, 547);
INSERT INTO public.games VALUES (52, 17, 564);
INSERT INTO public.games VALUES (53, 17, 255);
INSERT INTO public.games VALUES (54, 17, 237);
INSERT INTO public.games VALUES (55, 19, 828);
INSERT INTO public.games VALUES (56, 19, 639);
INSERT INTO public.games VALUES (57, 20, 691);
INSERT INTO public.games VALUES (58, 20, 625);
INSERT INTO public.games VALUES (59, 19, 867);
INSERT INTO public.games VALUES (60, 19, 336);
INSERT INTO public.games VALUES (61, 19, 62);
INSERT INTO public.games VALUES (62, 21, 487);
INSERT INTO public.games VALUES (63, 21, 937);
INSERT INTO public.games VALUES (64, 22, 710);
INSERT INTO public.games VALUES (65, 22, 124);
INSERT INTO public.games VALUES (66, 21, 445);
INSERT INTO public.games VALUES (67, 21, 533);
INSERT INTO public.games VALUES (68, 21, 58);
INSERT INTO public.games VALUES (69, 23, 823);
INSERT INTO public.games VALUES (70, 23, 12);
INSERT INTO public.games VALUES (71, 24, 579);
INSERT INTO public.games VALUES (72, 24, 992);
INSERT INTO public.games VALUES (73, 23, 263);
INSERT INTO public.games VALUES (74, 23, 448);
INSERT INTO public.games VALUES (75, 23, 612);
INSERT INTO public.games VALUES (76, 25, 997);
INSERT INTO public.games VALUES (77, 25, 165);
INSERT INTO public.games VALUES (78, 26, 555);
INSERT INTO public.games VALUES (79, 26, 500);
INSERT INTO public.games VALUES (80, 25, 32);
INSERT INTO public.games VALUES (81, 25, 45);
INSERT INTO public.games VALUES (82, 25, 920);
INSERT INTO public.games VALUES (83, 27, 539);
INSERT INTO public.games VALUES (84, 28, 324);
INSERT INTO public.games VALUES (85, 28, 461);
INSERT INTO public.games VALUES (86, 27, 472);
INSERT INTO public.games VALUES (87, 27, 988);
INSERT INTO public.games VALUES (88, 27, 167);
INSERT INTO public.games VALUES (89, 29, 455);
INSERT INTO public.games VALUES (90, 29, 748);
INSERT INTO public.games VALUES (91, 30, 260);
INSERT INTO public.games VALUES (92, 30, 692);
INSERT INTO public.games VALUES (93, 29, 793);
INSERT INTO public.games VALUES (94, 29, 913);
INSERT INTO public.games VALUES (95, 29, 747);
INSERT INTO public.games VALUES (96, 2, 10);
INSERT INTO public.games VALUES (97, 31, 855);
INSERT INTO public.games VALUES (98, 32, 817);
INSERT INTO public.games VALUES (99, 32, 531);
INSERT INTO public.games VALUES (100, 31, 799);
INSERT INTO public.games VALUES (101, 31, 342);
INSERT INTO public.games VALUES (102, 31, 986);
INSERT INTO public.games VALUES (103, 33, 388);
INSERT INTO public.games VALUES (104, 33, 622);
INSERT INTO public.games VALUES (105, 34, 287);
INSERT INTO public.games VALUES (106, 34, 805);
INSERT INTO public.games VALUES (107, 33, 467);
INSERT INTO public.games VALUES (108, 33, 310);
INSERT INTO public.games VALUES (109, 33, 902);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'thanh', 0);
INSERT INTO public.users VALUES (2, 'dat', 0);
INSERT INTO public.users VALUES (3, 'user_1689947966665', 0);
INSERT INTO public.users VALUES (4, 'user_1689947966664', 0);
INSERT INTO public.users VALUES (5, 'user_1689947984407', 0);
INSERT INTO public.users VALUES (6, 'user_1689947984406', 0);
INSERT INTO public.users VALUES (7, 'user_1689948037157', 0);
INSERT INTO public.users VALUES (8, 'user_1689948037156', 0);
INSERT INTO public.users VALUES (9, 'user_1689948113780', 0);
INSERT INTO public.users VALUES (10, 'user_1689948113779', 0);
INSERT INTO public.users VALUES (11, 'user_1689948147273', 0);
INSERT INTO public.users VALUES (12, 'user_1689948147272', 0);
INSERT INTO public.users VALUES (13, 'user_1689948184675', 0);
INSERT INTO public.users VALUES (14, 'user_1689948184674', 0);
INSERT INTO public.users VALUES (15, 'user_1689948197873', 0);
INSERT INTO public.users VALUES (16, 'user_1689948197872', 0);
INSERT INTO public.users VALUES (17, 'user_1689948262228', 0);
INSERT INTO public.users VALUES (18, 'user_1689948262227', 0);
INSERT INTO public.users VALUES (19, 'user_1689948278281', 0);
INSERT INTO public.users VALUES (20, 'user_1689948278280', 0);
INSERT INTO public.users VALUES (21, 'user_1689948313435', 0);
INSERT INTO public.users VALUES (22, 'user_1689948313434', 0);
INSERT INTO public.users VALUES (23, 'user_1689948356844', 0);
INSERT INTO public.users VALUES (24, 'user_1689948356843', 0);
INSERT INTO public.users VALUES (25, 'user_1689948396122', 0);
INSERT INTO public.users VALUES (26, 'user_1689948396121', 0);
INSERT INTO public.users VALUES (27, 'user_1689948435519', 0);
INSERT INTO public.users VALUES (28, 'user_1689948435518', 0);
INSERT INTO public.users VALUES (29, 'user_1689948490122', 0);
INSERT INTO public.users VALUES (30, 'user_1689948490121', 0);
INSERT INTO public.users VALUES (31, 'user_1689948549109', 0);
INSERT INTO public.users VALUES (32, 'user_1689948549108', 0);
INSERT INTO public.users VALUES (33, 'user_1689948580283', 0);
INSERT INTO public.users VALUES (34, 'user_1689948580282', 0);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 109, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

