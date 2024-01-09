--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    year_of_discovery integer,
    apparent_magnitude numeric,
    distance_from_earth_in_lightyears numeric,
    type text,
    description text,
    visible_to_naked_eye boolean,
    visible_with_telescope boolean
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    year_of_discovery integer,
    apparent_magnitude numeric,
    distance_from_earth_in_lightyears numeric,
    type text,
    description text,
    visible_to_naked_eye boolean,
    visible_with_telescope boolean,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    year_of_discovery integer,
    apparent_magnitude numeric,
    distance_from_earth_in_lightyears numeric,
    type text,
    description text,
    visible_to_naked_eye boolean,
    visible_with_telescope boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    year_of_discovery integer,
    apparent_magnitude numeric,
    distance_from_earth_in_lightyears numeric,
    type text,
    description text,
    visible_to_naked_eye boolean,
    visible_with_telescope boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: supernova; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supernova (
    supernova_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    year_of_discovery integer,
    apparent_magnitude numeric,
    distance_from_earth_in_lightyears numeric,
    type text,
    description text,
    visible_to_naked_eye boolean,
    visible_with_telescope boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.supernova OWNER TO freecodecamp;

--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supernova_supernova_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supernova_supernova_id_seq OWNER TO freecodecamp;

--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supernova_supernova_id_seq OWNED BY public.supernova.supernova_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: supernova supernova_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova ALTER COLUMN supernova_id SET DEFAULT nextval('public.supernova_supernova_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13610, 1610, NULL, 26000, 'Spiral', 'The Milky Way[c] is the galaxy that includes the Solar System, with the name describing the galaxy''s appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye. The term Milky Way is a translation of the Latin via lactea, from the Greek γαλαξίας κύκλος (galaxías kýklos), meaning "milky circle".[26][27] From Earth, the Milky Way appears as a band because its disk-shaped structure is viewed from within. Galileo Galilei first resolved the band of light into individual stars with his telescope in 1610.   (source: Wikipedia)', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10010, 1612, 3.4, 2537000, 'Spiral', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way. It was originally named the Andromeda Nebula and is cataloged as Messier 31, M31, and NGC 224. Andromeda has a diameter of about 46.56 kiloparsecs (152,000 light-years)[8] and is approximately 765 kpc (2.5 million light-years) from Earth. The Milky Way and Andromeda galaxies are expected to collide in around 4–5 billion years,[14] merging to potentially form a giant elliptical galaxy[15] or a large lenticular galaxy.[16]  (source: Wikipedia)', true, true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87 (M87)', 13240, 1781, 9.6, 53490000, 'Elliptical', 'Messier 87 (also known as Virgo A or NGC 4486, generally abbreviated to M87) is a supergiant elliptical galaxy in the constellation Virgo that contains several trillion stars. One of the largest and most massive galaxies in the local universe,[b] it has a large population of globular clusters—about 15,000 compared with the 150–200 orbiting the Milky Way—and a jet of energetic plasma that originates at the core and extends at least 1,500 parsecs (4,900 light-years), traveling at a relativistic speed. It is one of the brightest radio sources in the sky and a popular target for both amateur and professional astronomers.  (source: Wikipedia)', false, true);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud (LMC)', 11010, 1519, 0.9, 158200, 'Irregular', 'The Large Magellanic Cloud (LMC) is a satellite galaxy of the Milky Way.[7] At a distance of around 50 kiloparsecs (163,000 light-years),[2][8][9][10] the LMC is the second- or third-closest galaxy to the Milky Way, after the Sagittarius Dwarf Spheroidal (c. 16 kiloparsecs (52,000 light-years) away) and the possible dwarf irregular galaxy called the Canis Major Overdensity.  The LMC is classified as a Magellanic spiral.[12] It contains a stellar bar that is geometrically off center, suggesting that it was a barred dwarf spiral galaxy before its spiral arms were disrupted, likely by tidal interactions from the Small Magellanic Cloud (SMC) and the Milky Way''s gravity.[13]  (source: Wikipedia)', true, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy (M104)', 13250, 1781, 8, 29350000, 'Spiral', 'The Sombrero Galaxy (also known as Messier Object 104, M104 or NGC 4594) is a peculiar galaxy of unclear classification[5] in the constellation borders of Virgo and Corvus, being about 9.55 megaparsecs (31.1 million light-years)[2] from the Milky Way galaxy. It is a member of the Virgo II Groups, a series of galaxies and galaxy clusters strung out from the southern edge of the Virgo Supercluster.[6] It has an isophotal diameter of approximately 29.09 to 32.32 kiloparsecs (94,900 to 105,000 light-years),[1] making it slightly bigger in size than the Milky Way. It has a bright nucleus, an unusually large central bulge, and a prominent dust lane in its outer disk, which is viewed almost edge-on. The dark dust lane and the bulge give it the appearance of a sombrero hat (thus the name). Astronomers initially thought the halo was small and light, indicative of a spiral galaxy; but the Spitzer Space Telescope found that the dust ring was larger and more massive than previously thought, indicative of a giant elliptical galaxy.[7]  (source: Wikipedia)', false, true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy (M101)', NULL, 1781, 7.9, 21000000, 'Spiral', 'The Pinwheel Galaxy (also known as Messier 101, M101 or NGC 5457) is a face-on spiral galaxy 21 million light-years (6.4 megaparsecs)[5] away from Earth in the constellation Ursa Major. It was discovered by Pierre Méchain in 1781[a] and was communicated that year to Charles Messier, who verified its position for inclusion in the Messier Catalogue as one of its final entries.  (source: Wikipedia)', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4530, NULL, -12.74, 0.000000040631112, 'Planetary-mass moon', 'The body of the Moon is differentiated and terrestrial, with no significant hydrosphere, atmosphere, or magnetic field. The lunar surface is covered in lunar dust and marked by mountains, impact craters, their ejecta, ray-like streaks and, mostly on the near side of the Moon, by dark maria ("seas"), which are plains of cooled magma.  (source: Wikipedia)', true, true, 3);
INSERT INTO public.moon VALUES (2, 'Ganymede', 4503, 1610, 4.38, 0.000066411362402, 'Planetary-mass moon', 'Ganymede is composed of silicate rock and water in approximately equal proportions. It is a fully differentiated body with an iron-rich, liquid core, and an internal ocean that potentially contains more water than all of Earth''s oceans combined.[18][19][20][21] Its surface is composed of two main types of terrain.  The first of the two main surface types comprises the lighter regions which are generally crosscut by extensive grooves and ridges, and date from slightly less than 4 billion years ago. They cover about two thirds of Ganymede. The cause of the light terrain''s disrupted geology is not fully known, but it is speculated that this may be the result of tectonic activity due to tidal heating. Next are the dark regions that cover about a third of Ganymede. These dark regions are saturated with impact craters and are dated to four billion years ago.[9]  (source: Wikipedia)', true, true, 5);
INSERT INTO public.moon VALUES (3, 'Titan', 550, 1655, 8.2, 0.000151, 'Planetary-mass moon', 'Titan is primarily composed of ice and rocky material, which is likely differentiated into a rocky core surrounded by various layers of ice, including a crust of ice Ih and a subsurface layer of ammonia-rich liquid water.[17] The atmosphere of Titan is largely nitrogen; minor components lead to the formation of methane and ethane clouds and heavy organonitrogen haze. The climate—including wind and rain—creates surface features similar to those of Earth, such as dunes, rivers, lakes, seas (probably of liquid methane and ethane), and deltas, and is dominated by seasonal weather patterns as on Earth. With its liquids (both surface and subsurface) and robust nitrogen atmosphere, Titan''s methane cycle bears a striking similarity to Earth''s water cycle, albeit at the much lower temperature of about 94 K (−179 °C; −290 °F). Due to these factors, Titan has been described as the most Earth-like celestial object in the Solar System.[18] (source: Wikipedia)', false, true, 6);
INSERT INTO public.moon VALUES (4, 'Callisto', 4503, 1610, 5.65, 0.000066411362402, 'Planetary-mass moon', 'The surface of Callisto is the oldest and most heavily cratered object in the Solar System.[10] Its surface is completely covered with impact craters.[11] It does not show any signatures of subsurface processes such as plate tectonics or volcanism, with no signs that geological activity in general has ever occurred, and is thought to have evolved predominantly under the influence of impacts.[12] Prominent surface features include multi-ring structures, variously shaped impact craters, and chains of craters (catenae) and associated scarps, ridges and deposits.[12] At a small scale, the surface is varied and made up of small, sparkly frost deposits at the tips of high spots, surrounded by a low-lying, smooth blanket of dark material.[6] This is thought to result from the sublimation-driven degradation of small landforms, which is supported by the general deficit of small impact craters and the presence of numerous small knobs, considered to be their remnants.[13]  (source: Wikipedia)', true, true, 5);
INSERT INTO public.moon VALUES (5, 'Io', 4500, 1610, 5.02, 0.000066411362402, 'Planetary-mass moon', 'With over 400 active volcanoes, Io is the most geologically active object in the Solar System.[11][12][13] This extreme geologic activity is the result of tidal heating from friction generated within Io''s interior as it is pulled between Jupiter and the other Galilean moons—Europa, Ganymede and Callisto. Several volcanoes produce plumes of sulfur and sulfur dioxide that climb as high as 500 km (300 mi) above the surface. Io''s surface is also dotted with more than 100 mountains that have been uplifted by extensive compression at the base of Io''s silicate crust. Some of these peaks are taller than Mount Everest, the highest point on Earth''s surface.[14] Unlike most moons in the outer Solar System, which are mostly composed of water ice, Io is primarily composed of silicate rock surrounding a molten iron or iron sulfide core. Most of Io''s surface is composed of extensive plains with a frosty coating of sulfur and sulfur dioxide. (source: Wikipedia)', true, true, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 4503, 1610, 5.29, 0.000066411362402, 'Planetary-mass moon', 'Slightly smaller than Earth''s Moon, Europa is made of silicate rock and has a water-ice crust[15] and probably an iron–nickel core. It has a very thin atmosphere, composed primarily of oxygen. Its white-beige surface is striated by light tan cracks and streaks, but craters are relatively few.  (source: Wikipedia)', true, true, 5);
INSERT INTO public.moon VALUES (7, 'Triton', 6, 1846, 13.47, 0.0004781766073044, 'Planetary-mass moon', 'Triton is one of the few moons in the Solar System known to be geologically active (the others being Jupiter''s Io and Europa, and Saturn''s Enceladus and Titan) as well as suspected to contain an internal, active layer of liquid ocean, similar to the aforementioned moons. As a consequence, its surface is relatively young, with few obvious impact craters. Intricate cryovolcanic and tectonic terrains suggest a complex geological history. Triton has a surface of mostly frozen nitrogen, a mostly water-ice crust,[14] an icy mantle and a substantial core of rock and metal. The core makes up two-thirds of its total mass. The mean density is 2.061 g/cm3,[6] reflecting a composition of approximately 15–35% water ice.[7] (source: Wikipedia)', false, true, 8);
INSERT INTO public.moon VALUES (8, 'Titania', 4600, 1787, 13.9, 0.0002878213271049, 'Planetary-mass moon', 'Titania consists of approximately equal amounts of ice and rock, and is probably differentiated into a rocky core and an icy mantle. A layer of liquid water may be present at the core–mantle boundary. Its surface, which is relatively dark and slightly red in color, appears to have been shaped by both impacts and endogenic processes. It is covered with numerous impact craters reaching up to 326 kilometres (203 mi) in diameter, but is less heavily cratered than Oberon, outermost of the five large moons of Uranus. It may have undergone an early endogenic resurfacing event which obliterated its older, heavily cratered surface. (source: Wikipedia)', false, true, 7);
INSERT INTO public.moon VALUES (9, 'Rhea', 4, 1672, 10, 0.0001344505060879, 'Planetary-mass moon', 'Rhea is an icy body with a density of about 1.236 g/cm3. This low density indicates that it is made of ~25% rock (density ~3.25 g/cm3) and ~75% water ice (density ~0.93 g/cm3).  Rhea has a rather typical heavily cratered surface,[21] with the exceptions of a few large Dione-type chasmata or fractures (wispy terrain) on the trailing hemisphere (the side facing away from the direction of motion along Rhea''s orbit)[22] and a very faint "line" of material at Rhea''s equator that may have been deposited by material deorbiting from its rings.[23] (source: Wikipedia)', false, true, 6);
INSERT INTO public.moon VALUES (10, 'Oberon', 4600, 1787, 14.1, 0.0003013086577471, 'Planetary-mass moon', 'Oberon likely formed from the accretion disk that surrounded Uranus just after the planet''s formation. The moon consists of approximately equal amounts of ice and rock, and is probably differentiated into a rocky core and an icy mantle. A layer of liquid water may be present at the boundary between the mantle and the core. The surface of Oberon, which is dark and slightly red in color, appears to have been primarily shaped by asteroid and comet impacts. It is covered by numerous impact craters reaching 210 km in diameter. Oberon possesses a system of chasmata (graben or scarps) formed during crustal extension as a result of the expansion of its interior during its early evolution. (source: Wikipedia)', false, true, 7);
INSERT INTO public.moon VALUES (11, 'Iapetus', 100, 1671, 10.2, 0.0001344505060879, 'Planetary-mass moon', 'A relatively low-density body made up mostly of ice, Iapetus is home to several distinctive and unusual features, such as a striking difference in coloration between its leading hemisphere, which is dark, and its trailing hemisphere, which is bright, as well as a massive equatorial ridge running three-quarters of the way around the moon. (source: Wikipedia)', false, true, 6);
INSERT INTO public.moon VALUES (12, 'Charon', 4500, 1978, 16.8, 0.000624, 'Planetary-mass moon', 'With half the diameter and one eighth the mass of Pluto, Charon is a very large moon in comparison to its parent body. Its gravitational influence is such that the barycenter of the Plutonian system lies outside Pluto, and the two bodies are tidally locked to each other.[18] The reddish-brown cap of the north pole of Charon is composed of tholins, organic macromolecules that may be essential ingredients of life. These tholins were produced from methane, nitrogen and related gases which may have been released by cryovolcanic eruptions on the moon,[19][20] or may have been transferred over 19,000 km (12,000 mi) from the atmosphere of Pluto to the orbiting moon.[21] (source: Wikipedia)', false, true, 9);
INSERT INTO public.moon VALUES (13, 'Umbriel', 4600, 1851, 15.1, 0.0003013086577471, 'Planetary-mass moon', 'Umbriel consists mainly of ice with a substantial fraction of rock, and may be differentiated into a rocky core and an icy mantle. The surface is the darkest among Uranian moons, and appears to have been shaped primarily by impacts. However, the presence of canyons suggests early endogenic processes, and the moon may have undergone an early endogenically driven resurfacing event that obliterated its older surface. (source: Wikipedia)', false, true, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 100, 1851, 14.8, 0.0003013086577471, 'Planetary-mass moon', 'Like all of Uranus''s moons, Ariel probably formed from an accretion disc that surrounded the planet shortly after its formation, and, like other large moons, it is likely differentiated, with an inner core of rock surrounded by a mantle of ice. Ariel has a complex surface consisting of extensive cratered terrain cross-cut by a system of scarps, canyons, and ridges. The surface shows signs of more recent geological activity than other Uranian moons, most likely due to tidal heating. (source: Wikipedia)', false, true, 7);
INSERT INTO public.moon VALUES (15, 'Dione', 4000, 1684, 10.4, 0.0001344505060879, 'Planetary-mass moon', 'Its trailing hemisphere is marked by large ice cliffs called chasmata and is also darkened compared to the leading hemisphere. Based on its density, Dione’s interior is likely a combination of silicate rock and water ice in nearly equal parts by mass.  (source: Wikipedia)', false, true, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 4560, 1684, 10.2, 0.0001344505060879, 'Planetary-mass moon', 'Tethys has a low density of 0.98 g/cm3, the lowest of all the major moons in the Solar System, indicating that it is made of water ice with just a small fraction of rock.  A small amount of an unidentified dark material is present as well. The surface of Tethys is very bright, being the second-brightest of the moons of Saturn after Enceladus, and neutral in color. (source: Wikipedia)', false, true, 6);
INSERT INTO public.moon VALUES (17, 'Enceladus', 100, 1789, 11.7, 0.0001344505060879, 'Planetary-mass moon', 'It is mostly covered by fresh, clean ice, making it one of the most reflective bodies of the Solar System. Despite its small size, Enceladus has a wide range of surface features, ranging from old, heavily cratered regions to young, tectonically deformed terrain. (source: Wikipedia)', false, true, 6);
INSERT INTO public.moon VALUES (18, 'Miranda', 3000, 1948, 15.8, 0.0003013086577471, 'Planetary-mass moon', 'Miranda probably formed from an accretion disc that surrounded the planet shortly after its formation, and, like other large moons, it is likely differentiated, with an inner core of rock surrounded by a mantle of ice. Miranda has one of the most extreme and varied topographies of any object in the Solar System, including Verona Rupes, a 20-kilometer-high scarp that is the highest cliff in the Solar System,[10][11] and chevron-shaped tectonic features called coronae. (source: Wikipedia)', false, true, 7);
INSERT INTO public.moon VALUES (19, 'Mimas', 4100, 1789, 12.9, 0.0001344505060879, 'Planetary-mass moon', 'The surface area of Mimas is slightly less than the land area of Spain or California. The low density of Mimas, 1.15 g/cm3, indicates that it is composed mostly of water ice with only a small amount of rock. As a result of the tidal forces acting on it, Mimas is noticeably oblate; its longest axis is about 10% longer than the shortest. The ellipsoidal shape of Mimas is especially noticeable in some recent images from the Cassini probe. Mimas''s most distinctive feature is a giant impact crater 139 km (86 mi) across, named Herschel after the discoverer of Mimas. (source: Wikipedia)', false, true, 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 4600, 1848, 14.1, 0.0001344505060879, 'Planetary-mass moon', ' It is distinguished by its irregular shape, its chaotic rotation, and its unexplained sponge-like appearance. It was the first non-round moon to be discovered. Like most of Saturn''s moons, Hyperion''s low density indicates that it is composed largely of water ice with only a small amount of rock. It is thought that Hyperion may be similar to a loosely accreted pile of rubble in its physical composition.  (source: Wikipedia)', false, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4503, NULL, 0.23, 0.000014375211343, 'Terrestrial planet', 'Mercury is the first planet from the Sun and the smallest in the Solar System. It is a terrestrial planet with a heavily cratered surface due to overlapping impact events. These features are well preserved since the planet has no geological activity and an extremely tenuous atmosphere called an exosphere. Despite being the smallest planet in the Solar System with a mean diameter of 4,880 km (3,030 mi), 38% of that of Earth, Mercury is dense enough to have roughly the same surface gravity as Mars. Mercury has a dynamic magnetic field with a strength about 1% of that of Earth''s and has no natural satellites.  (source: Wikipedia)', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4503, NULL, -4.14, 0.000019318804243, 'Terrestrial planet', 'Venus is the second planet from the Sun. It is a rocky planet with the densest atmosphere of all the rocky bodies in the Solar System, and the only one with a mass and size that is close to that of its orbital neighbour Earth. Venus has a weak induced magnetosphere. The planet has an especially thick carbon dioxide atmosphere, which creates, together with its global sulfuric acid cloud cover, an extreme greenhouse effect. This results at the surface in a mean temperature of 737 K (464 °C; 867 °F) and a crushing pressure of 92 times that of Earth''s at sea level, turning the air into a supercritical fluid, while at cloudy altitudes of 50 km (30 mi) above the surface, the pressure, temperature and radiation are very much like at Earth''s surface.  (source: Wikipedia)', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4543, NULL, NULL, NULL, 'Terrestrial planet', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being a water world, the only one in the Solar System sustaining liquid surface water. Almost all of Earth''s water is contained in its global ocean, covering 70.8% of Earth''s crust. The remaining 29.2% of Earth''s crust is land, most of which is located in the form of continental landmasses within one hemisphere, Earth''s land hemisphere. Most of Earth''s land is somewhat humid and covered by vegetation, while large sheets of ice at Earth''s polar deserts retain more water than Earth''s groundwater, lakes, rivers and atmospheric water combined. Earth''s crust consists of slowly moving tectonic plates, which interact to produce mountain ranges, volcanoes, and earthquakes. Earth has a liquid outer core that generates a magnetosphere capable of deflecting most of the destructive solar winds and cosmic radiation. (source: Wikipedia)', NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4503, NULL, -2.91, 0.000038145046098, 'Terrestrial planet', 'Mars is the fourth planet and the furthest terrestrial planet from the Sun. The reddish color of its surface is due to finely grained iron(III) oxide dust in the soil, giving it the nickname "the Red Planet".[21][22] Mars''s radius is second smallest among the planets in the Solar System at 3,389.5 km (2,106 mi). The Martian dichotomy is visible on the surface: on average, the terrain on Mars''s northern hemisphere is flatter and lower than its southern hemisphere. Mars has a thin atmosphere made primarily of carbon dioxide, and two irregularly shaped natural satellites, Phobos and Deimos. (source: Wikipedia)', true, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4603, NULL, -2.2, 0.00007235276409, 'Gas giant', 'Jupiter was the first planet to form, and its inward migration during the primordial Solar System impacted much of the formation history of the other planets. Jupiter is primarily composed of hydrogen (90% by volume), followed by helium, which makes up a quarter of its mass and a tenth of its volume. The ongoing contraction of Jupiter''s interior generates more heat than the planet receives from the Sun. Its internal structure is believed to comprise an outer mantle of liquid metallic hydrogen, and a diffuse inner core of denser material. Because of its rapid rotation rate of 1 rotation per 10 hours, Jupiter''s shape is an oblate spheroid: it has a slight but noticeable bulge around the equator. The outer atmosphere is divided into a series of latitudinal bands, with turbulence and storms along their interacting boundaries. The most obvious result of this is the Great Red Spot, a giant storm which has been observed since 1831 and possibly earlier. (source: Wikipedia)', true, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4503, NULL, -0.24, 0.000151, 'Gas giant', 'Saturn''s interior is thought to be composed of a rocky core, surrounded by a deep layer of metallic hydrogen, an intermediate layer of liquid hydrogen and liquid helium, and finally, a gaseous outer layer. Saturn has a pale yellow hue due to ammonia crystals in its upper atmosphere. The planet has a prominent ring system, which is composed mainly of ice particles, with a smaller amount of rocky debris and dust. At least 146 moons[32] are known to orbit the planet, of which 63 are officially named; this does not include the hundreds of moonlets in its rings.  (source: Wikipedia)', true, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4503, 1781, 5.68, 0.0003013086577471, 'Ice giant', 'Uranus is the seventh planet from the Sun. It is a gaseous cyan-coloured ice giant. Most of the planet is made of water, ammonia, and methane in a supercritical phase of matter, which in astronomy is called ''ice'' or volatiles. The planet''s atmosphere has a complex layered cloud structure and has the lowest minimum temperature of 49 K (−224 °C; −371 °F) out of all the Solar System''s planets. It has a marked axial tilt of 82.23° with a retrograde rotation rate of 17 hours. This means that in an 84-Earth-year orbital period around the Sun, its poles get around 42 years of continuous sunlight, followed by 42 years of continuous darkness. Like the other giant planets, Uranus has a ring system, orbiting natural satellites and a magnetosphere. Its ring system is extremely dark, with only about 2% of the incoming light reflected, and contains the known 13 inner moons. (source: Wikipedia)', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4503, 1846, 7.78, 0.0004781766073044, 'Ice giant', 'Like the gas giants (Jupiter and Saturn), Neptune''s atmosphere is composed primarily of hydrogen and helium, along with traces of hydrocarbons and possibly nitrogen, but contains a higher proportion of ices such as water, ammonia and methane. Similar to Uranus, its interior is primarily composed of ices and rock;[20] both planets are normally considered "ice giants" to distinguish them.[21] Along with Rayleigh scattering, traces of methane in the outermost regions in part account for the planet''s blue appearance.[22] The blue colour is slightly more saturated than the one present on Uranus due to the thinner haze of Neptune''s more active atmosphere.[23][24][25] (source: Wikipedia)', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4503, 1930, 15.1, 0.000624, 'Dwarf planet', 'Pluto (minor-planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It is the ninth-largest and tenth-most-massive known object to directly orbit the Sun. It is the largest known trans-Neptunian object by volume, by a small margin, but is slightly less massive than Eris. Like other Kuiper belt objects, Pluto is made primarily of ice and rock and is much smaller than the inner planets. Pluto has only one sixth the mass of Earth''s moon, and one third its volume. (source: Wikipedia)', false, true, 1);
INSERT INTO public.planet VALUES (10, '51 Pegasi b / Dimidium', 6100, 1995, 5.49, 50, 'Gas giant', 'After its discovery, many teams confirmed the planet''s existence and obtained more observations of its properties. It was discovered that the planet orbits the star in around four days. It is much closer to it than Mercury is to the Sun,[1] moves at an orbital speed of 136 km/s (300,000 mph), yet has a minimum mass about half that of Jupiter (about 150 times that of the Earth). At the time, the presence of a huge world so close to its star was not compatible with theories of planet formation and was considered an anomaly. However, since then, numerous other "hot Jupiters" have been discovered[1] (such as 55 Cancri and τ Boötis), and astronomers are revising their theories of planet formation to account for them by studying orbital migration.[2] (source: Wikipedia)', true, true, 5);
INSERT INTO public.planet VALUES (11, 'Epsilon Eridani b', 600, 2000, 3.73, 10, 'Gas giant', 'Epsilon Eridani b is a gas giant exoplanet that orbits a K-type star. Its mass is 0.66 Jupiters, it takes 7.3 years to complete one orbit of its star, and is 3.53 AU from its star. Its discovery was announced in 2000. (source: NASA)', true, true, 6);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 4750, 2016, 11.13, 4.24, 'Super-Earth', 'Proxima Centauri b (or Proxima b[5]), sometimes referred to as Alpha Centauri Cb, is an exoplanet orbiting within the habitable zone of the red dwarf star Proxima Centauri, which is the closest star to the Sun and part of the larger triple star system Alpha Centauri. It is about 4.2 light-years (1.3 parsecs) from Earth in the constellation Centaurus, making it and Proxima d, along with the currently-disputed Proxima c, the closest known exoplanets to the Solar System. (source: Wikipedia)', false, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4603, NULL, -26.74, 0.000015812732477, 'G-type main-sequence star', 'The Sun is the star at the center of the Solar System. It is a massive, hot ball of plasma, inflated and heated by energy produced by nuclear fusion reactions at its core. Part of this internal energy is emitted from its surface as light, ultraviolet, and infrared radiation, providing most of the energy for life on Earth. (source: Wikipedia)', true, true, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 5500, 1689, 0.01, 4.367, 'G-type main-sequence star', 'Alpha Centauri (α Centauri, Alpha Cen, or α Cen) is a triple star system in the southern constellation of Centaurus. It consists of three stars: Rigil Kentaurus (Alpha Centauri A), Toliman (B) and Proxima Centauri (C).[13] Proxima Centauri is the closest star to the Sun at 4.2465 light-years (1.3020 pc).  Alpha Centauri A and B are Sun-like stars (Class G and K, respectively), and together form the binary star system Alpha Centauri AB.  (source: Wikipedia)', true, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B/ Toliman', 5500, 1689, 1.33, 4.37, 'K-type main-sequence star', 'Alpha Centauri (α Centauri, Alpha Cen, or α Cen) is a triple star system in the southern constellation of Centaurus. It consists of three stars: Rigil Kentaurus (Alpha Centauri A), Toliman (B) and Proxima Centauri (C).[13] Proxima Centauri is the closest star to the Sun at 4.2465 light-years (1.3020 pc).   Alpha Centauri A and B are Sun-like stars (Class G and K, respectively), and together form the binary star system Alpha Centauri AB.  (source: Wikipedia)', true, true, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4750, 1915, 11.05, 4.246, 'Red dwarf (Class M)', 'Proxima Centauri is a red dwarf star with a mass about 12.5% of the Sun''s mass (M☉), and average density about 33 times that of the Sun. Because of Proxima Centauri''s proximity to Earth, its angular diameter can be measured directly. Its actual diameter is about one-seventh (14%) the diameter of the Sun. Although it has a very low average luminosity, Proxima Centauri is a flare star that randomly undergoes dramatic increases in brightness because of magnetic activity.  (source: Wikipedia)', false, true, 1);
INSERT INTO public.star VALUES (5, '51 Pegasi/ Helvetios', 6100, 1995, 5.49, 50.91, 'Subgiant', 'It is generally considered to still be generating energy through the thermonuclear fusion of hydrogen at its core, but to be in a more evolved state than the Sun.[6] The effective temperature of the chromosphere is about 5,571 K (5,298 °C; 9,568 °F), giving 51 Pegasi the characteristic yellow hue of a G-type star.[16] It is estimated to be about 6.1 billion years old, somewhat older than the Sun, with a radius 24% larger and 11% more massive. The star has a higher proportion of elements other than hydrogen/helium compared to the Sun; a quantity astronomers term a star''s metallicity. Stars with higher metallicity such as this are more likely to host giant planets.[17] In 1996, astronomers Baliunas, Sokoloff, and Soon measured a rotational period of 37 days for 51 Pegasi.[18] (source: Wikipedia)', true, true, 1);
INSERT INTO public.star VALUES (6, 'Epsilon Eridani/ Ran', 600, 2000, 3.73, 10.47, 'K-type main-sequence star', 'The star is estimated to be less than a billion years old.[20] This relative youth gives Epsilon Eridani a higher level of magnetic activity than the Sun, with a stellar wind 30 times as strong. The star''s rotation period is 11.2 days at the equator. Epsilon Eridani is smaller and less massive than the Sun, and has a lower level of elements heavier than helium.[21] It is a main-sequence star of spectral class K2, with an effective temperature of about 5,000 K (8,500 °F), giving it an orange hue. It is a candidate member of the Ursa Major moving group of stars, which share a similar motion through the Milky Way, implying these stars shared a common origin in an open cluster. (source: Wikipedia)', true, true, 1);


--
-- Data for Name: supernova; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supernova VALUES (1, 'SN 1987A', NULL, 1987, 3, 170000, 'Type II Supernova', 'It was the first supernova that modern astronomers were able to study in great detail, and its observations have provided much insight into core-collapse supernovae. Four days after the event was recorded, the progenitor star was tentatively identified as Sanduleak −69 202 (Sk -69 202), a blue supergiant.[6] After the supernova faded, that identification was definitively confirmed by Sk −69 202 having disappeared. This was an unexpected identification, because models of high mass stellar evolution at the time did not predict that blue supergiants are susceptible to a supernova event.[citation needed] SN 1987A appears to be a core-collapse supernova, which should result in a neutron star given the size of the original star.[7]  (source: Wikipedia)', true, true, 4);
INSERT INTO public.supernova VALUES (2, 'SN 386', NULL, 386, 1.5, 14700, 'Type II Supernova', 'SN 386 is a probable transient astronomical event in the constellation Sagittarius, which appeared as a "guest star" that was reported by Chinese astronomers in 386 CE.[2] "Emperor Xiaowu of Jin, 11th year of the Taiyuan reign period, third month. There was a guest star in Nandou [LM8] that lasted until the 6th month (Jul 13 to Aug 10), when it disappeared" (Jin shu, Tianwen zhi, ch. 13; Song shu, Tianwen zhi, ch. 25 according to Xu, Pankenier, Jiang 2000[3]). Nandou, the Southern Dipper, is part of the constellation of Sagittarius. The only historical information is: Something flared up there and was visible for ~3 months. As this asterism is in or close to the bulge of the Milky Way, the object should have been bright (at least 2 mag) to be recognized against bright background of the clouds of the Milky Way.  (source: Wikipedia)', true, true, 1);
INSERT INTO public.supernova VALUES (3, 'SN 2023ixf', NULL, 2023, 10.8, 21000000, 'Type II-L Supernova', 'SN 2023ixf is a type II-L[7][8] (core collapse) supernova located in the Pinwheel Galaxy (M101). It was first observed on 19 May 2023 by Kōichi Itagaki and immediately classified as a type II supernova.[2] Initial magnitude at discovery was 14.9.[2]   The supernova is about 21 million light-years from Earth and is expected to have left behind either a neutron star or black hole based on current stellar evolution models. Before becoming a supernova, the progenitor star is believed to have been a supergiant with an absolute magnitude in the near-infrared (814nm) of MF814W = –4.66.[4] (source: Wikipedia)', false, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supernova_supernova_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: supernova supernova_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_name_key UNIQUE (name);


--
-- Name: supernova supernova_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_pkey PRIMARY KEY (supernova_id);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


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
-- Name: supernova supernova_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

