--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8
-- Dumped by pg_dump version 13.0

-- Started on 2022-03-01 06:33:34

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
-- TOC entry 202 (class 1259 OID 24577)
-- Name: appo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appo (
    id double precision DEFAULT 0 NOT NULL,
    conp character varying(150),
    dt timestamp without time zone,
    tm character varying(20),
    stat character varying(50),
    sub character varying(250),
    rem character varying(20)
);


ALTER TABLE public.appo OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24584)
-- Name: article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article (
    cla double precision DEFAULT 0 NOT NULL,
    topic character varying(150),
    rupon character varying(150),
    subtopic character varying(150),
    actnm character varying(250),
    sec character varying(150),
    author character varying(200),
    published character varying(200),
    synopsis text
);


ALTER TABLE public.article OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24593)
-- Name: billdet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.billdet (
    id double precision DEFAULT 0 NOT NULL,
    refno double precision DEFAULT 0,
    shortref character varying(50),
    billno double precision DEFAULT 0,
    memono character varying(100),
    date timestamp without time zone,
    type character varying(50),
    cat character varying(50),
    rate double precision DEFAULT 0,
    stat double precision DEFAULT 0,
    amounte double precision DEFAULT 0,
    amountr double precision DEFAULT 0,
    note character varying(250),
    chdd character varying(50),
    mode character varying(50),
    bank character varying(150),
    branch character varying(150),
    date1 character varying(20),
    name character varying(150),
    clid double precision DEFAULT 0,
    billed character varying(25),
    det character varying(200),
    tobill character varying(25)
);


ALTER TABLE public.billdet OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24613)
-- Name: billm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.billm (
    id double precision DEFAULT 0 NOT NULL,
    type character varying(100),
    cat character varying(50),
    amt double precision DEFAULT 0,
    note character varying(250)
);


ALTER TABLE public.billm OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24621)
-- Name: billmst; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.billmst (
    billno double precision DEFAULT 0 NOT NULL,
    billdt timestamp without time zone,
    billsdt character varying(20),
    billpaid character varying(20),
    refno double precision DEFAULT 0,
    clid double precision DEFAULT 0,
    shortref character varying(50),
    amte double precision DEFAULT 0,
    amtr double precision DEFAULT 0,
    words character varying(250)
);


ALTER TABLE public.billmst OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24635)
-- Name: billper; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.billper (
    aid double precision DEFAULT 0 NOT NULL,
    actype character varying(20),
    head character varying(150),
    date timestamp without time zone NOT NULL,
    bamt double precision DEFAULT 0,
    stat double precision DEFAULT 0,
    amt double precision DEFAULT 0,
    mode character varying(50),
    bank character varying(150),
    branch character varying(100),
    chdd character varying(50),
    date1 character varying(20),
    name character varying(150),
    add character varying(200),
    note character varying(250)
);


ALTER TABLE public.billper OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24648)
-- Name: casedet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.casedet (
    bno double precision DEFAULT 0 NOT NULL,
    cno character varying(150),
    year double precision DEFAULT 0,
    courtno character varying(25),
    ctitle character varying(200),
    ctitle1 character varying(200),
    typeid character varying(100),
    juriid character varying(100),
    courtid character varying(150),
    coram character varying(200),
    date timestamp without time zone,
    action character varying(50),
    dist character varying(100),
    aforid character varying(100),
    ddate character varying(20),
    clid double precision DEFAULT 0,
    name character varying(150),
    ref character varying(150),
    arec character varying(150),
    scoun character varying(150),
    orec character varying(150),
    notes text,
    lpros text,
    catid character varying(150),
    groupid character varying(150),
    subgroupid character varying(150),
    stageid character varying(100),
    statusid character varying(50),
    wsecid character varying(50),
    statute character varying(250),
    cit text,
    ulist character varying(25),
    asdt character varying(25),
    fee character varying(25)
);


ALTER TABLE public.casedet OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24665)
-- Name: caveat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caveat (
    id double precision DEFAULT 0 NOT NULL,
    no character varying(100),
    year double precision DEFAULT 0,
    courtid character varying(150),
    clid double precision DEFAULT 0,
    cvenm character varying(150),
    fdt timestamp without time zone,
    edt timestamp without time zone,
    ref character varying(150),
    note character varying(250),
    name character varying(150),
    asto character varying(150)
);


ALTER TABLE public.caveat OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24679)
-- Name: chember; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chember (
    chid double precision DEFAULT 0 NOT NULL,
    type character varying(25),
    clid double precision DEFAULT 0,
    name character varying(150),
    asto character varying(150),
    brief character varying(150),
    stat character varying(50),
    chtype character varying(150),
    chdt timestamp without time zone,
    chtime character varying(50),
    chwith character varying(250),
    cradto character varying(150),
    add character varying(200),
    crdet character varying(250),
    crsenddt timestamp without time zone,
    cradt character varying(20),
    crsmode character varying(150),
    cntype character varying(150),
    cnddt character varying(20),
    cnedt character varying(20),
    cndet character varying(250),
    fee character varying(25)
);


ALTER TABLE public.chember OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24691)
-- Name: citation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.citation (
    claw double precision DEFAULT 0 NOT NULL,
    court character varying(150),
    citation character varying(100),
    jdt timestamp without time zone,
    topic character varying(150),
    rupon character varying(150),
    subtopic character varying(150),
    bstrength character varying(50),
    actnm character varying(250),
    sec character varying(150),
    ctitle character varying(250),
    coram character varying(250),
    ratio text,
    oruled character varying(100),
    myjud character varying(25)
);


ALTER TABLE public.citation OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24703)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    clid double precision DEFAULT 0 NOT NULL,
    name character varying(150),
    cat character varying(50),
    comp character varying(150),
    desig character varying(150),
    mobile character varying(150),
    eml character varying(150),
    radd character varying(250),
    rph character varying(150),
    rfax character varying(150),
    oadd character varying(250),
    oph character varying(150),
    ofax character varying(150),
    oeml character varying(150),
    web character varying(150),
    city character varying(100),
    dist character varying(100),
    state character varying(100),
    country character varying(100),
    sname character varying(100),
    bday character varying(20),
    an character varying(20),
    prac character varying(150),
    area character varying(150),
    remme character varying(50),
    note character varying(250)
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24718)
-- Name: diary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diary (
    id double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    appid double precision DEFAULT 0,
    cno character varying(150),
    appno character varying(150),
    ct character varying(150),
    ct1 character varying(150),
    court character varying(150),
    coram character varying(150),
    date timestamp without time zone,
    crtno character varying(25),
    "time" character varying(25),
    item character varying(25)
);


ALTER TABLE public.diary OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24732)
-- Name: docs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docs (
    docid double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    refno character varying(100),
    name character varying(200),
    note character varying(200)
);


ALTER TABLE public.docs OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24743)
-- Name: docsimp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docsimp (
    docid double precision DEFAULT 0 NOT NULL,
    refno character varying(100),
    name character varying(200),
    note character varying(200)
);


ALTER TABLE public.docsimp OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24753)
-- Name: docsmisc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docsmisc (
    docid double precision DEFAULT 0 NOT NULL,
    refno character varying(100),
    name character varying(200),
    note character varying(200)
);


ALTER TABLE public.docsmisc OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24763)
-- Name: docstype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docstype (
    docid double precision DEFAULT 0 NOT NULL,
    refno character varying(200)
);


ALTER TABLE public.docstype OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24770)
-- Name: filing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filing (
    fid double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    type character varying(150),
    acom character varying(250),
    fdt timestamp without time zone,
    no character varying(50)
);


ALTER TABLE public.filing OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24779)
-- Name: ifiling; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ifiling (
    fid double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    appno double precision DEFAULT 0,
    type character varying(150),
    acom character varying(250),
    fdt timestamp without time zone,
    no character varying(50)
);


ALTER TABLE public.ifiling OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24790)
-- Name: introl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.introl (
    id double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    iappno character varying(150),
    year double precision DEFAULT 0,
    court character varying(50),
    iadate timestamp without time zone,
    action character varying(50),
    didate character varying(20),
    ittype character varying(150),
    iclid character varying(150),
    iappstat character varying(50),
    icoram character varying(150),
    note text,
    lprop text,
    statute character varying(250),
    cit text
);


ALTER TABLE public.introl OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24803)
-- Name: iopassed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.iopassed (
    id double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    appno double precision DEFAULT 0,
    orderdt timestamp without time zone,
    coram character varying(150),
    note text,
    ccopy character varying(25),
    fpled character varying(20),
    corder character varying(20),
    ndate character varying(20),
    exdate character varying(20)
);


ALTER TABLE public.iopassed OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24817)
-- Name: ipleading; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ipleading (
    id double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    appno double precision DEFAULT 0,
    pltypeid character varying(150),
    draft character varying(20),
    date character varying(20),
    pdet character varying(250)
);


ALTER TABLE public.ipleading OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24827)
-- Name: journal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.journal (
    id double precision DEFAULT 0 NOT NULL,
    jname character varying(150),
    volume character varying(50),
    part character varying(50),
    date timestamp without time zone,
    rdate timestamp without time zone,
    pages character varying(50)
);


ALTER TABLE public.journal OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24834)
-- Name: lend; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lend (
    id double precision DEFAULT 0 NOT NULL,
    bname character varying(200),
    name character varying(150),
    type character varying(25),
    rdt timestamp without time zone
);


ALTER TABLE public.lend OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24841)
-- Name: library; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.library (
    id double precision DEFAULT 0 NOT NULL,
    type character varying(150),
    topic character varying(150),
    subtopic character varying(150),
    title character varying(250),
    author character varying(150),
    publisher character varying(150),
    year double precision DEFAULT 0,
    edition character varying(50),
    rack character varying(50),
    soldby character varying(150),
    soldon character varying(20),
    price double precision DEFAULT 0,
    det text,
    discard character varying(10)
);


ALTER TABLE public.library OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24853)
-- Name: login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.login (
    password character varying(50) NOT NULL,
    billingpass character varying(50)
);


ALTER TABLE public.login OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 24858)
-- Name: opassed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opassed (
    id double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    orderdt timestamp without time zone,
    coram character varying(150),
    note text,
    ccopy character varying(25),
    fpled character varying(20),
    corder character varying(20),
    ndate character varying(20),
    exdate character varying(20)
);


ALTER TABLE public.opassed OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24870)
-- Name: path; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.path (
    name character varying(50) NOT NULL,
    path character varying(200)
);


ALTER TABLE public.path OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 24875)
-- Name: pleading; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pleading (
    id double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    pltypeid character varying(150),
    draft character varying(20),
    date character varying(20),
    pdet character varying(250)
);


ALTER TABLE public.pleading OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 24883)
-- Name: proposition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proposition (
    clp double precision DEFAULT 0 NOT NULL,
    topic character varying(150),
    rupon character varying(150),
    subtopic character varying(150),
    actnm character varying(250),
    sec character varying(150),
    proposit text,
    reference text,
    principle text
);


ALTER TABLE public.proposition OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 24893)
-- Name: regist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regist (
    name character varying(150) NOT NULL,
    add character varying(200),
    phone character varying(150),
    refno double precision DEFAULT 0,
    pan character varying(150),
    bank character varying(150),
    note character varying(250)
);


ALTER TABLE public.regist OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 24903)
-- Name: reminder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reminder (
    id double precision DEFAULT 0 NOT NULL,
    date timestamp without time zone,
    subject character varying(250),
    remdate timestamp without time zone,
    refno character varying(25),
    delable character varying(25) DEFAULT 'Y'::character varying
);


ALTER TABLE public.reminder OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 24913)
-- Name: rep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rep (
    id double precision DEFAULT 0 NOT NULL
);


ALTER TABLE public.rep OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 24919)
-- Name: rep1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rep1 (
    id double precision DEFAULT 0 NOT NULL,
    client character varying(150)
);


ALTER TABLE public.rep1 OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 24925)
-- Name: repappo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repappo (
    id double precision DEFAULT 0 NOT NULL,
    name character varying(150),
    date timestamp without time zone,
    det character varying(250),
    "time" character varying(25),
    stat character varying(50)
);


ALTER TABLE public.repappo OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 24931)
-- Name: repcase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repcase (
    bno double precision DEFAULT 0 NOT NULL,
    date timestamp without time zone,
    note text
);


ALTER TABLE public.repcase OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 24940)
-- Name: repcit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repcit (
    id double precision DEFAULT 0 NOT NULL,
    note text
);


ALTER TABLE public.repcit OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 24949)
-- Name: repdiary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repdiary (
    id double precision DEFAULT 0 NOT NULL,
    bno double precision DEFAULT 0,
    appno character varying(50),
    date timestamp without time zone,
    court character varying(150),
    coram character varying(150),
    courtno character varying(50),
    "time" character varying(25),
    item character varying(25)
);


ALTER TABLE public.repdiary OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 24957)
-- Name: replend; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.replend (
    id double precision DEFAULT 0 NOT NULL,
    type character varying(20),
    date timestamp without time zone,
    det character varying(250)
);


ALTER TABLE public.replend OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 24963)
-- Name: reprem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reprem (
    id double precision DEFAULT 0 NOT NULL,
    date timestamp without time zone,
    subject character varying(250)
);


ALTER TABLE public.reprem OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 24969)
-- Name: reptask; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reptask (
    id double precision DEFAULT 0 NOT NULL,
    date timestamp without time zone,
    type character varying(250),
    det character varying(250),
    stat character varying(50),
    assto character varying(150)
);


ALTER TABLE public.reptask OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 24978)
-- Name: sstopic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sstopic (
    id double precision DEFAULT 0 NOT NULL,
    topicid double precision DEFAULT 0,
    stopicid double precision DEFAULT 0,
    subsubtopic character varying(150)
);


ALTER TABLE public.sstopic OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 24988)
-- Name: statute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statute (
    statid double precision DEFAULT 0 NOT NULL,
    actno character varying(10),
    actyr character varying(4),
    stat character varying(150),
    actnm character varying(250),
    status character varying(150),
    type character varying(150),
    damen text,
    dstat text
);


ALTER TABLE public.statute OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 24998)
-- Name: stopic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stopic (
    id double precision DEFAULT 0 NOT NULL,
    topicid double precision DEFAULT 0,
    subtopic character varying(150)
);


ALTER TABLE public.stopic OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 25006)
-- Name: task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task (
    id double precision DEFAULT 0 NOT NULL,
    type character varying(250),
    stat character varying(50),
    dt timestamp without time zone,
    assto character varying(150),
    sub character varying(250),
    rem character varying(25)
);


ALTER TABLE public.task OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 25016)
-- Name: topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topic (
    topicid double precision DEFAULT 0 NOT NULL,
    det character varying(150)
);


ALTER TABLE public.topic OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 25023)
-- Name: tour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tour (
    id double precision DEFAULT 0 NOT NULL,
    frdt timestamp without time zone,
    todt timestamp without time zone,
    place character varying(150),
    purpose character varying(250)
);


ALTER TABLE public.tour OWNER TO postgres;

--
-- TOC entry 3256 (class 0 OID 24577)
-- Dependencies: 202
-- Data for Name: appo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.appo (id, conp, dt, tm, stat, sub, rem) VALUES (1, '', '2006-09-12 00:00:00', '7:00 PM', 'COMPLETED', 'Conference with Mr. Aniruddha Das-98300-15894, 24182493, (A.Das) 2477-6884, 2101-3123 (Amit Dutta)', 'N');
INSERT INTO public.appo (id, conp, dt, tm, stat, sub, rem) VALUES (2, 'Doordarshan', '2007-07-17 00:00:00', '7:00 PM', 'CONFIRMED', 'TV Show-Aaiin O Adalat--Malabi Gupta-94330-32288, Col. S.R. Banerjee-98301-05987', 'N');
INSERT INTO public.appo (id, conp, dt, tm, stat, sub, rem) VALUES (3, '', '2007-09-08 00:00:00', '10:30 AM', 'CONFIRMED', 'Arbitration-Indian Airlines', 'N');
INSERT INTO public.appo (id, conp, dt, tm, stat, sub, rem) VALUES (4, '', '2007-09-28 00:00:00', '5:30 PM', 'CONFIRMED', 'Arbitration-Indian Airlines', 'N');
INSERT INTO public.appo (id, conp, dt, tm, stat, sub, rem) VALUES (5, '', '2008-01-25 00:00:00', '5:30 PM', 'CONFIRMED', 'Arbitration-Indian Airlines', 'N');
INSERT INTO public.appo (id, conp, dt, tm, stat, sub, rem) VALUES (6, 'Sayantan Mukherjee', '2008-11-27 00:00:00', '5:00 PM', 'CONFIRMED', 'Marriage', 'N');


--
-- TOC entry 3257 (class 0 OID 24584)
-- Dependencies: 203
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.article (cla, topic, rupon, subtopic, actnm, sec, author, published, synopsis) VALUES (1, 'General Legal', 'Legal Essays', '', '', '', 'Louis E. Wolcher', 'Internet', 'Jurisprudential approach to Legal languages');
INSERT INTO public.article (cla, topic, rupon, subtopic, actnm, sec, author, published, synopsis) VALUES (2, 'General Legal', 'Legal Essays', '', '', '', 'Froomkin', 'Internet', 'Guide to Legal Writing');
INSERT INTO public.article (cla, topic, rupon, subtopic, actnm, sec, author, published, synopsis) VALUES (3, 'General Legal', 'Legal Essays', '', '', '', '', 'Internet', 'Judicial Data Security');
INSERT INTO public.article (cla, topic, rupon, subtopic, actnm, sec, author, published, synopsis) VALUES (4, 'General Legal', '', '', '', '', '', 'Internet', 'Resolutions taken in the Conference of Chief Justices of different High Courts in India');
INSERT INTO public.article (cla, topic, rupon, subtopic, actnm, sec, author, published, synopsis) VALUES (5, 'General Legal', '', '', '', '', '', 'Internet', 'Resolution of the National Conference of Registrar General of High Courts of India, 2006');
INSERT INTO public.article (cla, topic, rupon, subtopic, actnm, sec, author, published, synopsis) VALUES (6, 'General Legal', 'Legal Essays', '', '', '', '', 'Internet', 'Jurisprudential approach as how facts make law');
INSERT INTO public.article (cla, topic, rupon, subtopic, actnm, sec, author, published, synopsis) VALUES (7, 'General Legal', '', '', '', '', '', '', 'Written Submission of Soli Sorabjee as Amicus Curae in grant of Pardon Case before Supreme Court of India');


--
-- TOC entry 3258 (class 0 OID 24593)
-- Dependencies: 204
-- Data for Name: billdet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (1, 3, 'Case', 0, NULL, '2003-06-10 00:00:00', 'Deposit', 'Received', 0, 0, 0, 1000, '', '', 'Cash', '', '', NULL, '', 8, 'No', 'CO 1043 of 2003[Satya Narayan Singh Vs Ramji Singh]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (2, 5, 'Case', 0, NULL, '2003-06-09 00:00:00', 'Deposit', 'Received', 0, 0, 0, 1000, '', '', 'Cash', '', '', NULL, '', 10, 'No', 'CO 898 of 2003[Debabrata Mukherjee Vs Dr. Birendra Kumar Banerjee]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (3, 6, 'Case', 1, '1', '2003-06-11 00:00:00', 'Appearance', 'Fee', 40, 0, 680, 0, 'To my fees for appearance before Hon''ble Mr. Justice Pinaki Chandra Ghose on June 11, 2003 ', '', '', '', '', NULL, '', 19, 'Yes', 'WP 7449 (W) of 2003[Prabir Kumar Chakraborty & Anr Vs State of West Bengal & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (4, 6, 'Case', 1, '1', '2003-06-11 00:00:00', 'Clerkage', 'Expense', 0, 0, 40, 0, 'Clerkage', '', '', '', '', NULL, '', 19, 'Yes', 'WP 7449 (W) of 2003[Prabir Kumar Chakraborty & Anr Vs State of West Bengal & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (5, 10, 'Case', 2, '1', '2003-06-16 00:00:00', 'Appearance', 'Fee', 40, 0, 680, 0, 'To my fees for appearance before Hon''ble Mr. Justice Pinaki Chandra Ghose on June 16, 2003', '', '', '', '', NULL, '', 19, 'Yes', 'WP 8314 (W) of 2003[Helen Dey Vs The State of West Bengal & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (6, 10, 'Case', 2, '1', '2003-06-16 00:00:00', 'Clerkage', 'Expense', 0, 0, 40, 0, 'Clerkage', '', '', '', '', NULL, '', 19, 'Yes', 'WP 8314 (W) of 2003[Helen Dey Vs The State of West Bengal & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (7, 12, 'Case', 0, NULL, '2003-06-17 00:00:00', 'Deposit', 'Received', 0, 0, 0, 500, '', '', '', '', '', NULL, '', 18, 'No', 'FA 95 of 1996', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (8, 17, 'Case', 3, '2', '2003-06-15 00:00:00', 'Drafting', 'Fee', 40, 0, 680, 0, 'To my fees for drafting petition', '', '', '', '', NULL, '', 19, 'Yes', 'WP 1187 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (9, 17, 'Case', 3, '2', '2003-06-14 00:00:00', 'Drafting', 'Fee', 10, 0, 0, 0, 'To the fees for drafting demand of Justice', '', '', '', '', NULL, '', 19, 'Yes', 'WP 1187 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (10, 18, 'Case', 0, NULL, '2003-06-16 00:00:00', 'Deposit', 'Received', 0, 0, 0, 5700, '', '', '', '', '', '', '', 30, 'No', 'SA 163 of 1997[Probodh Chandra Chandra Vs Nayan Ranjan Bhattacharyya]', '');
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (11, 22, 'Case', 0, NULL, '2003-05-06 00:00:00', 'Deposit', 'Received', 0, 0, 0, 1500, '', '', '', '', '', NULL, '', 35, 'No', 'CO 519 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (12, 17, 'Case', 3, '2', '2003-06-18 00:00:00', 'Appearance', 'Fee', 40, 0, 680, 0, 'To my fees for Appearance before Hon''ble Mr. Justice Pinaki Chandra Ghose on June 18, 2003', '', '', '', '', NULL, '', 19, 'Yes', 'WP 1187 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (13, 17, 'Case', 3, '2', '2003-06-25 00:00:00', 'Appearance', 'Fee', 40, 0, 680, 0, 'To my fees for Appearance before Hon''ble Mr. Justice Pinaki Chandra Ghose on June 25, 2003', '', '', '', '', NULL, '', 19, 'Yes', 'WP 1187 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (14, 17, 'Case', 3, '2', '2003-06-25 00:00:00', 'Clerkage', 'Expense', 0, 0, 130, 0, 'Clerkage', '', '', '', '', NULL, '', 19, 'Yes', 'WP 1187 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (15, 2, 'Case', 0, NULL, '2003-06-25 00:00:00', 'Deposit', 'Received', 0, 0, 0, 10000, 'Advance for Seniors Fees', '', '', '', '', NULL, '', 9, 'No', 'CO 1185 of 2003[Mrityunjoy Sarkar & Anr Vs Srijoni Construction & Anr]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (16, 33, 'Case', 0, NULL, '2003-11-28 00:00:00', 'Towards fees', 'Received', 0, 0, 0, 10800, 'To my fees for appearance on 6 dates @ 1700/- per date.', '', '', '', '', NULL, '', 50, 'No', 'CP 316 of 1981[Kolay Biscuits Company Pvt Ltd Vs In Liquidation]', '');
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (17, 2, 'Case', 0, NULL, '2003-06-27 00:00:00', 'To Senior Advocate', 'Payment', 0, 0, 8000, 0, 'To the fees of Learned Senior Counsel, Sri Syamaprasana Raychaudhury', '', 'Cash', '', '', NULL, '', 9, 'No', 'CO 1185 of 2003[Mrityunjoy Sarkar & Anr Vs Srijoni Construction & Anr]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (18, 38, 'Case', 0, NULL, '2003-06-19 00:00:00', 'Deposit', 'Received', 0, 0, 0, 2000, '', '', '', '', '', NULL, '', 63, 'No', 'CRA 255 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (19, 39, 'Case', 0, NULL, '2003-07-08 00:00:00', 'Deposit', 'Received', 0, 0, 0, 2000, '', '', '', '', '', NULL, '', 64, 'No', 'CRM 2914 of 2003[Pran Gobinda Mitra Vs The State of West Bengal]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (20, 46, 'Case', 0, NULL, '2003-07-09 00:00:00', 'Deposit', 'Received', 0, 0, 0, 3000, '', '', '', '', '', NULL, '', 76, 'No', 'CO 1453 of 2003[Monidip Biswas Vs Papiya Biswas]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (21, 55, 'Case', 0, NULL, '2003-07-16 00:00:00', 'Deposit', 'Received', 0, 0, 0, 5500, 'Received Rs. 2000/- on 13.12.2004', '', '', '', '', NULL, '', 88, 'No', 'CS 43 of 2003[The National Small Industries Corporation Ltd Vs Sree Durga Cables Pvt. Ltd & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (22, 49, 'Case', 0, NULL, '2003-07-08 00:00:00', 'Deposit', 'Received', 0, 0, 0, 1000, '', '', '', '', '', NULL, '', 79, 'No', 'CO 1457 of 2003[Sova Rani Das & ors Vs Kanai Ruidas & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (23, 56, 'Case', 0, NULL, '2003-07-16 00:00:00', 'Appearance', 'Fee', 40, 0, 1440, 0, '', '', '', '', '', NULL, '', 3, 'No', 'CO 1142 of 2003[Jhuma Chattopadhyay Vs Pradip Kumar Chakraborty]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (24, 57, 'Case', 0, NULL, '2003-07-17 00:00:00', 'Deposit', 'Received', 0, 0, 0, 2000, '', '', '', '', '', NULL, '', 90, 'No', 'CO 1512 of 2003[Debjani Mukhopadhyay Vs Sreedhar Mukhopadhyay]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (25, 62, 'Case', 5, '1', '2003-07-28 00:00:00', 'Appearance', 'Fee', 20, 0, 340, 0, 'To my fees for non-effective appearance before Hon''ble Mr. Justice Arun Kumar Mitra on July 28, 2003', '', '', '', '', NULL, '', 74, 'Yes', 'WP 10943 (W) of 2003[Nambia Parambil Lukose Thomas Vs The New India Assurance Co. Ltd. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (26, 63, 'Case', 0, NULL, '2003-07-30 00:00:00', 'Drafting', 'Fee', 30, 0, 510, 0, '', '', '', '', '', NULL, '', 97, 'No', 'CO 1594 of 2003[Kanchan Luhariwal Vs Anil Kumar Luhariwal]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (27, 63, 'Case', 0, NULL, '2003-07-30 00:00:00', 'Appearance', 'Fee', 30, 0, 510, 0, '', '', '', '', '', NULL, '', 97, 'No', 'CO 1594 of 2003[Kanchan Luhariwal Vs Anil Kumar Luhariwal]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (28, 63, 'Case', 0, NULL, '2003-07-30 00:00:00', 'Deposit', 'Received', 0, 0, 0, 1000, '', '', '', '', '', NULL, '', 97, 'No', 'CO 1594 of 2003[Kanchan Luhariwal Vs Anil Kumar Luhariwal]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (29, 67, 'Case', 0, NULL, '2003-07-30 00:00:00', 'Deposit', 'Received', 0, 0, 0, 2000, '', '', '', '', '', NULL, '', 104, 'No', 'TRANSFER PETITION(C) 291 of 2003[Sanjukta Maitra Vs Probal Maitra]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (30, 62, 'Case', 5, '1', '2003-07-31 00:00:00', 'Appearance', 'Fee', 50, 0, 850, 0, 'To my fees for appearance before Hon''ble Mr. Justice Arun Kumar Mitra on July 31, 2003', '', '', '', '', NULL, '', 74, 'Yes', 'WP 10943 (W) of 2003[Nambia Parambil Lukose Thomas Vs The New India Assurance Co. Ltd. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (31, 73, 'Case', 0, NULL, '2003-07-31 00:00:00', 'Deposit', 'Received', 0, 0, 0, 13000, '', '', '', '', '', NULL, '', 107, 'No', 'SAT 2092 of 2003[Rabindra Nath Pal Vs Dr. Subodh Ch. Halder]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (32, 73, 'Case', 0, NULL, '2003-08-04 00:00:00', 'To Senior Advocate', 'Payment', 0, 0, 9000, 0, '', '', '', '', '', NULL, '', 107, 'No', 'SAT 2092 of 2003[Rabindra Nath Pal Vs Dr. Subodh Ch. Halder]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (33, 44, 'Case', 11, '1', '2003-08-05 00:00:00', 'Conference with Senior', 'Fee', 20, 0, 340, 0, 'To my fees for conference with Mr. Partha Sarathi Sengupta, Advocate on August 5, 2003', NULL, NULL, NULL, NULL, NULL, NULL, 74, 'Yes', 'APOT 16 of 2003[New India Assurance Co. Ltd Vs Sukanta Mitra]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (34, 44, 'Case', 11, '1', '2003-08-05 00:00:00', 'Cost for Photocopy and transcription', 'Expense', 0, 0, 200, 0, 'Cost of Photocopy of papers and documents', '', '', '', '', NULL, '', 74, 'Yes', 'APOT 16 of 2003[New India Assurance Co. Ltd Vs Sukanta Mitra]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (35, 72, 'Case', 4, '1', '2003-08-04 00:00:00', 'Conference at Chamber', 'Fee', 20, 0, 340, 0, 'Conference held at the chamber of Assistant General Manager', '', '', '', '', NULL, '', 74, 'Yes', 'CC 108 of 2003[Sukanta Mitra Vs New India Assurance Co. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (36, 62, 'Case', 5, '1', '2003-07-31 00:00:00', 'Clerkage', 'Expense', 0, 0, 140, 0, 'Clerkage', '', '', '', '', NULL, '', 74, 'Yes', 'WP 10943 (W) of 2003[Nambia Parambil Lukose Thomas Vs The New India Assurance Co. Ltd. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (37, 62, 'Case', 5, '1', '2003-08-06 00:00:00', 'Drafting', 'Fee', 50, 0, 850, 0, 'To my fees for drafting the Affidavit-in-opposition to the Writ Petition', '', '', '', '', NULL, '', 74, 'Yes', 'WP 10943 (W) of 2003[Nambia Parambil Lukose Thomas Vs The New India Assurance Co. Ltd. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (38, 62, 'Case', 5, '1', '2003-08-06 00:00:00', 'Cost for Photocopy and transcription', 'Expense', 0, 0, 70, 0, 'Towards preparation of Brief and case materials for Sri Partha Sarathi Sengupta, Advocate', '', '', '', '', NULL, '', 74, 'Yes', 'WP 10943 (W) of 2003[Nambia Parambil Lukose Thomas Vs The New India Assurance Co. Ltd. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (39, 72, 'Case', 4, '1', '2003-08-08 00:00:00', 'Appearance', 'Fee', 50, 0, 850, 0, 'To my fees for appearance before Hon''ble Mr. Justice M.H.S Ansari on August 8, 2003', '', '', '', '', NULL, '', 74, 'Yes', 'CC 108 of 2003[Sukanta Mitra Vs New India Assurance Co. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (40, 72, 'Case', 4, '1', '2003-08-08 00:00:00', 'Certified Copy', 'Expense', 0, 0, 300, 0, 'Towards cost of obtaining signed copy of the minutes of the order.', '', '', '', '', NULL, '', 74, 'Yes', 'CC 108 of 2003[Sukanta Mitra Vs New India Assurance Co. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (41, 72, 'Case', 4, '1', '2003-08-08 00:00:00', 'Clerkage', 'Expense', 0, 0, 50, 0, 'Clerkage', '', '', '', '', NULL, '', 74, 'Yes', 'CC 108 of 2003[Sukanta Mitra Vs New India Assurance Co. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (42, 44, 'Case', 11, '1', '2003-08-10 00:00:00', 'Conference with Senior', 'Fee', 20, 0, 340, 0, 'To my fees for conference with Mr. Parth Sarathi Sengupta, Advocate on August 10, 2003', '', '', '', '', NULL, '', 74, 'Yes', 'APOT 16 of 2003[New India Assurance Co. Ltd Vs Sukanta Mitra]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (43, 77, 'Case', 0, NULL, '2003-08-12 00:00:00', 'Deposit', 'Received', 0, 0, 0, 2000, '', '', '', '', '', NULL, '', 115, 'No', 'CRR 1443 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (44, 108, 'Case', 0, NULL, '2003-08-27 00:00:00', 'Deposit', 'Received', 0, 0, 0, 4000, 'Client Paid 5000/- Rs 1000/- paid to Bhagabat Ch. Hazra', '', '', '', '', NULL, '', 150, 'No', 'CRR 389 of 2003', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (45, 107, 'Case', 0, NULL, '2003-08-27 00:00:00', 'Deposit', 'Received', 0, 0, 0, 4000, 'Client Paid Rs. 4500/- paid Rs 500/- to Bhagabat Chowdhury', '', '', '', '', '', '', 149, 'No', 'CRA 388 of 2003[Prasanta Mahapatra and ors Vs The State of West Bengal]', '');
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (46, 95, 'Case', 0, NULL, '2003-09-08 00:00:00', 'Deposit', 'Received', 0, 0, 0, 9700, 'Rs 1500/- paid on 17.9.2006, Rs 1500/- paid on 20.5.2007, Rs 2000/- paid on 9.9.2007, Rs. 1500/- Paid on 20.2.2008, Rs 2200/- paid on 6.7.2008', '', '', '', '', '', '', 100, 'No', 'SA 592 of 2007[Ratan Chandra Nath Vs Ranjit Kumar Nath]', '');
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (47, 72, 'Case', 6, '2', '2003-09-02 00:00:00', 'Appearance', 'Fee', 50, 0, 850, 0, 'To my fees for appearance before Hon''ble  Mr. Justice M.H.S. Ansari on September 2, 2003  praying for extension to file Affidavit-in-opposition to the contempt application.', '', '', '', '', NULL, '', 74, 'Yes', 'CC 108 of 2003[Sukanta Mitra Vs New India Assurance Co. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (48, 72, 'Case', 6, '2', '2003-09-09 00:00:00', 'Drafting', 'Fee', 50, 0, 850, 0, 'To my fees for preliminary drafting of the affidavit-in-opposition to the Contempt application.', '', '', '', '', NULL, '', 74, 'Yes', 'CC 108 of 2003[Sukanta Mitra Vs New India Assurance Co. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (49, 72, 'Case', 6, '2', '2003-09-09 00:00:00', 'Stamp and Affirmation', 'Expense', 0, 0, 300, 0, 'Towards cost of stamp, engrossing and affirmation of the affidavit-in-opposition, affirmed on September 9, 2003', '', '', '', '', NULL, '', 74, 'Yes', 'CC 108 of 2003[Sukanta Mitra Vs New India Assurance Co. & ors]', NULL);
INSERT INTO public.billdet (id, refno, shortref, billno, memono, date, type, cat, rate, stat, amounte, amountr, note, chdd, mode, bank, branch, date1, name, clid, billed, det, tobill) VALUES (50, 72, 'Case', 6, '2', '2003-09-09 00:00:00', 'Clerkage', 'Expense', 0, 0, 100, 0, 'Clerkage', '', '', '', '', NULL, '', 74, 'Yes', 'CC 108 of 2003[Sukanta Mitra Vs New India Assurance Co. & ors]', NULL);


--
-- TOC entry 3259 (class 0 OID 24613)
-- Dependencies: 205
-- Data for Name: billm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.billm (id, type, cat, amt, note) VALUES (1, 'Appearance', 'Fee', 1700, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (2, 'Non-effective hearing', 'Fee', 850, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (3, 'Drafting', 'Fee', 2040, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (4, 'Settling', 'Fee', 1700, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (5, 'Clerkage', 'Expense', 100, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (6, 'Certified Copy', 'Expense', 300, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (7, 'Miscellaneous', 'Expense', 500, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (8, 'Stamp and Affirmation', 'Expense', 400, NULL);
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (9, 'Expenses for Photocopy and transcription', 'Expense', 500, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (10, 'Deposit', 'Received', 3500, NULL);
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (11, 'Towards fees', 'Received', 1700, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (12, 'Against Bill', 'Received', 2000, NULL);
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (13, 'Conference at Chamber', 'Fee', 510, '');
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (14, 'To Junior Advocate', 'Payment', 340, NULL);
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (15, 'To Senior Advocate', 'Payment', 10200, NULL);
INSERT INTO public.billm (id, type, cat, amt, note) VALUES (16, 'Conference with Senior', 'Fee', 680, '');


--
-- TOC entry 3260 (class 0 OID 24621)
-- Dependencies: 206
-- Data for Name: billmst; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (1, '2003-06-26 00:00:00', NULL, 'Yes', 6, 19, 'Case', 720, 720, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (2, '2003-06-26 00:00:00', NULL, 'Yes', 10, 19, 'Case', 720, 720, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (3, '2003-06-26 00:00:00', NULL, 'Yes', 17, 19, 'Case', 2170, 2170, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (4, '2003-08-20 00:00:00', NULL, 'Yes', 72, 74, 'Case', 1540, 1200, '( Rupees Three Hundred and Forty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (5, '2003-08-20 00:00:00', NULL, 'Yes', 62, 74, 'Case', 2250, 1910, '( Rupees Six Hundred and Eighty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (6, '2003-09-10 00:00:00', NULL, 'Yes', 72, 74, 'Case', 2300, 2300, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (7, '2003-09-15 00:00:00', NULL, 'Yes', 127, 84, 'Case', 5760, 5760, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (8, '2003-09-16 00:00:00', NULL, 'Yes', 130, 171, 'Case', 3740, 2000, '( Rupees One Thousand Seven Hundred and Forty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (9, '2003-09-16 00:00:00', NULL, 'Yes', 118, 19, 'Case', 720, 720, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (10, '2003-08-20 00:00:00', NULL, 'Yes', 136, 84, 'Case', 8320, 8320, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (11, '2003-09-29 00:00:00', NULL, 'Yes', 44, 74, 'Case', 3770, 2720, '( Rupees One Thousand  and Fifty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (12, '2003-09-29 00:00:00', NULL, 'Yes', 62, 74, 'Case', 1050, 1050, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (13, '2003-11-04 00:00:00', NULL, 'Yes', 165, 36, 'Case', 3170, 3170, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (14, '2003-11-05 00:00:00', NULL, 'Yes', 141, 179, 'Case', 940, 940, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (15, '2003-11-05 00:00:00', NULL, 'Yes', 158, 196, 'Case', 1080, 0, '( Rupees One Thousand  and Eighty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (16, '2003-12-03 00:00:00', NULL, 'Yes', 112, 43, 'Case', 2000, 2000, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (17, '2003-09-17 00:00:00', NULL, 'Yes', 112, 43, 'Case', 2000, 2000, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (18, '2003-12-12 00:00:00', NULL, 'Yes', 225, 266, 'Case', 13270, 13270, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (19, '2003-12-05 00:00:00', NULL, 'Yes', 192, 43, 'Case', 2000, 0, '( Rupees Two Thousand  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (20, '2003-12-15 00:00:00', NULL, 'Yes', 62, 74, 'Case', 2450, 2200, '( Rupees Two Hundred and Fifty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (21, '2003-12-15 00:00:00', NULL, 'Yes', 72, 74, 'Case', 1800, 1800, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (22, '2003-12-15 00:00:00', NULL, 'Yes', 44, 74, 'Case', 2410, 2410, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (23, '2003-12-19 00:00:00', NULL, 'Yes', 210, 19, 'Case', 1440, 1440, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (24, '2003-12-22 00:00:00', NULL, 'Yes', 130, 171, 'Case', 2450, 0, '( Rupees Two Thousand Four Hundred and Fifty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (25, '2003-12-24 00:00:00', NULL, 'Yes', 230, 275, 'Case', 1800, 1800, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (26, '2004-01-01 00:00:00', NULL, 'Yes', 167, 74, 'Case', 2400, 2400, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (27, '2004-01-12 00:00:00', NULL, 'Yes', 1, 293, 'Chamber Work', 480, 480, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (28, '2004-02-05 00:00:00', NULL, 'Yes', 245, 74, 'Case', 4380, 4380, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (29, '2004-02-05 00:00:00', NULL, 'Yes', 260, 74, 'Case', 2360, 2360, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (30, '2004-02-05 00:00:00', NULL, 'Yes', 44, 74, 'Case', 2100, 2100, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (31, '2004-02-05 00:00:00', NULL, 'Yes', 220, 74, 'Case', 2975, 2975, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (32, '2004-02-05 00:00:00', NULL, 'Yes', 248, 19, 'Case', 1440, 1080, '( Rupees Three Hundred and Sixty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (33, '2004-02-05 00:00:00', NULL, 'Yes', 263, 19, 'Case', 1440, 1440, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (34, '2004-03-04 00:00:00', NULL, 'Yes', 44, 74, 'Case', 7550, 7550, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (35, '2004-03-04 00:00:00', NULL, 'Yes', 72, 74, 'Case', 1700, 1700, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (36, '2004-03-04 00:00:00', NULL, 'Yes', 62, 74, 'Case', 1150, 1150, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (37, '2004-03-04 00:00:00', NULL, 'Yes', 220, 74, 'Case', 2300, 2300, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (38, '2004-03-12 00:00:00', NULL, 'Yes', 326, 345, 'Case', 1600, 1600, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (39, '2004-03-13 00:00:00', NULL, 'Yes', 225, 266, 'Case', 4425, 4425, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (40, '2004-03-16 00:00:00', NULL, 'Yes', 126, 84, 'Case', 4806, 4806, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (41, '2004-03-16 00:00:00', NULL, 'Yes', 127, 84, 'Case', 4800, 4800, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (42, '2004-03-23 00:00:00', NULL, 'Yes', 51, 36, 'Case', 26300, 26300, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (43, '2004-03-23 00:00:00', NULL, 'Yes', 270, 19, 'Case', 2160, 1620, '( Rupees Five Hundred and Forty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (44, '2004-04-19 00:00:00', NULL, 'Yes', 369, 19, 'Case', 1440, 1440, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (45, '2004-05-04 00:00:00', NULL, 'Yes', 379, 402, 'Case', 720, 720, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (46, '2004-05-07 00:00:00', NULL, 'Yes', 395, 402, 'Case', 720, 0, '( Rupees Seven Hundred and Twenty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (47, '2004-05-07 00:00:00', NULL, 'Yes', 396, 415, 'Case', 720, 0, '( Rupees Seven Hundred and Twenty  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (48, '2004-05-14 00:00:00', NULL, 'Yes', 374, 397, 'Case', 33080, 33080, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (49, '2004-05-19 00:00:00', NULL, 'Yes', 72, 74, 'Case', 4600, 4600, '( Rupees  only )');
INSERT INTO public.billmst (billno, billdt, billsdt, billpaid, refno, clid, shortref, amte, amtr, words) VALUES (50, '2004-05-20 00:00:00', NULL, 'Yes', 412, 19, 'Case', 1800, 1800, '( Rupees  only )');


--
-- TOC entry 3261 (class 0 OID 24635)
-- Dependencies: 207
-- Data for Name: billper; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (1, 'Income', 'Dividend on Mutual Fund', '2004-01-01 00:00:00', 0, 0, 300, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', NULL, '01-Jan-2004', 'UTI Mutual Fund', '', 'Dividend on 200 units of UTI Grandmaster @  15/- per unit');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (2, 'Income', 'Dividend on Mutual Fund', '2004-01-01 00:00:00', 0, 0, 1050, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', NULL, '01-Jan-2004', 'UTI Mutual Fund', '', 'Dividend on 700 units of UTI Grandmaster @  15/- per unit');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (3, 'Income', 'Professional Fee', '2004-01-01 00:00:00', 5870, 0, 5870, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '01-Jan-2004', '', '', 'Professional Fee for 1 matter');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (4, 'Expenditure', 'Law Books & Reference', '2004-01-02 00:00:00', 0, 0, 1430, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '223271', '02-Jan-2004', 'International Law Book Co.', '1562,''Nirjhawan Building'' , Church Road.Kashmere Gate.Delhi-110 006', 'Payment for internet services to SupremeCourtCaseLaw.com for January 2004 to December 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (5, 'Expenditure', 'Insurance Premium', '2004-01-05 00:00:00', 0, 0, 5682, 'Cash', '', '', '', NULL, 'Nabanita Ray (Mukherjee)', '', 'Towards insurance premium of Nabanita collected by Koushik. Paid by Nabanita through cheque no.520641 dated 5.1.2004 of Bank of Baroda, Sadananda Road. Branch, SB A/c No. 4287');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (6, 'Income', 'Professional Fee', '2004-01-08 00:00:00', 0, 0, 1440, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '10-Jan-2004', '', '', 'Payment against Bill for professional Fees-Dwaipayana Mitra, Solicitor');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (7, 'Income', 'Professional Fee', '2004-01-09 00:00:00', 6660, 0, 6410, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '10-Jan-2004', 'New India Assurance Co. Ltd', '', 'Against Bill for Professional Fees');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (8, 'Income', 'Professional Fee', '2004-01-17 00:00:00', 0, 0, 6070, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '17-Jan-2004', 'New India Assurance Co. Ltd', '', 'Cheque No. 129879 dated 15.11.2003 drawn on Central Bank of India, Red Cross Place ');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (9, 'Income', 'Professional Fee', '2004-01-17 00:00:00', 0, 0, 1800, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '17-Jan-2004', '', '', 'Professional Fee for 1 matter');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (10, 'Expenditure', 'Accountant Fee', '2004-01-21 00:00:00', 0, 0, 2000, 'Cheque', 'State Bank of India', 'Calcutta Main-11143718802', '247283', '21-Jan-2004', '', '', 'Accountants Fee for Filing Income Tax Return for Assessment Year 2003-2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (11, 'Expenditure', 'Car & Conveyance', '2004-01-27 00:00:00', 0, 0, 4500, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '925837', '27-Jan-2004', 'Apeejay Finance Group Ltd', '', 'Towards monthly hire purchase installment of Car for January 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (12, 'Expenditure', 'Salary of Staff', '2004-01-31 00:00:00', 0, 0, 2000, 'Cash', '', '', '', NULL, '', '', 'Towards salary of Ayah (Namita) for January 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (13, 'Expenditure', 'Insurance Premium', '2004-02-10 00:00:00', 0, 0, 3931, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '225273', '10-Feb-2004', 'The Oriental Insurance Co. Ltd.', 'Division-5', 'Towards Renewal premium of Mediclaim Policy for 2004-2005 for family of three');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (14, 'Expenditure', 'Electricity', '2004-02-10 00:00:00', 0, 0, 1320, 'Cash', '', '', '', NULL, 'CESC Ltd', '', 'Electricity Bills for January 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (15, 'Expenditure', 'Telephone', '2004-02-10 00:00:00', 0, 0, 1803, 'Cash', '', '', '', NULL, 'Bharat Sanchar Nigam Ltd', '', 'Telephone Bill for Nov-Dec 2003 (Probal Kr. Mukherjee-2463-7209)');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (16, 'Expenditure', 'Law Books & Reference', '2004-02-10 00:00:00', 0, 0, 7590, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '225272', '10-Feb-2004', 'Spectrum Business Support Ltd.', '11, Crooked Lane. Kolkata-69', 'Renewal Subscription for Grand Jurix-2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (17, 'Income', 'Professional Fee', '2004-02-14 00:00:00', 0, 0, 10340, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '14-Feb-2004', '', '', 'Professional Fee for 5 matters');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (18, 'Expenditure', 'Car & Conveyance', '2004-02-18 00:00:00', 0, 0, 1000, '', '', '', '', NULL, '', '', 'Petrol-27.60 ltrs');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (19, 'Expenditure', 'Insurance Premium', '2004-02-19 00:00:00', 0, 0, 2266, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '225274', '19-Feb-2004', 'Life Insurance Corporation of India', '', 'Insurance Premium of Probal Kr.Mukherjee');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (20, 'Expenditure', 'Car & Conveyance', '2004-02-25 00:00:00', 0, 0, 4500, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '925838', '25-Feb-2004', 'Apeejay Finance Group Ltd', '', 'Towards monthly hire purchase installment of Car for February 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (21, 'Expenditure', 'Salary of Staff', '2004-03-01 00:00:00', 0, 0, 2000, 'Cash', '', '', '', NULL, '', '', 'Towards salary of Ayah (Namita) for February 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (22, 'Expenditure', 'Car & Conveyance', '2004-03-05 00:00:00', 0, 0, 1000, '', '', '', '', NULL, '', '', 'Petrol-27.60 ltrs');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (23, 'Expenditure', 'Household expense', '2004-03-05 00:00:00', 0, 0, 2500, 'Cash', '', '', '', NULL, '', '', 'Towards purchase of Gifts for Hiya on her 2nd birthday');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (24, 'Expenditure', 'Entertainment Expense', '2004-03-08 00:00:00', 0, 0, 2900, 'Cash', '', '', '', NULL, '', '', 'Towards payment on Restaurant Bill on Hiya''s Birthday');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (25, 'Expenditure', 'Law Books & Reference', '2004-03-15 00:00:00', 0, 0, 2000, 'Cash', '', '', '', NULL, 'Shaligram Traders', '', 'Towards price of update of AIR CD-Rom 1950-2003 (Supreme Court)');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (26, 'Expenditure', 'Computer Peripherals', '2004-03-19 00:00:00', 0, 0, 2400, 'Cash', '', '', '', NULL, '', '', 'Cost 4 Labtec Noise Cancelling Headphone for dictation in Computers-Computer Exchange');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (27, 'Expenditure', 'Computer Peripherals', '2004-03-23 00:00:00', 0, 0, 75000, 'Cash', '', '', '', NULL, '', '', 'For Purchase of Compaq Laptop Computer-Cyber Works-10A, Hemanta Basu Sarani Kolkata-69, 2248-1910, 2248-6117, 2248-2981');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (28, 'Expenditure', 'Car & Conveyance', '2004-03-24 00:00:00', 0, 0, 4500, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '925839', '24-Mar-2004', 'Apeejay Finance Group Ltd', '', 'Towards monthly hire purchase installment of Car for March 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (29, 'Expenditure', 'Car & Conveyance', '2004-03-24 00:00:00', 0, 0, 1000, '', '', '', '', NULL, '', '', 'Petrol-27.31 ltrs.');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (30, 'Expenditure', 'Travel & Tour ', '2004-03-24 00:00:00', 0, 0, 1500, 'Cash', '', '', '', NULL, '', '', 'Paid Room Rent for Peerless Mukutmanipur 9.4.2004-12.4.2004- 3 days-Peerless Tours and Travels');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (31, 'Expenditure', 'Computer Peripherals', '2004-03-27 00:00:00', 0, 0, 9826, 'Cash', '', '', '', NULL, '', '', 'For additional 256 Mb Ram of Laptop Computer-Rs 4096/- Additional Warranty-4800/- Mouse-560/- Light-370/-Cyber Works');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (32, 'Income', 'Professional Fee', '2004-03-27 00:00:00', 29359, 2000, 29359, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '27-Mar-2004', '', '', 'Professional Fee for 1 matter-TDS Deducted of about Rs 2000/-');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (33, 'Income', 'Professional Fee', '2004-03-29 00:00:00', 0, 0, 9606, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '31-Mar-2004', '', '', 'Professional Fee for 1 matter');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (34, 'Expenditure', 'Law Books & Reference', '2004-03-29 00:00:00', 0, 0, 9000, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '223276', '29-Mar-2004', 'Sai Law Centre', '', 'Towards balance price of Books supplied upto March 31, 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (35, 'Income', 'Professional Fee', '2004-03-29 00:00:00', 0, 0, 4425, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '31-Mar-2004', '', '', 'Professional Fee for 1 matter');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (36, 'Expenditure', 'Law Books & Reference', '2004-03-29 00:00:00', 0, 0, 950, 'Cash', '', '', '', NULL, 'Sai Law Centre', '', 'Towards Balance of Books purchased as on 31st March, 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (37, 'Expenditure', 'Insurance Premium', '2004-03-29 00:00:00', 0, 0, 4281, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '223275', '29-Mar-2004', 'Life Insurance Corporation of India', '', 'Insurance Premium of Ankita Mukherjee');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (38, 'Expenditure', 'Law Books & Reference', '2004-03-30 00:00:00', 0, 0, 6000, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '223277', '30-Mar-2004', 'Manupatra Information Solutions Pvt.Ltd', 'B-37, Floor 1 A, Sector-1, Noida-201301
Gautam Budh Nagar (UP)-91-120-4531811/12
www.manupatra.com, kolkata@manupatra.com
Sandip Paul-98303-23595', 'Towards purchase price for Manupatra Judgments of Supreme Court of India');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (39, 'Income', 'Professional Fee', '2004-03-31 00:00:00', 0, 0, 1360, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '', '31-Mar-2004', '', '', 'Professional Fee for 1 matter');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (40, 'Expenditure', 'Computer Peripherals', '2004-03-31 00:00:00', 0, 0, 2000, 'Cash', '', '', '', NULL, '', '', 'For purchase of optical mouse and surge protector');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (41, 'Expenditure', 'Salary of Staff', '2004-04-01 00:00:00', 0, 0, 2000, 'Cash', '', '', '', NULL, '', '', 'Towards salary of Ayah (Namita) for March 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (42, 'Expenditure', 'Law Books & Reference', '2005-12-22 00:00:00', 0, 0, 6500, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '891202', '23-Dec-2005', 'Sai Law Centre', NULL, 'Part Payment for Law Books');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (43, 'Expenditure', 'Electricity', '2004-04-08 00:00:00', 0, 0, 1230, 'Cash', '', '', '', NULL, 'CESC Ltd', '', 'Electricity Bills for March, 2004');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (44, 'Expenditure', 'Telephone', '2004-04-08 00:00:00', 0, 0, 2315, 'Cash', '', '', '', NULL, 'Bharat Sanchar Nigam Ltd', '', 'Telephone Bill for Jan-Feb 2004  (Probal Kr. Mukherjee-2463-7209)');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (45, 'Expenditure', 'Car & Conveyance', '2004-04-08 00:00:00', 0, 0, 1000, '', '', '', '', NULL, '', '', 'Petrol-27.31 ltrs');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (46, 'Expenditure', 'Car & Conveyance', '2004-04-10 00:00:00', 0, 0, 1469, '', '', '', '', NULL, '', '', 'Petrol-39 ltrs For Mukutmonipur');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (47, 'Expenditure', 'Travel & Tour ', '2004-04-12 00:00:00', 0, 0, 1500, 'Cash', '', '', '', NULL, '', '', 'Fooding at Mukutmonipur');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (48, 'Expenditure', 'Printing and Stationery', '2004-04-16 00:00:00', 0, 0, 4000, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '223278', '16-Apr-2004', 'New Popular Type Copying Chamber', '10, Old Post Office Street. Kolkata', 'Payment to Book Binder for Paper Books of New India Assurance Co. Ltd');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (49, 'Expenditure', 'Bank Transfer', '2004-04-16 00:00:00', 0, 0, 10000, 'Cheque', 'Indian Overseas Bank', 'Kalighat - SB 5103', '223279', '17-Apr-2004', '', '', 'Transfer of Cash for opening account in Standard Chartered Bank');
INSERT INTO public.billper (aid, actype, head, date, bamt, stat, amt, mode, bank, branch, chdd, date1, name, add, note) VALUES (50, 'Expenditure', 'Car & Conveyance', '2004-04-18 00:00:00', 0, 0, 1000, '', '', '', '', NULL, '', '', 'Petrol-27.31 ltrs');


--
-- TOC entry 3262 (class 0 OID 24648)
-- Dependencies: 208
-- Data for Name: casedet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (49, 'CO 1457 of 2003', 2003, '', 'Sova Rani Das & ors', 'Kanai Ruidas & ors', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-07-11 00:00:00', '', 'Burdwan', 'PETITIONER', '10-Sep-2003', 79, 'Sova Rani Das', 'Shovan Kumar', '', '', '', '', '10.9.2003 Girish Chandra Gupta J-The application is allowed. The order of revision Court setaside and that of trial Court restored.', 'Civil Procedure', 'Appeal', 'Additional Evidence', '', 'DISPOSED', 'Won', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (10, 'WP 8314 (W) of 2003', 2003, '', 'Helen Dey', 'The State of West Bengal & ors', 'Writ Petition (WP)', '', 'In the High Court at Calcutta', '', '2003-06-13 00:00:00', '', 'North 24-parganas', 'PETITIONER', '16-Jun-2003', 19, 'Dwaipayana Mitra', '', '', '', '', '', '', 'Apartment & Building', 'Government Tenement', 'Transfer', '', 'DISPOSED', 'Won', 'West Bengal Regulation on Transfer of Government Lands Act, 1993', '', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (23, 'CO 1263 of 2003', 2003, '', 'Sukriti Kumar Roy', 'Nabanita Ray', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-06-20 00:00:00', '', 'South 24-parganas', 'OPPOSITE PARTY', '25-Jun-2003', 39, 'Nabanita Ray', 'Basudeb Pal', '', '', 'Santanu Mukherjee, BA Room No 14', '', '25.6.2003- Girish Chandra Gupta J-The Order is modified to the extend that the arrears shall be liquidated by 36 equal monthly installments to be paid alongwith the current maintanance amount and first of such to be paid by the 15th of July, 2003.', 'Matrimonial & Maintenance', 'Alimony Pendente lite', 'Reduction of', '', 'DISPOSED', 'With workable order', '', '2003(1) CLJ', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (45, 'CO 1358 of 2003', 2003, '', 'Partha Pratim Das', 'Beauty Das', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-07-10 00:00:00', '', '', 'OPPOSITE PARTY', '10-Sep-2003', 75, 'Beauty Das', 'Suhas Kumar Basu', '', '', 'Madhusudan Saharay', '', '10.9.2003- Girish Chandra Gupta J-The section 24 application to be heard out within 3 months. Therafter the Court to dispose of application for analogous trial.', 'Matrimonial & Maintenance', 'Alimony Pendente lite', '', '', 'DISPOSED-Fee Waived', 'With workable order', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (16, 'SAT 3670 of 2002', 2002, NULL, 'National Highways Authority of India', 'Sukumar Dutta & ors', 'Civil Second Appeal (SA)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', NULL, '2003-05-25 00:00:00', 'To Oppose', 'Burdwan', 'RESPONDENT', NULL, 198, 'Subir Pal', NULL, NULL, 'Probal Kr. Mukherjee', 'Khaitan & Co.', 'CAN 219 of 2003- Stay of Decree- 27th June, 2003- Prabir Kumar Samanta J.Application is misconcieved and hence dismissed. the Appellant is directed to file special messenger cost and to prepare paper book within one month from the date of arrival of lower court records.', NULL, 'Highways & Tolls', 'Highway', 'Acquisition of Land', 'For Hearing', 'PENDING', 'Awaiting Listing', NULL, NULL, NULL, 'Counsel', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (36, 'SAT 1661 of 2003', 2003, '', 'Swapna Kar & ors', 'Priya Ranjan Lahiri', 'Tender of Second Appeal (SAT)', '', 'In the High Court at Calcutta', '', '2003-07-01 00:00:00', '', 'Kolkata', 'APPELLANT', '23-Mar-2005', 56, 'Swapna Kar', 'Amlan Ghosh', '', '', '', 'First Appeal was dismiised for default on the part of the Learned Advocate of the appellant in appearing when the appeal was called on for hearing after rejection of the application praying for adjournment.', 'Decree of Appeal Court to be filed.Advise filing of an application under Order 41 rule 19 of the C.P. Code-Now filed- caveat entered by Anandamayee Dutta. BA Room-5-
23.3.2005-No objection granted to client', 'Civil Procedure', 'Appeal', 'Dismissal', '', 'DISPOSED-Fee Waived', 'Brief returned to client', '', 'AIR 1963 SC 146--AIR 1997 Ori 185--AIR 1981 SC 1401
AIR 1983 Cal 124--AIR 1989 H.P.59--AIR 1988 All 262--2004(1) CHN (SC) 1', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (30, 'SAT 1564 of 2003', 2003, NULL, 'Buddhadeb Hazra', 'The State of West Bengal & ors', 'Tender of Second Appeal (SAT)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', NULL, '2003-06-23 00:00:00', 'To Apply', 'Burdwan', 'APPELLANT', NULL, 46, 'Buddhadeb Hazra', 'Debasis Goon', NULL, NULL, NULL, NULL, '23.3.2005-Bhaskar Bhattacharyya & R.N. Sinha-Appeal admitted on 2 substantial questions of law.Communication to be made to Sri Shyamal Chandra Konar, Advocate Burdwan District Judges Court
', 'Land Law', 'Land Reforms', 'Vesting', 'For Hearing', 'PENDING', 'Awaiting Listing', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (7, 'WP 6256 (W) of 2003', 2003, '', 'Major General(Retd) Anand Mohan Nandkeolyar', 'The State of West Bengal & ors', 'Writ Petition (WP)', '', 'In the High Court at Calcutta', '', '2003-05-20 00:00:00', '', 'North 24-parganas', 'RESPONDENT', '01-Apr-2005', 19, 'Dwaipayana Mitra', '', '', '', '', '', '', 'Municipal Law', 'Building ', 'Unauthorised Construction', '', 'DISPOSED-Fee Waived', 'Dismissed as Infructuous', '', '', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (24, 'CO 1239 of 2003', 2003, '', 'Rabia Khatoon @Begum & ors', 'Sunil Kumar Mazumdar & ors', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-06-20 00:00:00', '', 'South 24-parganas', 'OPPOSITE PARTY', '01-Aug-2003', 40, 'Sunil Kumar Mazumdar', 'Abhishek Banerjee', '', '', 'Anit Kumar Rakshit', 'Whether after amendment of the Code of Civil Procedure, applications under Section 115A are Maintainable or not.', '', 'Civil Procedure', 'Abatement & Substitution', 'Substitution', '', 'DISPOSED', 'Won', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (42, 'WP 4048 (W) of 2003', 2003, '', 'Debolina Guha', 'The State of West Bengal & ors', 'Writ Petition (WP)', '', 'In the High Court at Calcutta', '', '2003-07-06 00:00:00', '', 'Kolkata', 'PETITIONER', '24-Jul-2003', 69, 'Debolina Guha', 'Kamal Bandopadhyay', '', '', '', '', '24.7.2003-Pratap Kmar Ray- Application dismissed', 'Education', 'Examination', 'Result Dispute', '', 'DISPOSED', 'Lost', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (17, 'WP 1187 of 2003', 2003, NULL, 'Monotype India Ltd.', 'The CESC Ltd & ors', 'Writ Petition (WP)', NULL, 'In the High Court at Calcutta', NULL, '2003-06-17 00:00:00', NULL, 'Kolkata', 'PETITIONER', NULL, 19, 'Dwaipayana Mitra', NULL, NULL, NULL, NULL, NULL, NULL, 'Electricity', 'Repair of Supply', NULL, NULL, 'DISPOSED', 'Won', 'Indian Electricity Act, 1910', NULL, NULL, 'Counsel', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (35, 'APPEAL NO 3 of 2003', 2003, '', 'Radharani Bose', 'Bank of Baroda & ors', 'Appeal under Section 30 of DRT Act', '', 'Debt Recovery Tribunal-III', '', '2003-06-27 00:00:00', '', 'South 24-parganas', 'APPELLANT', '20-Sep-2006', 55, 'Radha Rani Bose', '', 'Nilanjan Bhattacharjee', '', 'Sukumar Dutta, Poetry Dutta', 'The point involved is decided in 2003 (2) CLJ 409. The bidder has no subsisting locus in view of Schedule II, Rule 14, 55,53,57,58,63 of Income Tax Act, 1961', '20.9.2006-D.C.Thakur-Appeal dismissed on merits, exparte.', 'Banking & Finance', 'Debt Recovery', 'Recovery Officer', '', 'DISPOSED', 'Lost', 'Income Tax Act
Recovery of Debts due to Banks and Finacial Institutions Act
The Code of Civil Procedure, 1908', '1998(6) SCC 658 & 233--1999(4) SCC 710--2000(4) SCC 406--2000(6) SCC 655
1997(8) SCC 766--2003(2) CLJ 409-- 1997(2)-SCC -0349 -SC--2004(8) SCC 355-Free from encumbrance', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (22, 'CO 519 of 2003', 2003, NULL, 'Parul Das', 'Ganesh Chandra Patra', 'Civil Misc. Case-Civil Order (CO)', NULL, 'In the High Court at Calcutta', NULL, '2003-06-17 00:00:00', NULL, 'South 24-parganas', 'OPPOSITE PARTY', NULL, 35, 'Ganesh Chandra Patra', 'Asoke Chowdhury', NULL, NULL, 'Koushik Chatterjee', NULL, NULL, 'Civil Procedure', 'Evidence', NULL, NULL, 'DISPOSED', 'Won', 'CPC-Or18 r3A', 'AIR 1981 Cal 295--AIR 1989 Mad 239 @ 242 @ para 6--AIR 90 Mad 237 @ 240', NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (25, 'SAT 15#1 of 2003', 2003, '', 'Suka Oran @ Minji', 'Budhi Ekka & ors', 'Tender of Second Appeal (SAT)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-06-18 00:00:00', 'Tk Apply', '', 'APPELLANT', '', 41, 'Suka Oran @ Minji', 'Hanif Ali Sarkar', '', '', '', '', 'Judgement and Decree of Trial Court to be deposited. The Appellant expired on about 2005
9.7.2007-Pranab Kr. Chattopadhyay & K.D.Mukherjee-Matter to go out of list for the present for removal of defects.', '', '', '', 'For Admission ', 'PENDING', 'Awaiting Listing', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (34, 'WP 8994 (W) of 2003', 2003, '', 'Samar Kumar Dwari & ors', 'The State of West Bengal & ors', 'Writ Petition (WP)', '', 'In the High Court at Calcutta', '', '2003-06-26 00:00:00', '', 'Nadia', 'PETITIONER', '23-Jul-2004', 24, 'Ashis Kumar Chowdhury', '', '', '', '', '', '', 'Constitutional Law ', 'Public Interest Litigation', 'Disbursement of Flood Relief', '', 'DISPOSED', 'Won', '', '', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (15, 'WP 14070 (W) of 2002', 2002, NULL, 'Bijoy Kumar Roy', 'The State of West Bengal & ors', 'Writ Petition (WP)', 'Constitutional Writ Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', NULL, '2003-06-10 00:00:00', 'To Oppose', 'South 24-parganas', 'Private Respondent', NULL, 25, 'Amar Kumar Roy', 'Amlan Ghosh', NULL, NULL, 'Asis Kumar Das', NULL, 'Letter issued to Advocate, Received on 12.7.2003', 'Police Law', 'Inaction of Police', NULL, 'Listed Motion', 'PENDING', 'Awaiting Listing', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (48, 'CO 1413 of 2003', 2003, NULL, 'Somnath Ghosh', 'Jolly Sarkar', 'Civil Misc. Case-Civil Order (CO)', NULL, 'In the High Court at Calcutta', NULL, '2003-07-14 00:00:00', NULL, 'South 24-parganas', 'OPPOSITE PARTY', NULL, 78, 'Jolly Sarkar', 'Aloke Banerjee', NULL, NULL, 'Sujeet Kumar Mishra,BA 13', NULL, '16.7.2003-Girish Chandra Gupta J-The Order is modified to the extent that the Petitioner shall be entitled to visit the children at the house of the opposite party every Sunday from 4 p.m. to 6 p.m. The Ld. Trial Court is directed to dispose of the pending application expeditiously. Application stands disposed of.', 'Minors & Guardians', 'Custody of Child', NULL, NULL, 'DISPOSED', 'With workable order', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (5, 'CO 898 of 2003', 2003, '', 'Debabrata Mukherjee', 'Dr. Birendra Kumar Banerjee', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-06-11 00:00:00', '', 'South 24-parganas', 'OPPOSITE PARTY', '19-Mar-2004', 10, 'Dr. Birendra Kumar Banerjee', 'Pranab Bhattacharyya', '', '', 'Basanta Kumar Sen, Advocate', 'The application for additional evidence on behalf of appellant rejected by Appeal Court.Application under Order 41 Rule 27 rejected prior to disposal of appeal.', '19.3.2004-Tapan Dutta J', 'Civil Procedure', 'Appeal', 'Additional Evidence', '', 'DISPOSED', 'Lost', 'CPC-Or 41 r 27', 'AIR 1952 Cal 368--2001(1) SCC 309--AIR 98 Cal 31 (DB)--AIR 87 SC 294--1994(2) CLJ 114', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (50, 'WP 10406 (W) of 2003', 2003, NULL, 'Kishore Kumar Das', 'The State of West Bengal & ors', 'Writ Petition (WP)', NULL, 'In the High Court at Calcutta', NULL, '2003-07-11 00:00:00', NULL, 'Burdwan', 'PETITIONER', NULL, 80, 'Kishore Kumar Das', 'Prabir Chakraborty', NULL, NULL, NULL, NULL, '28.8.2003-Pinaki Chandra Ghose J- The Petitioner is directed to shift his tea stall and the telephone booth from its present place within three months from date. In default of that the concerned authority shall take steps in accordance with law. The writ application is thus disposed of without, however,any order as to costs.', 'Land Law', 'Government Land', 'Unauthorised Occupation', NULL, 'DISPOSED', 'Lost', 'The Citizenship Act, 1955--The Rehabilitation of Displaced Persons & Eviction of Persons in Unauthorised Occupation of Land Act, 1951--The West Bengal Public Land (Eviction of Unauthorised Occupants) Act, 1962--The West Bengal Land Management Manual', NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (41, 'CO 1404 of 2003', 2003, NULL, 'Prasanta Gunguly', 'Bharat Singh', 'Civil Misc. Case-Civil Order (CO)', NULL, 'In the High Court at Calcutta', NULL, '2003-07-04 00:00:00', NULL, 'Burdwan', 'PETITIONER', NULL, 68, 'Prasanta Gunguly', 'Sanjib Mukherjee', NULL, NULL, NULL, NULL, '9.7.2003- Girish Chandra Gupta J-The application is dismissed. It is needless to mention here that if necessity is felt after evidence for local investigation /inspection, liberty is given to the petitioner to apply afresh for the same.', 'Civil Procedure', 'Commissions', 'Local Inspection', NULL, 'DISPOSED', 'Lost', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (12, 'FA 95 of 1996', 1996, NULL, 'Biswanath Adhikary', 'Asoke Adhikary & anr', 'Civil First Appeal (FA)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', NULL, '2003-06-15 00:00:00', 'To Oppose', 'North 24-parganas', 'RESPONDENT', NULL, 18, 'Ashoke Adhikary', 'Swapan Kr. Chakraborty', NULL, NULL, 'Soma Panda', NULL, NULL, NULL, NULL, NULL, 'For Hearing', 'PENDING', 'Ready for Hearing', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (18, 'SA 163 of 1997', 1997, '', 'Probodh Chandra Chandra', 'Nayan Ranjan Bhattacharyya', 'Civil Second Appeal (SA)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-06-16 00:00:00', 'To Oppose', '', 'RESPONDENT', '', 30, 'Nayan Ranjan Bhattacharyya', 'Timir Baran Banerjee', '', '', '', '', '29.8.2006-V.S. Sirpukar & Nadira Patheriya-(Lawazima for Final Order)
3.6.2008-Partha Sakha Dutta-Matter fixed on next tuesday', '', '', '', 'For Hearing', 'PENDING', 'Awaiting Listing', '', 'On Interference in Second Appeal--(Perverse Findings)--2003(4) SCC 161--2005(2) SCC 500--1999(7) SCC 288--1996(7) SCC 389 (Non consideration of relevant Documents)--2000(7) SCC 60 (On construction of Documents)--2001(4) SCC 262--1988(1) CHN 108 (Harsundar Sarkar) affirmed in 1993(1) CHN 307-2002(3) CHN 609 (Against-Illiterate Village Women is entitled to protection as that of Pardanashin Lady @ para 21 & 25)--1994(Supp 4) SCC 534=AIR 1994 SC 532--Sec 59 Limitation Act-- 1996(7) SCC
767--2006(5) SCC 353-AIR 1988 SC 1858--AIR 1992 SC 1604[Scope of interference in Second Appeal]--AIR 2005 SC 1008- @para 12,16--AIR 2001 SC 1273 @ para 32[Scope of second Appeal]
Respondent: AIR 1968 SC 956 @ para 5--AIR 1955 Cal DB 17 @ para 5 & 6--2004(9) SCC 468--44 IA 36', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (47, 'SA 54 of 1996', 1996, NULL, 'Sekhar Biswas', 'Tarit Baran Ghosh & ors', 'Civil Second Appeal (SA)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', NULL, '2003-07-14 00:00:00', 'To Apply', 'South 24-parganas', 'APPELLANT', NULL, 77, 'Sekhar Biswas', 'Atindra Kr. Mukherjee', NULL, NULL, 'Pradyumna Sinha', NULL, 'Original Plaint, Judgment to be given.', 'Tenancy ', 'Eviction', 'Reasonable Requirement', 'For Hearing', 'PENDING', 'Awaiting Listing', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (19, 'WPST 425 of 2003', 2003, '', 'Swapan Kumar Das', 'The State of West Bengal & ors', 'Article 226 from SAT (WP.ST)', 'Constitutional Writ Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-06-16 00:00:00', 'To Apply', '', 'PETITIONER', NULL, 73, 'Nilanjan Bhattacharjee', '', '', '', '', '', '', 'Service Jurisprudence', 'Punishment', 'Dismissal', 'Contested Application', 'PENDING', 'Awaiting Listing', 'Police Regulation  of Bengal', 'In Ranjit Thakur v. Union of India and Others (1986-I-LLJ-256), Their Lordships of the Supreme Court had interfered with the punishment only after coming to the conclusion that the punishment was an outrageous defiance of logic and was shocking. The punishment was disproportionate, perverse and irrational as their Lordships felt that on facts, Wednesbury and CCSU Test were not satisfied. Still in another case, B. C. Chaturvedi v. Union of India (1996-I-LLJ-1231)(SC) it was held that the High Court/Tribunal while exercising the power of judicial review could not normally substitute its own conclusion on penalty and impose some other penalty. If the punishment imposed by the Disciplinary Authority or the Appellate Authority shocks the conscience of the High Court/Tribunal, it would appropriately mould the relief, either by directing the Disciplinary Authority or Appellate Authority to reconsider the penalty imposed or to shorten the litigation, it may itself in rare cases impose appropriate punishment with cogent reasons in support thereof. Similar view was taken in Indian Oil Corporation Ltd. v. Ashoke Kr. Arora 1997 I CLR 659 (SC) that the Court will not intervene unless the punishment is wholly disproportionate. ', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (40, 'CO 1218 of 2003', 2003, '', 'Sannyashi Mondal', 'Baidyanath Bagdi & ors', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-07-04 00:00:00', '', 'Birbhum', 'PETITIONER', '01-Sep-2003', 24, 'Ashis Kumar Chowdhury', '', '', '', '', '', '', '', '', '', '', 'DISPOSED', 'For Non-Prosecution', '', '', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (27, 'MISC APPEAL 54 of 2003', 2003, '', 'Dilip Gupta & ors', 'Arijit Kr De', 'Miscellaneous Appeal', '', 'District Judge at Barasat', '', '2003-05-20 00:00:00', '', 'North 24-parganas', 'APPELLANT', '01-Jul-2003', 43, 'Bidhannagar Swimming Association', 'Bikash Ranjan Bhattacharyya', '', '', '', '', '', 'Civil Procedure', 'Temporary Injunction', 'against society', '', 'DISPOSED', 'Won', '', '1999(2) SCC 377--2002(4) SCC 68--1976(2) SCC 58--95 CWN 1022 para 9', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (11, 'WP 4097 (W) of 2003', 2003, '', 'Sibnarayan Mondal', 'State of West Bengal & ors', 'Writ Petition (WP)', '', 'In the High Court at Calcutta', '', '2003-05-28 00:00:00', '', 'Purulia', 'PETITIONER', '09-Jul-2003', 16, 'Sibnarayan Mondal', 'Sanjib Mukherjee', '', '', '', '', '', 'Education', 'Managing Committee', '', '', 'DISPOSED', 'Lost', 'School Code', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (39, 'CRM 2914 of 2003', 2003, '', 'Pran Gobinda Mitra', 'The State of West Bengal', 'Criminal Misc. Case (CRM)', '', 'In the High Court at Calcutta', '', '2003-07-04 00:00:00', '', '', 'PETITIONER', '08-Jul-2003', 64, 'Pran Gobinda Mitra', '', '', '', '', 'Accused under Section 420,34,465 & 468 IPC', '8.7.2003- Bail granted', 'Criminal Procedure', 'Anticipatory Bail', '', '', 'DISPOSED', 'Won', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (37, 'CRR 1024 of 2003', 2003, NULL, 'Dipak Gupta', 'Archana Gupta', 'Criminal Revision (CRR)', NULL, 'In the High Court at Calcutta', NULL, '2003-07-03 00:00:00', NULL, 'South 24-parganas', 'OPPOSITE PARTY', NULL, 60, 'Archana Gupta', 'Kamal Bandopadhyay', NULL, NULL, 'Dipankar Chakraborty-BA-2', NULL, '27.4.2004-Arunava Barua-The application is Dismissed. Brief Returned to client on 14.6.2004', 'Criminal Procedure', 'Maintenance', 'under 125 Cr.P.C', NULL, 'DISPOSED', 'Won', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (31, 'SA 75 of 1994', 1994, '', 'Nanda Kumar Roy', 'Batuk Nath Bhattacharyya', 'Civil Second Appeal (SA)', 'Civil Appellate Jurisdiction (Original Side)', 'In the High Court at Calcutta', '', '2003-06-10 00:00:00', 'To Oppose', 'South 24-parganas', 'RESPONDENT', '', 47, 'Batuk Nath Bhattacharyya', '', '', '', '', '', '14.3.2008-Tapan Kr. Dutt-Dismissed for default
11.4.2008-Tapan Kr. Dutt-Appeal restored with cost of Rs. 2500/- to be paid within 2 weeks', 'Tenancy ', 'Eviction', 'Reasonable Requirement', 'For Hearing', 'PENDING', 'Ready for Hearing', '', 'AIR 2005 SC 1008- @para 12,16--AIR 2001 SC 1273 @ para 32--2004(9) SCC 468', 'Yes', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (13, 'WP 1166 of 2003', 2003, '', 'Elegant Profin Pvt. Ltd', 'The Kolkata Municipal Corporation & ors', 'Writ Petition (WP)', 'Constitutional Writ Jurisdiction (Original Side)', 'In the High Court at Calcutta', '', '2003-06-16 00:00:00', 'To Oppose', 'Kolkata', 'Private Respondent', NULL, 22, 'Bagla Building Tenants Association', '', '', '', 'Jugal Porel for CMC, ', '', '', 'Municipal Law', 'Building ', 'Securing of Building', 'Court Application under Article 226', 'PENDING', 'Awaiting Listing', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (38, 'CRA 255 of 2003', 2003, NULL, 'Ramchandra Yadav', 'The State of West Bengal', 'Criminal Appeal (CRA)', NULL, 'In the High Court at Calcutta', NULL, '2003-07-04 00:00:00', NULL, 'South 24-parganas', 'APPELLANT', NULL, 63, 'Ramchandra Yadav', NULL, NULL, NULL, NULL, '15.7.2003-Nure Alam Choudhury & Amitava Barua JJ- Appeal admitted. Bail in connection with appeal filed.', 'Brief Returned to Kawal Dhari Jadav on August 17, 2003 upon obtaining receipt.', 'Criminal Procedure', 'Appeal', 'against conviction', NULL, 'DISPOSED', 'Brief returned to client', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (43, 'CO 1426 of 2003', 2003, '', 'Shib Narayan Kumar', 'Roma Sarkar', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-07-09 00:00:00', '', 'South 24-parganas', 'PETITIONER', '21-Jul-2003', 71, 'Shibnarayan Kumar', 'Asoke Chowdhury', '', '', '', '', '21.7.2003- Girish Chandra Gupta J- Application dismissed.', 'Civil Procedure', 'Witness', 'Recalling of Witness', '', 'DISPOSED', 'Lost', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (2, 'CO 1185 of 2003', 2003, '', 'Mrityunjoy Sarkar & Anr', 'Srijoni Construction & Anr', 'Civil Misc. Case-Civil Order (CO)', 'Civil Revision Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-06-10 00:00:00', '', 'South 24-parganas', 'OPPOSITE PARTY', '27-Jun-2003', 9, 'Ujjal Kanti Banerjee', 'Santanu Adhikary', '', 'Syamaprasanna Raychaudhury', '', '', '27.6.2003- Girish Gupta J- The Opposite Party shall file its objection to the injunction application within seven days, reply if any, thereto shall be filed by 7 days thereafter. The Learned Trial Court is directed to hear out the Injunction application within a period of six weeks from date. The Opposite party, shall not sell, alienate or encumber the suit property till disposal of the injunction application. Such order is passed without prejudice to the rights and contentions of the parties.', 'Civil Procedure', 'Temporary Injunction', '', '', 'DISPOSED', 'Lost', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (21, 'FMA 19 of 2001', 2001, '', 'Sukhi Shankar', 'Kishan Shankar', 'Civil Appeal from Order (FMA)', '', 'In the High Court at Calcutta', '', '2003-06-16 00:00:00', '', 'Paschim Medinipur', 'OPPOSITE PARTY', '13-Sep-2005', 72, 'Dwijadas Chakraborty', '', '', '', '', '16.7.2003- Aloke Chakrabarti & S.K.Gupta-There shall be stay of the Mat.Suit till disposal of appeal. The Appellant to put in Special Messenger cost within 7 days from date. The interim maintenance is enhanced to Rs.1200/- per month. The Appellant is directed to prepare informal paper books within 6 weeks from the date of notice of arrival of LCR', '13.9.2005-Bhaskar Bhattacharyya & S.K.Gupta-Appeal and Application dismissed', 'Matrimonial & Maintenance', '', '', '', 'DISPOSED', 'Won', '', '', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (1, 'WP 8103 (W) of 2003', 2003, '', 'Hansimuni Mandi', 'The West Bengal State Electricity Board & ors', 'Writ Petition (WP)', 'Constitutional Writ Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-05-20 00:00:00', 'To Apply', 'Paschim Medinipur', 'PETITIONER', NULL, 72, 'Dwijadas Chakraborty', '', '', '', '', '', '', 'Service Jurisprudence', 'Service Benefits', 'Payment', 'Listed Motion', 'PENDING', 'Awaiting Listing', '', '', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (6, 'WP 7449 (W) of 2003', 2003, '', 'Prabir Kumar Chakraborty & Anr', 'State of West Bengal & ors', 'Writ Petition (WP)', '', 'In the High Court at Calcutta', '', '2003-06-09 00:00:00', '', 'North 24-parganas', 'PETITIONER', '11-Jun-2004', 19, 'Dwaipayana Mitra', '', '', '', '', '', '', 'Apartment & Building', 'Government Tenement', 'Transfer', '', 'DISPOSED', 'Won', 'West Bengal Regulation on Transfer of Government Lands Act, 1993', '', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (33, 'CP 316 of 1981', 1981, '', 'Kolay Biscuits Company Pvt Ltd', 'In Liquidation', 'Company Petition (CP)', 'Original Jurisdiction', 'In the High Court at Calcutta', '', '2003-06-26 00:00:00', 'To Apply', '', 'Bidder', '28-Nov-2003', 50, 'Vishal Chokhani', 'Pradip Chakraborty', '', '', '', 'Re: Tamal Dutta', '28.11.2003-Pinaki Chandra Ghose-Sale Confirmed', 'Company Law', 'Winding up', 'Sale of Assets', '', 'DISPOSED', 'Won', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (20, 'WPLRT 426 of 2003', 2003, NULL, 'Jayanta Kumar Sen', 'The State of West Bengal & ors', 'Article 226 from LRTT (WPLRT)', NULL, 'In the High Court at Calcutta', NULL, '2003-06-16 00:00:00', NULL, NULL, 'PETITIONER', NULL, 73, 'Nilanjan Bhattacharjee', NULL, NULL, NULL, NULL, 'Whether the Judgment passed by Civil Court is non-est in view of Section 57 B of the W B Estates Acquisition Act', NULL, 'Land Law', 'Estate Acquisition', 'Vesting', NULL, 'DISPOSED', 'Won', NULL, '2001 WBLR (Cal)  689 DB', NULL, 'Counsel', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (44, 'APOT 16 of 2003', 2003, '', 'New India Assurance Co. Ltd', 'Sukanta Mitra', 'Appeal from Order Tendered (APOT)', '', 'In the High Court at Calcutta', '', '2003-07-10 00:00:00', '', '', 'APPELLANT', '22-Nov-2006', 74, 'New India Assurance Co. Ltd', '', '', 'Partha Sarathi Sengupta', '', 'GA 118 of 2003 for stay and G.A 117 of 2003 for Condonation of delay.Supplementary Affidavit filed by P.K.Das on 18th September, 2003, A/O to supplementary Affidavit received on December 5, 2003', 'Query of Partha Sarathi Sengupta, Senior Advocate
1. Payscale of Senior Assistants and Programmers. See Pg 422 of PB
2. Final outcome of the Writ petition filed in 1999
3. Non-existant Post
4. Page 17 @ para 22-Letter issued to Sukanta for appearing in Aptitude Test.', 'Service Jurisprudence', 'Promotion', '', '', 'DISPOSED', 'Lost', '', 'AIR 2002 SC 3645 @ para 4 & 5--2003(1) SCC 250 @ para 12--AIR 1986 SC 1200--AIR 2000 SC 594 @ para 13 to 17
Respondent Cited:AIR 1957 SC 227--AIR 1974 SC 1--AIR 1977 SC 2051--AIR 1983 SC 852--AIR 1989 SC 1972--1994(4) SCC 269', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (32, 'SA 64 of 1994', 1994, '', 'Sunita Das', 'Sikharani Nag & Anr', 'Civil Second Appeal (SA)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-06-11 00:00:00', 'To Oppose', 'South 24-parganas', 'RESPONDENT', '', 48, 'Sikharani Nag', 'Atindra Kr. Mukherjee', '', '', '', 'S.P. Talukdar J- Matter heard on 8.12.2003, 5.1.2004, 13.1.2004, 21.1.2004,
4.4.2005-S.P.Talukdar-Released from Part heard.
14.3.2008-Tapan Kr. Dutt-Dismissed for default.
28.3.2008-Tapan Kr. Dutt-Matter restored and be added to list', '', 'Tenancy ', 'Eviction', 'Reasonable Requirement', 'For Hearing', 'PENDING', 'Listed for Hearing', '', '', 'Yes', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (9, 'CO 1003 of 2003', 2003, '', 'Samar Nath Chatterjee', 'Shekhar Nath Chatterjee', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-06-11 00:00:00', '', 'Howrah', 'OPPOSITE PARTY', '02-Jul-2003', 13, 'Samar Nath Chatterjee', 'Apu Sen', '', '', '', 'Execution of Partition decree preferred by our client. The petitioner seeks stay of execution of the decree on the ground that a Second Appeal has been preferred and pending Or 41r 11 stay ought to be granted.', 'Brief Returned on 2.7.2003 as case became infructuous', 'Civil Procedure', 'Execution', 'Stay of Proceeding', '', 'DISPOSED-Fee Waived', 'Dismissed as Infructuous', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (46, 'CO 1453 of 2003', 2003, '', 'Monidip Biswas', 'Papiya Biswas', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-07-10 00:00:00', '', 'North 24-parganas', 'PETITIONER', '10-Sep-2003', 76, 'Monidip Biswas', 'Bikash Ranjan Bhattacharyya', '', '', '', 'The Learned Judge has failed to take note of the net monthly take home salary of the Petitioner.Judgment against: Order of Alimony cannot be modified by exercise of inherent power- 2003(1) CLJ 319', '10.9.2003- Girish Chandra Gupta J-The petitioner to pay a consolidated sum of Rs.2500/- per month. Order modified accordingly.', 'Matrimonial & Maintenance', 'Alimony Pendente lite', '', '', 'DISPOSED', '', 'CPC-Special Marriage Act, 1954', '2003(1) CLJ 319-Badal Ghosh Vs Suparna Ghosh ', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (8, 'CRR 2167 of 1998', 1998, '', 'Nani Gopal Das & Anr', 'The State of West Bengal', 'Criminal Revision (CRR)', '', 'In the High Court at Calcutta', '', '2003-06-11 00:00:00', '', 'Nadia', 'Party sought to be added', '04-Dec-2006', 760, 'Kartick Chandra Das', 'Atindra Kr. Mukherjee', '', 'Sekhar Basu', '', 'Criminal Proceeding under Essential Commodities Act', 'Order of confiscation under Section 6A of the Essential Commodities Act. Stay granted by High Court', 'Essential Commodities', 'Cotton & Textile', '', '', 'DISPOSED', 'Brief returned to client', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (28, 'SA 339 of 1998', 1998, '', 'Malina Prova Biswas', 'Aloke Kumar Biswas', 'Civil Second Appeal (SA)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-06-18 00:00:00', 'To Apply', 'Nadia', 'APPELLANT', '', 44, 'Malina Prova Biswas', 'Debabrata Saha Roy', '', '', '', '', 'Brief With Debuda', '', '', '', 'For Hearing', 'PENDING', 'Awaiting Listing', '', '', '', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (26, 'REF 212 of 2002', 2002, NULL, 'Sarmistha Mazumdar', 'Partha Mazumdar', 'Criminal Case', NULL, 'Sub-Divisional Court at Barrackpore', NULL, '2003-05-20 00:00:00', NULL, 'North 24-parganas', 'OPPOSITE PARTY', NULL, 42, 'Partha Mazumdar', 'Prabir Chakraborty', NULL, NULL, NULL, NULL, 'Brief Returned to Client on July 22, 2003 in HC.', 'Criminal Procedure', 'Maintenance', 'under 125 Cr.P.C', NULL, 'DISPOSED', 'Brief returned to client', NULL, NULL, NULL, 'Filing', NULL);
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (29, 'SAT 1566 of 2003', 2003, '', 'Shyamapada Das', 'Satya Charan Das & ors', 'Tender of Second Appeal (SAT)', 'Civil Appellate Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-06-23 00:00:00', 'To Apply', 'Burdwan', 'APPELLANT', NULL, 45, 'Shyamapada Das', 'Shovan Kumar', '', '', '', '', '', '', '', '', 'For Admission ', 'PENDING', 'Awaiting Listing', '', '', 'Yes', 'Filing', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (14, 'CO 1220 of 2003', 2003, '', 'Tapas Kanti Mondal', 'Md. Illias Middya & ors', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-06-16 00:00:00', '', 'Burdwan', 'PETITIONER', '07-Aug-2003', 24, 'Ashis Kumar Chowdhury', '', '', '', '', 'Application made in the Appellate stage for examination of a questioned document by handwriting expert.', '', 'Civil Procedure', 'Appeal', 'Additional Evidence', '', 'DISPOSED', 'Lost', 'CPC', 'A 1986 Cal 403, 413--1998 CWN 228, 235 (D.B)--2001(1) SCC 309 Additional Evidence--1997(6) SCC 507--1999(3) SCC 376--1999(6) SCC 104--1979(2) SCC 158--A 1997 SC 3243 @ 3244', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (4, 'CO 598 of 2003', 2003, '', 'Kokil Chandra Ghorai & ors', 'Akhil Chandra Ghorai & ors', 'Civil Misc. Case-Civil Order (CO)', '', 'In the High Court at Calcutta', '', '2003-06-09 00:00:00', '', 'Paschim Medinipur', 'OPPOSITE PARTY', '17-Feb-2004', 72, 'Dwijadas Chakraborty', '', '', '', '', '', 'Allowed by Aloke Kr. Basu J on 17.2.2004', 'Civil Procedure', 'Amendment', 'Plaint', '', 'DISPOSED', 'Lost', '', '', '', 'Counsel', '');
INSERT INTO public.casedet (bno, cno, year, courtno, ctitle, ctitle1, typeid, juriid, courtid, coram, date, action, dist, aforid, ddate, clid, name, ref, arec, scoun, orec, notes, lpros, catid, groupid, subgroupid, stageid, statusid, wsecid, statute, cit, ulist, asdt, fee) VALUES (3, 'CO 1043 of 2003', 2003, '', 'Satya Narayan Singh', 'Ramji Singh', 'Civil Misc. Case-Civil Order (CO)', 'Civil Revision Jurisdiction (Appellate Side)', 'In the High Court at Calcutta', '', '2003-06-09 00:00:00', '', 'South 24-parganas', 'OPPOSITE PARTY', '04-Jul-2003', 8, 'Ramji Singh', 'Debdas Acharyya', '', '', '', '', '4.7.2003-Girish Gupta J-Affidavit-in-opposition to the report of the Partition Commissioner shall be filed by the petitioner within 2 weeks, Affidavit-in-reply thereto, if any, to be filed within one week thereafter. The Trial Court is directed to dispose of the Suit within 2 months positively and the said direction is peremptory and mandatory.', 'Civil Procedure', 'Adjournment', '', '', 'DISPOSED', 'With workable order', '', '', '', 'Filing', '');


--
-- TOC entry 3263 (class 0 OID 24665)
-- Dependencies: 209
-- Data for Name: caveat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (1, '1898 of 2003', 2003, 'High Court at Calcutta', 1, 'Biswajit Chakraborty', '2003-06-09 00:00:00', '2003-09-06 00:00:00', 'Swapan Kr. Chakraborty', '', 'Mira Sen Roy', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (2, '1899 of 2003', 2003, 'High Court at Calcutta', 2, 'Manas Mukherjee', '2003-06-09 00:00:00', '2003-09-06 00:00:00', 'Swapan Kr. Chakraborty', '', 'Abhoy Krishna Chakraborty', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (3, '1973 of 2003', 2003, 'High Court at Calcutta', 494, 'Jalaluddin Ahmed Siddique', '2003-06-11 00:00:00', '2003-09-08 00:00:00', 'Manik Chandra Malakar', '', 'Masood Alam', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (4, '2173 of 2003', 2003, 'High Court at Calcutta', 37, 'Dinabandhu Kundu', '2003-06-20 00:00:00', '2003-09-17 00:00:00', 'Amitabha Basu', '', 'Sailendra Nath Ghosh', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (5, '2174 of 2003', 2003, 'High Court at Calcutta', 38, 'V.K.Mallick', '2003-06-20 00:00:00', '2003-09-17 00:00:00', 'Amitabha Basu', '', 'Pritwish Kumar Mitra', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (6, '2230 of 2003', 2003, 'High Court at Calcutta', 49, 'Onkar Nath Pandeya', '2003-06-25 00:00:00', '2003-09-22 00:00:00', 'Atindra Kr. Mukherjee', '', 'Pradip Bose', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (7, '2265 of 2003', 2003, 'High Court at Calcutta', 51, 'Ray Ban (P) Ltd', '2003-06-26 00:00:00', '2003-09-23 00:00:00', 'Kamal Bandopadhyay', '', 'Sujit Kumar Chowdhury', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (8, '2379 of 2003', 2003, 'High Court at Calcutta', 61, 'Prakash Ch. Hazra', '2003-07-04 00:00:00', '2003-10-01 00:00:00', 'Kamal Bandopadhyay', '', 'Tarapada Bangal', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (9, '2380 of 2003', 2003, 'High Court at Calcutta', 62, 'Ranu Das Gupta', '2003-07-04 00:00:00', '2003-10-01 00:00:00', 'Kamal Bandopadhyay', '', 'Krishna Sengupta', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (10, '2435 of 2003', 2003, 'High Court at Calcutta', 494, 'Jalaluddin Ahmed Siddique', '2003-07-09 00:00:00', '2003-10-06 00:00:00', 'Manik Chandra Malakar', '', 'Masood Alam', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (11, '2523 of 2003', 2003, 'High Court at Calcutta', 81, 'Calcutta Sports Association & Anr', '2003-07-14 00:00:00', '2003-10-11 00:00:00', 'Amitabha Basu', '', 'Sukanta Dey', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (12, '2524 of 2003', 2003, 'High Court at Calcutta', 82, 'Dr. Gora Ghosh', '2003-07-14 00:00:00', '2003-10-11 00:00:00', 'Atindra Kr. Mukherjee', '', 'D. J. Bhaumik', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (13, '2693 of 2003', 2003, 'High Court at Calcutta', 96, 'Shambhunath Biswas', '2003-07-23 00:00:00', '2003-10-20 00:00:00', 'Sanjib Mukherjee', '', 'Parboti Devi', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (14, '2723 of 2003', 2003, 'High Court at Calcutta', 99, 'Narendra Singh Chopra', '2003-07-24 00:00:00', '2003-10-21 00:00:00', 'Swapan Kr. Chakraborty', '', 'Sandhya Das', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (15, '2724 of 2003', 2003, 'High Court at Calcutta', 100, 'Ratan Chandra Nath', '2003-07-24 00:00:00', '2003-10-21 00:00:00', 'Swapan Kr. Chakraborty', '', 'Ranjit Kumar Nath', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (16, '2764 of 2003', 2003, 'High Court at Calcutta', 43, 'Arijit Kr. De', '2003-07-28 00:00:00', '2003-10-25 00:00:00', 'Bikash Ranjan Bhattacharyya', '', 'Bidhannagar Swimming Association', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (17, '2796 of 2003', 2003, 'High Court at Calcutta', 103, 'Pradip Mukherjee', '2003-07-29 00:00:00', '2003-10-26 00:00:00', 'Atindra Kr. Mukherjee', '', 'Sikha Rani Naskar', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (18, '2894 of 2003', 2003, 'High Court at Calcutta', 108, 'Bhanu Chatterjee & ors', '2003-08-04 00:00:00', '2003-11-01 00:00:00', 'Swapan Kr. Chakraborty', '', 'Ajoy Kumar Chatterjee', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (19, '2972 of 2003', 2003, 'High Court at Calcutta', 110, 'Shantana Ghosh', '2003-08-07 00:00:00', '2003-11-04 00:00:00', 'Aloke Banerjee', '', 'Avijit Ghosh', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (20, '2991 of 2003', 2003, 'High Court at Calcutta', 113, 'Shibani Mukherjee', '2003-08-08 00:00:00', '2003-11-05 00:00:00', 'Atindra Kr. Mukherjee', '', 'Ava Dey', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (21, '3157 of 2003', 2003, 'High Court at Calcutta', 124, 'Amal Mukherjee', '2003-08-20 00:00:00', '2003-11-17 00:00:00', 'Swapan Kr. Chakraborty', '', 'Sudarshan Mukherjee', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (22, '3158 of 2003', 2003, 'High Court at Calcutta', 124, 'Amal Mukherjee', '2003-08-20 00:00:00', '2003-11-17 00:00:00', 'Swapan Kr. Chakraborty', '', 'Sudarshan Mukherjee', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (23, '3160 of 2003', 2003, 'High Court at Calcutta', 125, 'Asis Sen & ors', '2003-08-20 00:00:00', '2003-11-17 00:00:00', 'Swapan Kr. Chakraborty', '', 'Gita Sen', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (24, '3237 of 2003', 2003, 'High Court at Calcutta', 134, 'Monoranjan Chakraborty', '2003-08-25 00:00:00', '2003-11-22 00:00:00', 'Atindra Kr. Mukherjee', '', 'Subrata Mukherjee', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (25, '3367-3388 of 2003', 2003, 'High Court at Calcutta', 135, 'MSTC Ltd', '2003-09-01 00:00:00', '2003-11-29 00:00:00', 'Tapas Kr. Sarkar', '', 'Prem Swarup Kaushal', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (26, '3387 of 2003', 2003, 'High Court at Calcutta', 146, 'Birendra Singh', '2003-09-02 00:00:00', '2003-11-30 00:00:00', 'Tanmay Chatterjee', '', 'Krishna Kumar Fogla', '');
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (27, '3505 of 2003', 2003, 'High Court at Calcutta', 494, 'Jalaluddin Ahmed Siddique', '2003-09-08 00:00:00', '2003-12-06 00:00:00', 'Manik Chandra Malakar', '', 'Masood Alam', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (28, '3506 of 2003', 2003, 'High Court at Calcutta', 157, 'Arabinda Patra', '2003-09-08 00:00:00', '2003-12-06 00:00:00', 'Swapan Kr. Chakraborty', '', 'Sekhar Mandal', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (29, '3558 of 2003', 2003, 'High Court at Calcutta', 163, 'Narendra Kumar Sengupta & ors', '2003-09-10 00:00:00', '2003-12-08 00:00:00', 'Pranab Bhattacharyya', '', 'Amitava Sengupta', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (30, '3607 of 2003', 2003, 'High Court at Calcutta', 165, 'Jhan Shankar Dev', '2003-09-12 00:00:00', '2003-12-10 00:00:00', 'Surya Chatterjee', '', 'Shib Shankar Bhandari', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (31, '3678 of 2003', 2003, 'High Court at Calcutta', 172, 'Kalyan Chakraborty', '2003-09-17 00:00:00', '2003-12-15 00:00:00', 'Biswadeb Chatterjee', '', 'Sandhya Chakraborty', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (32, '3767 of 2003', 2003, 'High Court at Calcutta', 176, 'Gyanesh Chandra', '2003-09-22 00:00:00', '2003-12-20 00:00:00', 'Atindra Kr. Mukherjee', '', 'Manojit Dutta', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (33, '3720-3730 of 2003', 2003, 'High Court at Calcutta', 135, 'MSTC Ltd', '2003-09-19 00:00:00', '2003-12-17 00:00:00', 'Tapas Kr. Sarkar', '', 'Prem Swarup Kaushal', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (34, '3834 of 2003', 2003, 'High Court at Calcutta', 178, 'Supriya Saha', '2003-09-23 00:00:00', '2003-12-21 00:00:00', 'Atindra Kr. Mukherjee', '', 'Sushama Das', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (35, '3874 of 2003', 2003, 'High Court at Calcutta', 180, 'Kailash Housing Company & ors', '2003-09-24 00:00:00', '2003-12-22 00:00:00', 'Swapan Kr. Chakraborty', '', 'Valecha Construction Pvt. Ltd.', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (36, '3989 of 2003', 2003, 'High Court at Calcutta', 494, 'Jalaluddin Ahmed Siddique', '2003-09-30 00:00:00', '2003-12-28 00:00:00', 'Manik Chandra Malakar', '', 'Masood Alam', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (37, '4048 of 2003', 2003, 'High Court at Calcutta', 51, 'Ray Ban (P) Ltd', '2003-10-28 00:00:00', '2004-01-25 00:00:00', 'Kamal Bandopadhyay', '', 'Sujit Kumar Chowdhury', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (38, '4041 of 2003', 2003, 'High Court at Calcutta', 201, 'Bijoy Kanta Jha', '2003-10-28 00:00:00', '2004-01-25 00:00:00', 'Swapan Kr. Chakraborty', '', 'Rajeshwar Prasad Jadav', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (39, '4042 of 2003', 2003, 'High Court at Calcutta', 103, 'Pradip Mukherjee', '2003-10-28 00:00:00', '2004-01-25 00:00:00', 'Atindra Kr. Mukherjee', '', 'Sikha Rani Naskar', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (40, '4049 of 2003', 2003, 'High Court at Calcutta', 61, 'Prakash Chandra Hazra', '2003-10-28 00:00:00', '2004-01-25 00:00:00', 'Kamal Bandopadhyay', '', 'Tarapada Bangal', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (41, '4060 of 2003', 2003, 'High Court at Calcutta', 202, 'Phanindra Neogi', '2003-10-29 00:00:00', '2004-01-26 00:00:00', 'Kamal Mukherjee', '', 'Belarani Dey', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (42, '4112 of 2003', 2003, 'High Court at Calcutta', 210, 'Soumendranath Dutta', '2003-11-03 00:00:00', '2004-01-31 00:00:00', 'Swapan Kr. Chakraborty', '', 'Karunamoy Sen', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (43, '4113 of 2003', 2003, 'High Court at Calcutta', 99, 'Narendra Singh Chopra', '2003-11-03 00:00:00', '2004-01-31 00:00:00', 'Swapan Kr. Chakraborty', '', 'Sandhya Das', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (44, '4150 of 2003', 2003, 'High Court at Calcutta', 55, 'Bank of Baroda ', '2003-11-05 00:00:00', '2004-02-02 00:00:00', 'Pranab Bhattacharyya', '', 'Radha Rani Bose', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (45, '4328 of 2003', 2003, 'High Court at Calcutta', 230, 'Ajit Mazumdar & ors', '2003-11-17 00:00:00', '2004-02-14 00:00:00', 'Samir Dutta', '', 'Samarendra Nath Dutta Chowdhury', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (46, '4374 of 2003', 2003, 'High Court at Calcutta', 62, 'Ranu Dasgupta', '2003-11-20 00:00:00', '2004-02-17 00:00:00', 'Kamal Bandopadhyay', '', 'Krishna Sengupta', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (47, '4375 of 2003', 2003, 'High Court at Calcutta', 222, 'Shambhu Nath Roy', '2003-11-20 00:00:00', '2004-02-17 00:00:00', 'Asoke Chowdhury', '', 'Shankar Nath Roy', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (48, '4434 of 2003', 2003, 'High Court at Calcutta', 96, 'Madanlal Agarwal', '2003-11-25 00:00:00', '2004-02-22 00:00:00', 'Sanjib Mukherjee', '', 'Parboti Devi', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (49, '4433 of 2003', 2003, 'High Court at Calcutta', 240, 'Mukta Sinha', '2003-11-25 00:00:00', '2004-02-22 00:00:00', 'Sanjib Mukherjee', '', 'Zakir Hossain', NULL);
INSERT INTO public.caveat (id, no, year, courtid, clid, cvenm, fdt, edt, ref, note, name, asto) VALUES (50, '4545 of 2003', 2003, 'High Court at Calcutta', 243, 'Ram Kumar Goel', '2003-12-03 00:00:00', '2004-03-01 00:00:00', 'Kalyan Bandopadhyay', '', 'Manish Goyal', NULL);


--
-- TOC entry 3264 (class 0 OID 24679)
-- Dependencies: 210
-- Data for Name: chember; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (1, 'Correspondence', 293, 'Trustees to Estate of Late R.D.Mehta', NULL, 'P.P.Ginwala', 'COMPLETED', '', NULL, NULL, '', 'Pradip Kumar Sinha & ors', '57/1A, Anath Deb Lane, Belgachia. Kolkata-700 037', 'Statutory notice of Eviction for alteration and parting with possession of tenanted premises issued under West Bengal Premises Tenancy Act, 1997', '2004-01-09 00:00:00', NULL, 'Registered Post with A/D', '', NULL, NULL, '', '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (2, 'Drafting', 417, 'Amar Kumar Sinha', '', '', 'COMPLETED', 'Drafting of Pleading', '2004-07-30 00:00:00', '', 'Special Leave Petition', '', '', '', NULL, NULL, '', '', NULL, NULL, '', '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (3, 'Drafting', 74, 'New India Assurance Co. Ltd', '', '', 'COMPLETED', 'Opinion in Writing', '2005-11-28 00:00:00', '', 'Opinion Sought in the matter of Rudra Narayan Sahoo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (4, 'Drafting', 19, 'Dwaipayana Mitra', '', '', 'COMPLETED', 'Drafting of Pleading', '2007-03-14 00:00:00', '', 'Drafting and Redrafting of the Petition under Article 226 of the Constitution of India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (5, 'Drafting', 74, 'New India Assurance Co. Ltd', '', '', 'COMPLETED', 'Opinion in Writing', '2007-06-15 00:00:00', '', 'Written Opinion on the claim of Sri Rajendra Nath Ghosh (Vehicle Number: WB-33/8515), Sri Debasish Mitra (Vehicle Number: WB-33A/0183) and Smt. Mala Mitra (Vehicle Numbers: WB-33/9925 & WB-33/4284) due to ''theft'' of their vehicles.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (6, 'Conveyance', 1558, 'Bhagwandas Bindawala', '', 'Atindra Kr. Mukherjee', 'COMPLETED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Agreement', '', '26-Jul-2007', 'Drafting of Development Agreement, Indemnity Bond, Power of Attorney, Possession Letter, Promissory Note, Acknowledgement of Debt', '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (7, 'Drafting', 1603, 'CLS Ltd.', 'Rajat Dutta', '', 'COMPLETED', 'Drafting of Pleading', '2007-06-14 00:00:00', '', 'Drafting of Writ Petition to be filed at High Court at Allahabad and Drafting of 3 Letters demanding Justice and Conference held with Anand Narayan Singh on 3 dates.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (8, 'Drafting', 1645, 'H.B.Dubey', '', '', 'COMPLETED', 'Drafting of Pleading', '2008-04-02 00:00:00', '', 'The Right to Information appeal of J.P. Jaiswal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (9, 'Drafting', 1318, 'Damodar Co-operative Milk Producers Union Ltd', '', 'Keshab Lal Mukherjee', 'COMPLETED', 'Opinion in Writing', '2008-05-08 00:00:00', '', 'Written Opinion on the query as whether increment in salary are payable to deliquent employees during pendency of the Disciplinary proceeding.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (10, 'Drafting', 1898, 'D.P. Wadhwa', '', '', 'COMPLETED', 'Opinion in Writing', '2008-08-05 00:00:00', '', 'Written Opinion pertaining to Land Acquisition', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (11, 'Drafting', 74, 'New India Assurance Co. Ltd', '', '', 'COMPLETED', 'Opinion in Writing', '2008-08-04 00:00:00', '', 'Opinion in Writing in respect of three Disciplinary Proceeding matters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (12, 'Drafting', 1902, 'KPC Medical College & Hospital, Jadavpur', '', 'Amitabha Basu', 'COMPLETED', 'Written Submission', '2008-08-19 00:00:00', '', 'Written Submission in connection with the procceedings under Building & Other Construction Workers (Regulation of Employment and Conditions of Service) Act 1996 before the Assessing Officer and Assistant Labour Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (13, 'Correspondence', 1935, 'Sasadhar Singha', 'Suhrid Sur', 'Keshab Lal Mukherjee', 'Sent', NULL, NULL, NULL, NULL, 'The Chairman, Hooghly Chinsurah Municipality', '', 'Demand of Justice regarding the stop work notice and non intimation of the reasoned order as per direction of the High Court', '2008-09-01 00:00:00', '04-Sep-2008', 'Registered Post with Acknowledgement Due', NULL, NULL, NULL, NULL, '');
INSERT INTO public.chember (chid, type, clid, name, asto, brief, stat, chtype, chdt, chtime, chwith, cradto, add, crdet, crsenddt, cradt, crsmode, cntype, cnddt, cnedt, cndet, fee) VALUES (14, 'Drafting', 1898, 'D.P. Wadhwa', '', '', 'PENDING', 'Drafting of Pleading', '2008-12-24 00:00:00', '', 'Drafting an agreement with State of West Bengal regarding acquisition of land', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');


--
-- TOC entry 3265 (class 0 OID 24691)
-- Dependencies: 211
-- Data for Name: citation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (1, 'Supreme Court of India', '2000(9) SCC 168', '2000-02-01 00:00:00', 'Civil Procedure', 'Admissions', 'Abatement', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 22 r 4', 'State of Kerala, Appellant V. Sridevi And Others', '', 'There was no need to invoke any of the Rules in Order 22 as there was no question of abatement since death of the sole respondent had taken place only after the judgment was delivered by the Sub-Court. The error which had crept in is that the appeal was filed against a person who was not then alive. In such a case Order 1 Rule 10 has to be invoked. There is no specified period of limitation for making an application in the aforesaid Rule and hence, if at all any application is necessary the same could be filed within three years under Article 137 of the Limitation Act. In the present case the application was filed much ahead of that time. It was filed on 22-5-1993. 
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (2, 'Supreme Court of India', '1999(3) SCC 109', '1999-01-22 00:00:00', 'Civil Procedure', 'Suits', 'Withdrawal', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 22 r 2, Or 1 r 10,', 'Gajraj Vs Sudha', '', 'Civil Procedure Code, 1908 - Order 22, r. 2, Or. 1 r. 10 - Nature of rights of legal Representative - They are bound by the pleadings of their predecessor in whose place they are to be substituted - A legal representative substituted cannot set up a new or individual right - He cannot take up a new and inconsistent plea contrary to the one taken up by the deceased - In view of the findings recorded by the trial Court that the legal representative on earlier occasions moved the under/Or. 1 r. 10 but failed, the High Court was not justified in observing that the proposed legal representatives can take up all other defences arising from their individual rights. ', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (3, 'Supreme Court of India', '1972(2) SCC 427', '1972-07-19 00:00:00', 'Civil Procedure', 'Discovery & Inspection', '', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 11 r 3', 'M.L.Sethi Vs R.P.Kapur', '', 'A document might be inadmissible in evidence yet it may contain information which may either directly or indirectly enable the party seeking discovery either to advance his case or damage the adversary''s case or which may lead to a trial of enquiry which may have either of these two consequences - Word `document'' in this context includes anything that is written or printed, no matter what the material may be upon which the writing or printing is inserted or imprinted - In passing the order for discovery, the Trial Court not acted illegally in the exercise of its jurisdiction as it deprived the respondent of his right to claim privilege for non-production of his pass book and personal accounts, because the stage for claiming privilege had not yet been reached. 
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (4, 'Supreme Court of India', '1995(6) SCC 50', '1995-09-06 00:00:00', 'Civil Procedure', 'Decree', 'Assignment', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 22 r 10', 'Surjit Singh & Ors Vs Harbans Singh & Ors', '', 'A decree relating to immovable property worth more than hundred rupees, if being assigned, was required to be registered. That has instantly been done. It is per se property, for it relates to the immovable property involved in the suit. It clearly and squarely fell within the ambit of the restraint order. In sum, it did not make any appreciable difference whether property per se had been alienated or a decree pertaining to that property. In defiance of the restraint order, the alienation/assignment was made. If we were to let it go as such, it would defeat the ends of justice and the prevalent public policy. When the Court intends a particular state of affairs to exist while it is in seisin of a lis, that state of affairs is not only required to be maintained, but it is presumed to exist till the Court orders otherwise. The Court, in these circumstances has the duty, as also the right, to treat the alienation/assignment as having not taken place at all for its purposes. Once that is so, Pritam Singh and his assignees, respondents herein, cannot claim to be impleaded as parties on the basis of assignment. Therefore, the assignees-respondents could not have been impleaded by the trial court as parties to the suit, in disobedience of its orders. The principles of lis pendens are altogether on a different footing. We do not propose to examine their involvement presently. All what is emphasised is that the assignees in the present facts and circumstances had no cause to be impleaded as parties to the suit', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (5, 'Supreme Court of India', '2002(2) SCC 256', '2002-01-18 00:00:00', 'Civil Procedure', 'Pleadings', 'Subsequent Event', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 6 r 17', 'Om Prakash Gupta Vs Ranbir B Goyal', '', 'The Court has power to take note of subsequent events and mould relief accordingly subject to the following conditions being satisfied. that the relief as claimed originally has by reason of subsequent events, become inappropriate or cannot be granted; that taking note of such subsequent event or changed circumstances would shorten litigation and enable complete justice to be done to the parties; and that such subsequent event is brought to the notice of the Court promptly and in accordance with the rules of procedural law so than the opposite party is not taken by surprise ( Para 11 and 12)
See Also: AIR 2003 SC 624/632--AIR 1999 SC 3041 (para 33)--AIR 1996 SC 2547--AIR 1992 SC 700
Relied upon in later decisions Reported in (2002) 3 SCC 98
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (6, 'Supreme Court of India', '1990(1) SCC 189', '1990-07-01 00:00:00', 'Civil Procedure', 'Order', 'Setting Aside', '2 Judges Bench', 'Code of Civil Procedure, 1908', '', '', '', 'Principles for setting aside consent order', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (7, 'Supreme Court of India', 'AIR 2003 SC 2462', '2003-07-01 00:00:00', 'Matrimonial & Maintenance', 'Divorce', 'Cruelty', '2 Judges Bench', 'Hindu Marriage Act, 1955', 'Sec 13', '', '', 'What constitutes Mental Cruelty. See Also: AIR 2002 SC 576/591--AIR 2002 SC 2582--AIR 1999 SC 1318--AIR 1994 SC 710--2007(4) SCC 51- 3 Judges (Samar Ghosh Vs Jaya Ghosh)', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (8, 'Supreme Court of India', '1994(1) SCC 243', '1993-11-05 00:00:00', 'Consumer Law', 'Consumer Protection', 'Housing Construction', '2 Judges Bench', 'Consumer Protection Act', 'Sec 2', 'Lucknow Development Authority Vs M. K. Gupta', '', 'If housing construction or building activity carried on by a private or statutory body was service within the meaning of clause (o) of Section 2 of the Act as it stood prior to inclusion of the expression ''housing construction'' in the definition of service by Ordinance No. 24 of 1993. As pointed out earlier the entire purpose of widening the definition is to include in it not only day to day buying and selling activity undertaken by a common man but even such activities which are otherwise not commercial in nature yet they partake of a character in which some benefit is conferred on the consumer. Construction of a house or flat is for the benefit of person for whom it is constructed. He may do it himself or hire services of a builder or contractor. The latter being for consideration is service as defined in the Act. Similarly when a statutory authority develops land or allots a site or constructs a house for the benefit of common man it is as much service as by a builder or contractor. The one is contractual service and other statutory service. If the service is defective or it is not what was represented then it would be unfair trade practice as defined in the Act. Any defect in construction activity would be denial of comfort and service to a consumer. When possession of property is not delivered within stipulated period the delay so caused is denial of service. Such disputes or claims are not in respect of immoveable property as argued but deficiency in rendering of service of particular standard, quality or grade. Such deficiencies or omissions are defined in sub-clause (ii) or clause (r) of Section 2 as unfair trade practice. If a builder of a house uses substandard material in construction of a building or makes false or misleading representation about the condition of the house then it is denial of the facility or benefit of which a consumer is entitled to claim value under the Act. When the contractor or builder undertakes to erect a house or flat then it is inherent in it that he shall perform his obligation as agreed to. A flat with a leaking roof, or cracking wall or substandard floor is denial of service. Similarly when a statutory authority undertakes to develop land and frame housing scheme, it, while performing statutory duty renders service to the society in general and individual in particular. The entire approach of the learned counsel for the development authority in emphasising that power exercised under a statute could not be stretched to mean service proceeded on misconception. It is incorrect understanding of the statutory functions under a social legislation. A development authority while developing the land or framing a scheme for housing discharges statutory duty the purpose and objective of which is service to the citizens. As pointed out earlier the entire purpose of widening the definitions is to include in it not only day to day buying of goods by a common man but even such activities which are otherwise not commercial but professional or service-oriented in nature. The provisions in the Acts, namely, Lucknow Development Act, Delhi Development Act or Bangalore Development Act clearly provide for preparing plan, development of land, and framing of scheme etc. Therefore if such authority undertakes to construct building or allot houses or building sites to citizens of the State either as amenity or as benefit then it amounts to rendering of service and will be covered in the expression ''service made available to potential users''. A person who applies for allotment of a building site or for a flat constructed by the development authority or enters into an agreement with a builder or a contractor is a potential user and nature of transaction is covered in the expression''service of any description''. It further indicates that the definition is not exhaustive. The inclusive clause succeeded in widening its scope but not exhausting the services which could be covered in earlier part. So any service except when it is free of charge or under a constraint of personal service is included in it. Since housing activity is a service it was covered in the clause as it stood before 1993. 
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (9, 'Supreme Court of India', '2004(3) SCC 137', '2004-01-23 00:00:00', 'Specific Relief', 'Recovery of Possession', 'Settled possession', '2 Judges Bench', 'Specific Relief Act', 'Sec 6', 'Sopan Sukhdeo Sable Vs.Assistant Charity Commissioner', '', 'There are two different sets of principles which have to be borne in mind regarding course to be adopted in case of forcible dispossession. Taking up the first aspect, it is true that where a person is in settled possession of property, even on the assumption that he has no right to remain in property, he cannot be disposed by the owner except by recourse of law. This principle is laid down in Section 6 of the Specific Relief Act, 1963. That Section says that if any person is dispossessed without his consent from immovable property other wise than in due course of law, he or any person claiming through him may, by suit, recover possession thereof, notwithstanding any other title that may be set up in such suit. That a person without title but in settled possession - as against mere fugitive possession - can get back possession if forcibly dispossessed or rather, if dispossessed otherwise than by due process of law, has been laid down in several cases. It was so held by this Court in Yashwant Singh v. Jagdish Singh, AIR 1968 SC 620, Krishna Ram Mohate v. Mrs. Shobha Venkata Rao, 1989 (4) SCC 131, at p. 136 : 1990 (1) RCR (Rent) 525 (SC), Ram Rattan v. State of U.P., 1977 (1) SCC 188 and State of U.P. v. Maharaia Dharmender Prasad Singh, 1989 (2) RCR(Civil) 31 (SC) : 1989 (2) SCC 505. The leading decision quoted in these rulings is the decision of the Bombay High Court in K. K. Verma v. Union of India, AIR 1954 Bom. 358. 

Now the other aspect of the matter needs to be notice. Assuming a trespasser ousted can seek restoration of possession under Section 6 of the Specific Relief Act, 1963 can the trespasser seek injunction against the true owner ? This question does not entirely depend upon Section 6 of the Specific Relief Act, but mainly depends upon certain general principles applicable to the law of injunctions and as to the scope of the exercise of discretion while granting injunction ? In Mahadeo Savlaram Sheika v. Pune Municipal Corporation, 1995 (2) RCR (Civil) 65 (SC) : 1995 (3) SCC 33, it was held after referring to Woodrofe on Law relating to injunction; L. C. Goyal Law of injunctions; David Bean ''Injunction'' Jayce on Injunctions and other leading Articles on the subject that the appellant who was a trespasser in possession could not seek injunction against the true owner. In that context this Court quoted Shiv Kumar Chadha v. M.C.D., 1993 (3) SCC 1661 : 1993 (3) RCR (Civil) 236 (SC) wherein it was observed that injunction is discretionary and that : 

Judicial proceedings cannot be used to protect or to perpetuate a wrong committed by a person who approaches the Court. 

Reference was also made to Dalpat Kumar v. Prahlad Singh, 1992 (1) SCC 719 : 1982 (3) RCR(Civil) 457 (SC) in regard to the meaning of the words ''prima facie case'' and ''balance of convenience'' and observed in Mahadeo''s case (supra) that : 

It is settled law that no injunction could be granted against the owner at the instance of a person in unlawful possession. 
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (18, 'Supreme Court of India', '1998(5) SCC 381', '1998-05-15 00:00:00', 'Civil Procedure', 'Pleadings', 'Conflict with Evidence', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 7 r 7', '', '', 'Conflict between Pleadings and Evidence in a suit under Section 20 of Specific Relief Act', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (19, 'Supreme Court of India', '2004 WBLR(1) 177', '2004-01-09 00:00:00', 'Civil Procedure', 'Amendment', 'Plaint', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 6 r 17', '', '', 'The Plaintiff ought to have amended the pleading in view of the defence taken by the Defendant in their Written Statement. Also see the Burden of Proof of Rent Receipts', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (10, 'Supreme Court of India', '1995(3) SCC 33', '1995-01-24 00:00:00', 'Civil Procedure', 'Temporary Injunction', 'Grant of', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 39 r 2', '', '', 'Interim injunction - Court should enquire on affidavit evidence and other material placed before the Court to find strong prima facie case and balance of convenience in favour of granting injunction otherwise irreparable damage or damage would ensue to the plaintiff - The Court should also find whether the plaintiff could adequately be compensated by damages if injunction is not granted - No injunction can be granted against rightful owner in favour of a person in unlawful possession - While exercising discretionary power, the Court should also adopt the procedure of calling upon the plaintiff to file a bond to the satisfaction of the Court that in the event of his failing in the suit to obtain the relief asked for in the plaint, he would adequately compensate the defendant for the loss ensued due to the order of injunction granted in favour of the plaintiff - The pecuniary jurisdiction of the Court of first instance should not impede nor be a bar to award damages beyond its pecuniary jurisdiction Civil Procedure Code, 1908 - Order 39, r. 1 - Injunction - Public project - The Courts in the cases where injunctions are to be granted should necessarily consider the effect on public purpose thereof and also suitably mould the relief Civil Procedure Code, 1908 - Sec. 115 - Effect of sub-s. (2) of s. 115 - It is not a bar to exercise revisional power u/s. 115(1) against appellate order 
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (11, 'Supreme Court of India', '2001(10) SCC 619', '2000-10-12 00:00:00', 'Civil Procedure', 'Appeal', 'Additional Evidence', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 41 r 27', 'State of Rajasthan Vs. T. N. Sahani And Others', '', 'It may be pointed out that this Court as long back as in 1963 in K. Venkataramiah v. Seetharama Reddy (AIR 1963 SC 1526) pointed out the scope of unamended provision of Order 41 Rule 27(c) that though there might well be cases where even though the court found that it was able to pronounce the judgment on the state of the record as it was, and so, additional evidence could not be required to enable it to pronounce the judgment, it still considered that in the interest of justice something which remained obscure should be filled up so that it could pronounce its judgment in a more satisfactory manner. This is entirely for the court to consider at the time of hearing of the appeal on merits whether looking into the documents which are sought to be filed as additional evidence, need be looked into to pronounce its judgment in a more satisfactory manner. If that be so, it is always open to the court to look into the documents and for that purpose amended provision of Order 41 Rule 21(b) CPC can be invoked. So the application under Order 41 Rule 27 should have been decided along with the appeal. Had the Court found the documents necessary to pronounce the judgment in the appeal in a more satisfactory manner it would have allowed the same; if not, the same would have been dismissed at that stage. But taking a view on the application before hearing of the appeal, in our view, would be inappropriate. Further the reason given for the dismissal of the application is untenable. The order under challenge cannot, therefore, be sustained. It is accordingly set aside. The application is restored to its file. The High Court will now consider the appeal and the application and decide the matter afresh in accordance with law. ', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (12, 'Supreme Court of India', '1999(3) SCC 457', '1999-03-16 00:00:00', 'Civil Procedure', 'Cause of Action', 'Joinder', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 1 r 3, Or 2 r 2', '', '', 'Joinder of Cause of Action- Para 14-These two provisions, namely, Order 1 Rule 3 and Order 2 Rule 3 if read together indicate that the question of joinder of parties also involves the joinder of causes of action. The simple principle is that a person is made a party in a suit because there is a cause of action against him and when causes of action are joined, the parties are also joined. 
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (13, 'Supreme Court of India', '1999(3) SCC 457', '1999-03-16 00:00:00', 'Evidence', 'Adverse Inference', '', '2 Judges Bench', 'Evidence Act', '', '', '', 'Para 25. A Division Bench of the Patna High Court in Devji Shivji v. Karsandas Ramji (AIR 1954 Pat 280) relying upon the decision of the Privy Council in Sardar Gurbakhsh Singh v. Gurdial Singh (AIR 1927 PC 230 : 32 CWN 119) and the Madhya Pradesh High Court in Gulla Kharagjit Carpenter v. Narsingh Nandkishore Rawat (AIR 1970 MP 225 : 1970 MPLJ 586) have also taken the same view. The Madhya Pradesh High Court also relied upon the following observation of the Calcutta High Court in Pranballav Saha v. Tulsibala Dassi (AIR 1958 Cal 713 : 63 CWN 258) : 
The very fact that the defendant neither came to the box herself nor called any witness to contradict evidence given on oath against her shows that these facts cannot be denied. What was prima facie against her became conclusive proof by her failure to deny. 
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (14, 'Supreme Court of India', '2004(4) SCC 252', '2004-03-09 00:00:00', 'Land Law', 'Land Reforms', 'Preemption', '2 Judges Bench', 'West Bengal Land Reforms Act, 1955', 'Sec 8', 'Gopal Sardar Vs Karuna Sardar', '', 'Section 5 of the Limitation Act has no application in case for preemption under Section 8 of the West Bengal Land Reforms Act, 1955', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (15, 'Supreme Court of India', '2004(7) SCC 107', '2004-01-23 00:00:00', 'Civil Procedure', 'Evidence', 'Marking of Exhibit', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 13 r 1, r 2, r 7', 'Dayamathi Bai Vs. K.M. Shaffi', '', 'Secondary Evidence-Mode of Proof-Admissibility of Certified Copy of documents to be raised at the time of admission and not at  later stage. Insufficiency of proof as to entitlement of adducing secondary evidence should be taken at trial before the document is marked as Exhibit and admitted to record and not at Appellate stage.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (16, 'Supreme Court of India', '2004(3) SCC 553', '2004-03-01 00:00:00', 'Constitutional Law ', 'Writs', 'Alternative Remedy', '2 Judges Bench', 'Constitution of India', 'Art 226', '', '', 'Court in a proceeding under Article 226 of the Constitution of India can grant relief even in case of disputed questions of fact. The monetary compensation can be granted even by writ Court notwithstanding alternative remedy by way of suit.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (17, 'Supreme Court of India', '1992(1) SCC 719', '1991-12-16 00:00:00', 'Civil Procedure', 'Temporary Injunction', 'Grant of', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 39 r 1', 'Dalpat Kumar Vs Prahlad Singh', '', 'Therefore, the burden is on the plaintiff by evidence aliunde by affidavit or otherwise that there is a prima facie case in his favour which need adjudication at the trial. The existence of the prima facie right and infraction of the enjoyment of his property or the right is a condition for the grant of temporary injunction. Prima facie case is not to be confused with prima facie title which has to be established, on evidence at the trial. Only prima facie case is a substantial question raised, bona fide, which needs investigation and a decision on merits. Satisfaction that there is a prima facie case by itself is not sufficient to grant injunction. The court further has to satisfy that non-interference by the Court would result in irreparable injury to the party seeking relief and that there is no other remedy available to the party except one to grant injunction and he needs protection from the consequences of apprehended injury or dispossession. Irreparable injury, however, does not mean that there must be no physical possibility of repairing the injury, but means only that the injury must be a material one, namely one that cannot be adequately compensated by way of damages. The third condition also is that the balance of convenience must be in favour of granting injunction. The Court while granting or refusing to grant injunction should exercise sound judicial discretion to find the amount of substantial mischief or injury which is likely to be caused to the parties, if the injunction is refused and compare it with that which is likely to be caused to the other side if the injunction is granted. If on weighing competing possibilities or probabilities of likelihood of injury and if the court considers that pending the suit quo, an the subject matter should be maintained in status quo, an injunction would be issued. Thus the Court has to exercise its sound judicial discretion in granting or refusing the relief of ad interim injunction pending the suit. 
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (20, 'Supreme Court of India', '2004(1) SCC 702', '2003-11-18 00:00:00', 'Civil Procedure', 'Evidence', 'Examination in Chief', '3 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 18 r 4', 'Ameer Trading Corporation Ltd Vs Shapoorji Data Processing Ltd', '', 'The matter may be considered from another angle. Presence of a party during examination-in-chief is not imperative. If any objection is taken to any statement made in the affidavit, as for example, that a statement has been made beyond the pleadings, such an objection can always be taken before the Court in writing and in any event, the attention of the witness can always be drawn while cross examining him. The defendant would not be prejudiced in any manner whatsoever the examination-in-chief is taken on an affidavit and in the event, he desires to cross-examine the said witness he would be permitted to do so in the open Court. There may be cases where a party may not feel the necessity of cross-examining a witness, examined on behalf of the other side. The time of the Court would not be wasted in examining such witness in open Court. 

Applying the aforementioned principles of interpretation of statute, we have no doubt in our mind that Order 18, Rules 4 and 5 are required to be harmoniously construed. Both the provisions are required to be given effect to and as Order 18, Rule 5 cannot be read as an exception to Order 18 Rule 4. 

', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (21, 'Supreme Court of India', '2004(6) SCC 415', '2004-08-05 00:00:00', 'Civil Procedure', 'Amendment', 'Plaint', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 6 r 17', 'Pankaja Vs Yelappa', '', 'There is no absolute rule that in every case where a relief is barred because of limitation an amendment should not be allowed. Discretion in such cases depends on the facts and circumstances of the case. Since the jurisdiction to allow or not to allow an amendment is discretionary, the same will have to be exercised on a judicious evaluation of the facts and circumstances in which the amendment is sought. If the granting of an amendment really subserves the ultimate cause of justice and avoids further litigation the same should be allowed. There can be no straitjacket formula for allowing or disallowing an amendment of pleadings. each case depends on the factual background of that case.
See also:2006(4) SCC 385--2006(6) SCC 498', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (22, 'Supreme Court of India', '1995(Supp 3) SCC 266', '1995-06-30 00:00:00', 'Civil Law', 'Adverse Possession', '', '2 Judges Bench', 'Limitation Act, 1963', 'Art 65', 'Pt. Shamboo Nath Tikoo Vs S. Gian Singh', '', 'When Permissive Possession is converted to Adverse Possession (para 24 to 40)', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (23, 'Supreme Court of India', '1995(Supp 3) SCC 266', '1995-06-30 00:00:00', 'Civil Procedure', 'Pleadings', 'Plea', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 8', 'Pt. Shamboo Nath Tikoo Vs S. Gian Singh', '', 'Point not raised in pleas set out in written statement- Finding rendered by Court on such point not sustainable as that would amount to altogether new case. (Para 20)', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (24, 'Supreme Court of India', '2003(4) SCC 675 = AIR 2003 SC 1386', '2003-03-13 00:00:00', 'Criminal Procedure', 'Inherent Power', 'Quashing of Proceeding', '2 Judges Bench', 'Code of Criminal Procedure, 1973', 'Sec 320', 'B.S. Joshi Vs State of Haryana', '', 'Para 7-The High Court has relied upon Madhu Limaye''s case for coming to the conclusion that since the offences under Sections 498A and 406, I.P.C. are non-compoundable, it would be impermissible in law to quash the FIR on the ground that there has been a settlement between the parties. The decision in Madhu Limaye''s case has been misread and misapplied by the High Court. The question considered in that case was when there was  @page-SC1389  a bar on the power of revision in relation to any interlocutory order passed in an appeal, enquiry, trial or other proceedings, what would be its effect on exercise of power under Section 482 of the Code. Sub-section (2) of Section 397 of Cr. P. C. providing that the power of revision conferred by sub-section (1) shall not be exercised in relation to any interlocutory order passed in any appeal, inquiry, trial or other proceedings was noticed and it was held that on a plain reading of Section 482, it would follow that nothing in the Code, which would include sub-section (2) of Section 397 also, shall be deemed to limit or affect the inherent powers of the High Court. The Court said that if we were to say that the said bar is not to operate in the exercise of the inherent power at all, it will be setting at naught one of the limitations imposed upon the exercise of the revisional powers but adopting a harmonious approach held that the bar provided in sub-section (2) of Section 307 operates only in exercise of the revisional power of the High Court meaning thereby that the High Court will have no power of revision in relation to any interlocutory order. It was further held that, then, in accordance with one of the other principles enunciated above, the inherent power will come into play, there being no other provision in the Code for the redressal of the grievance of the aggrieved party. In Madhu Limaye''s case, it was, inter alia, said that if for the purpose of securing the ends of justice interference by the High Court is absolutely necessary, then nothing contained in Section 397(2) can limit or affect the exercise of the inherent power by the High Court. By way of illustration, an example was given where without jurisdiction the Court takes cognizance or issues process and assumes it to be an interlocutory order, would it stand to reason to say that inherent power of the High Court cannot be exercised for stopping the criminal proceedings as early as possible, since being an interlocutory order, it was not revisable and resultantly the accused had to be harassed up to the end, though the order taking cognizance or issuing process was without jurisdiction. It was held that the bar will not operate to prevent the abuse of the process of the Court and/or to secure the ends of justice.
Para 8-It is, thus, clear that Madhu Limaye''s case does not lay down any general proposition limiting power of quashing the criminal proceedings or FIR or complaint as vested in Section 482 of the Code or extraordinary power under Article 226 of the Constitution of India. We are, therefore, of the view that if for the purpose of securing the ends of justice, quashing of FIR becomes necessary, Section 320 would not be a bar to the exercise of power of quashing. It is, however, a different matter depending upon the facts and circumstances of each case whether to exercise or not such a power.
Para 14-There is no doubt that the object of introducing Chapter XX-A containing Section 498A in the Indian Penal Code was to prevent the torture to a woman by her husband or by relatives of her husband. Section 498A was added with a view to punishing a husband and his relatives who harass or torture the wife to coerce her or her relatives to satisfy unlawful demands of dowry. The hyper-technical view would be counter productive and would act against interests of women and against the object for which this provision was added. There is every likelihood that non-exercise of inherent power to quash the proceedings to meet the ends of justice would prevent women from settling earlier. That is not the object of Chapter XXA of Indian Penal Code.
Para 15- In view of the above discussion, we hold that the High Court in exercise of its inherent powers can quash criminal proceedings or FIR or complaint and Section 320 of the Code does not limit or affect the powers under Section 482 of the Code.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (25, 'Supreme Court of India', 'AIR 1974 SC 325', '1974-02-01 00:00:00', 'Civil Procedure', 'Execution', 'Satisfaction of Decree', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 21 r 35', 'K.Rama Lingam & Ors Vs K.N. Krishna Reddi & Ors', '', 'See also AIR 1916 Mad 930(1), AIR 1916 Mad 202, 1882 ILR 4 All 184, AIR 1961 SC 137, AIR 1934 Cal 793', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (26, 'High Court at Calcutta', '1999(2) CLJ 259 = 1999(2) CHN 369', '1999-01-01 00:00:00', 'Stamp Duty', 'Impounding of Instruments', '', 'Single Bench', 'Indian Stamp Act', 'Sec 33, 35, 36', '', '', 'Duty of Court to impound an instrument improperly stamped. Inadmissibility as evidence of an under stamped instrument.AIR 2001 SC 1321 @ para 13=2001(4) SCC 197, 2002(1) CLJ 452, 2001(7) SCC 573,1978(3) SCC 236,1971(1) SCC 545 1969(1) SCC 597, AIR 1964 SC 1396, Indian Stamp Act-Sec 33,35,36,38 & 61, Evidence Act', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (27, 'Supreme Court of India', 'AIR 2002 SC 1279', '2002-01-01 00:00:00', 'Hindu Law', 'Succession and Inheritance', 'Women', '2 Judges Bench', 'Hindu Succession Act, 1955', 'Sec 14(2)', '', '', 'Culmination of Limited Estate of Hindu women to Full Estate. Life Interst/Estate how converted to Absolute/full Estate/interest. What is ''preexisting right''. How Section 14(2) operates as proviso to Sec 14(1). See: 1978(3) SCC 55--1994(2) SCC 511--AIR 1977 SC 1944--1997 (5) SCC 460--1998(6) SCC 314 @ para 26--1996(8) SCC 525--1997(9) SCC 613--1977(3) 99--2000(6) SCC 310--AIR 1978 SC 1051--1996(8) SCC 525, 128--1971 SC 745--AIR 2003 SC 160--AIR 2002 Cal 26--AIR 2001 SC 1754--AIR 2002 SC 1279--AIR 2001 SC 3062', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (28, 'High Court at Calcutta', '2001(1) CLJ 565', '2001-04-18 00:00:00', 'Matrimonial & Maintenance', 'Divorce', 'Mutual Consent', '2 Judges Bench', 'Hindu Marriage Act, 1955', 'Sec 13B', 'Rajesh Lakhotia Vs Smita Lakhotia', 'Altamas Kabir & Gorachand De', 'The compromise decree of divorce allowed in the appeal stage in view of the irretrivable break down of marriage and without waiting for the mandatory six months period.AIR 1995 SC 2170 relied upon', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (29, 'Supreme Court of India', '1996(11) SCC 257 = AIR 1997 SC 2181', '1996-10-08 00:00:00', 'Land Law', 'Land Reforms', 'Record of Rights', '2 Judges Bench', 'Evidence Act', 'Sec 114', 'State of Himachal Pradesh Vs Keshav Ram', '', 'Entry in the Record of Rights do not confer any title upon the person. Adverse presumption in case of entry in the Record of rights.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (30, 'Supreme Court of India', 'AIR 1964 SC 993', '1964-02-01 00:00:00', 'Civil Procedure', 'Res Judicata', 'Interlocutory Proceeding', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Sec 11', 'Arjun Singh Vs Mohindra Kumar', '', 'Though Section 11, C.P.C clearly contemplates the existence of two suits and the findings in the first being res judicata in the later suit, it is well established that the principle underlying it is equally applicable to the case of decisions rendered at successive stages of the same suit or proceedings.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (31, 'Supreme Court of India', 'AIR 1989 SC 1269', '1989-02-01 00:00:00', 'Evidence', 'Examination of Witness', 'Attesting Witness', '2 Judges Bench', 'Evidence Act', '', '', '', 'There is no presumption that an attesting witness of a document must be assumed to be aware of its contents.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (32, 'High Court at Calcutta', '2005(1) CLJ 169', '2004-12-10 00:00:00', 'Civil Law', 'Benami Transaction', '', '2 Judges Bench', 'Benami Transaction (Prohibition of the Right to Recover Property) Act, 1988', 'Sec 4', 'Subhendu Kumar Dutta Vs Dipankar Ghosh', 'Asok Kumar Gunguly & Tapan Kumar Dutt', 'The provisions of the Act only applies to suits filed after coming into force of the act and do not apply in pending suits (para 12) See 1995 (2) SCC 630 ', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (33, 'High Court at Calcutta', '2005(1) CLJ 188', '2004-05-07 00:00:00', 'Criminal Procedure', 'Personal Appearance', '', 'Single Bench', 'Code of Criminal Procedure, 1973', 'Sec 205', 'N.Agarwal Vs The State of West Bengal & Ors', 'Pravendu Narayan Sinha', 'In the given circumstances when the case is a warrant procedure case, there is no illegality in the Learned Magistrate''s order for considering the application under Section 205 after the first appearance of the accused in the Court below.Distinction drawn between V.K.Jains case and Bhaskar Industries Case (Para 7 & 8)', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (34, 'Supreme Court of India', 'AIR 1996 SC 196', '1995-09-11 00:00:00', 'Civil Procedure', 'Decree', 'Compromise', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 23 r 3', 'Bhoop Singh Vs Ram Singh Major', '', 'They meet out approval as for as they go. But something more is required to be said to find out the real purport of Clause (vi). It needs to be stated that sub-section (1) of Section 17 mandates that the instrument enumerated in Clauses (a) to (e) shall be registered compulsorily if the property to which they relate is immovbale property value of which is Rs. 100/- or upwards. When the document purports or operates to creat, declare, assign, limit or extingush, whether in present or in future, any right, title or interest therein, whether vested or contingent, it has to be registered compulsorily. The Act does not define instrument. Section 2(14) of the Indian Stamp Act, 1899, defines instrument to include every document by which any right or liability is, or purports to be, created, transferred, limited, extended, extinguished or recorded. Sub-section (2) of Section 17 of the Act engrafts exceptions to the instruments covered only by Clauses (b) and (c) of sub-section (1). We are concerned with Clause (vi) of sub-section (2). Clause (vi) relates to any decree or otder of a Court, except a decree or order expressed to be made on a compromise and comprising immovable property other than that which is the subject matter of the suit or proceeding. Clause (v) is relevant which in contrast reads thus : any document not itself creating, declaring, assigning, limiting or extingushing any right, title to interest of the value of one  humdered ruppes and upwards to or in immovable  property, but merely creating a right to obtain another instrument which will, when executed, create, declare, assign, limit or extinguish any such right, title or interest;. The Explanation amplifies that a contract for the sale of immovable property containing a recital of payment of any earnest  money or of the whole or any part of the purchase price shall not be deemed to be required or ever to have required registration.      
13. In other words, the court must enquire whether a document has recorded unqualified and unconditional words of present demise of right, title and interest in the property and included the essential terms of the same; if the document, including a compromise memo, extinguishes the rights of one and seeks to confer right,title or interest in prasenti in favour of the other, relating to immovable property of the value of Rs. 100/- and upwards, the document or compromise memo shall be compulsorily registered.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (35, 'High Court at Calcutta', '2005(1) CHN 606', '2005-02-04 00:00:00', 'Civil Law', 'Court Fees & Suit Valuation', 'on Probate', 'Single Bench', 'West Bengal Court Fees Act, 1970', '', 'Mihir Saha & Anr Vs Tanmoy Saha & Ors', 'Bhaskar Bhattacharyya', 'Court fees payable in a probate proceeding at the rate applicable on the date of grant. Distinguished 2004 (1) CHN 359,AIR 1960 SC 980: Relied on AIR 1970 Cal 236. See Also: 2005 (2) CLJ (Cal) 275', '', 'Yes');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (36, 'Supreme Court of India', 'AIR 1984 SC 930', '1984-01-03 00:00:00', 'Civil Law', 'Adverse Possession', '', '2 Judges Bench', 'Easement Act', '65', 'Gaya Parshad Dikshit vs Dr. Nirmal Chander', '', 'Mere termination of the licence of a licensee does not enable the licensee to claim adverse possession, unless and until he sets up a title to that of the licensor after termination of his licence. It is not merely unauthorised possession on termination of his licence that enables the licensee to claim title by adverse possession but there must be some overt act on the part of the licensee to show that he is claiming adverse title. It is possible that the licensor may not file an action for the purpose of recovering possession of the premises from the licensee after terminating his licence but that by itself cannot enable the licensee to claim title by adverse possession. Mere continuance of unauthorised possession even for a period of more than 12 years is not enough.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (37, 'Supreme Court of India', '2005(4) SCC 1', '2005-04-21 00:00:00', 'Civil Procedure', 'Appeal', 'Security Deposit', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 41 r 1(3), r 5 (5)', 'Sihor Nagar Palika Bureau Vs Bhabhlubhai Virabhai & Co', '', 'Money Decree, Application for grant of stay, Furnishing of Security instead of deposit of decree amount in Court, Discretion of the Appellate Court.', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (38, 'Supreme Court of India', '2005(4) SCC 120', '2004-11-25 00:00:00', 'Civil Procedure', 'Res Judicata', 'Writ proceeding', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Sec 11', 'Commissioner of Endowments and Ors Vs Vittal Rao & Ors', '', 'When even an issue is not formally framed but it is material and essential for decision of the case in the earlier proceeding, a finding on that issue would operate as res judicata in subsequent proceeding', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (39, 'Supreme Court of India', '2005(4) SCC 120', '2004-11-25 00:00:00', 'Civil Procedure', 'Judgment', 'Rectification', '2 Judges Bench', 'Constitution of India', 'Art 136, 226', 'Commissioner of Endowments and Ors Vs Vittal Rao & Ors', '', 'Statement of fact recorded in the judgment is conclusive of the facts so stated and cannot be contradicted by affidavit or other evidence. Party which feels that a fact has been wrongly recorded in the judgment must invite the attention of the judge recording the statement immediately to the said fact, while the matter is still fresh in his mind and seek rectification. Sometimes in a rare and appropriate case a party may be allowed to to resile from concession on the ground that the concessioon was made on a wrong appreciation of law and had lead to gross injustice but he cannot call in question the very fact of making the concession as recorded in the judgment', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (40, 'High Court at Calcutta', '2005(2) CLJ (Cal) 161 = 2005(3) CHN 337', '2005-07-07 00:00:00', 'Education', 'Recruitment Rules', 'Appointment', '5 Judges Bench', 'The Employment Exchange (Compulsory Notification of Vacancies) Act, 1959', '', 'Rabindra Nath Mahata Vs The State of West Bengal & ors', '', 'A person whose name is not sponsored by the employment exchange has a right to participate as a candidate in a selection process initiated by a school governed by 1969 Management Rules for recruiting and selecting a person for appointment as a member of the non-teaching staff. (Para 26) 
Cases Relied: Abu Taher Vs Abdul Wahab & Ors (Unreported)--2005 (1) WBLR (Cal) 130--1998 (2) CLJ 1 (Impliedly overruled)--1996 (6) SCC 216--AIR 1997 SC 2110 = 1997 (9) SCC 527--2000 (2) CHN 246--2000 (9) SCC 527--2000 (9) SCC 405--2005 (1) CLJ 193--1989 (2) SCC 754--1998 (2) SCC 1--AIR 2002 SC 681--1987 (3) SCC 308--2001 (1) CHN 204 (not applicable)--2000 (5) SCC 488 (sub silentio)--1999 WBLR 252--AIR 1998 SC 331', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (41, 'Supreme Court of India', '2005(2) CLJ (SC) 104', '2005-03-16 00:00:00', 'Civil Procedure', 'Appeal', 'Cross Objection', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 41 r 22', 'Hari Shankar Rastogi Vs Sri Sham Monohar & Ors', '', 'Cross objection in Second Appeal is treated like an appeal, Can be heard and determined inspite of withdrawal or dismissal of such second appeal. Cases Relied upon: 1999 (4) SCC 423', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (42, 'Supreme Court of India', '2005(6) SCC 344 = AIR 2005 SC 3353', '2005-08-02 00:00:00', 'Civil Procedure', 'Amendment', 'of Law', '3 Judges Bench', 'Code of Civil Procedure, 1908', '', 'Salem Advocate Bar Association, Tamil Nadu Vs Union of India', 'Y.K. Sabharwal, D.M.Dharmadhikari, Tarun Chatterjee', 'Effect of Amendment of the Code of Civil Procedure, 2002- Or 6 r 17, Or 18, Alternative Dispute Resolution, Sec 148, Art 227', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (43, 'Supreme Court of India', '1994(1) SCC 1', '1993-11-01 00:00:00', 'Civil Procedure', 'Inherent Power', 'To Recall Order', '2 Judges Bench', 'Code of Civil Procedure, 1908', '', '', '', 'Effect of Fraud on Court and the inherent power of the Court to recall an order obtained by fraud or  misrepresentation--2000 (3) SCC 581--1997 (3) SCC 542--1990 (1) SCC 189--2003 (1) SCW 1950 SC--1999 (4) SCC 396--1996 (2) SCC 533', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (44, 'Supreme Court of India', 'AIR 2005 SC 2813', '2005-06-01 00:00:00', 'Civil Procedure', 'Addition of Party', '', '3 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 1 r 10 (2)', '', '', 'See Para 13, 14, 15 and 17. No addition of third party in a suit for Specific Performance of Contract', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (45, 'Supreme Court of India', '2005(11) SCC 403', '2005-04-13 00:00:00', 'Civil Procedure', 'Addition of Party', 'In Trial Court', '2 Judges Bench', 'Code of Civil Procedure, 1908', 'Or 1 r 10 (2)', 'Amit Kumar Shaw v. Farida Khatoon', '', 'Para 8. On a combined reading of Order 1 Rule 10, Order 22 Rule 10 of the Code of Civil Procedure and Section 52 of the Transfer of Property Act, can an application for substitution by a subsequent transferee be rejected and the subsequent purchaser be non-suited altogether is the prime question for consideration in these appeals.
Para 9. The object of Order 1 Rule 10 is to discourage contests on technical pleas, and to save honest and bona fide claimants from being non-suited. The power to strike out or add parties can be exercised by the court at any stage of the proceedings. Under this rule, a person may be added as a party to a suit in the following two cases:
(1) when he ought to have been joined as plaintiff or defendant, and is not joined so, or
(2) when, without his presence, the questions in the suit cannot be completely decided. 
Para 10. The power of a court to add a party to a proceeding cannot depend solely on the question whether he has interest in the suit property. The question is whether the right of a person may be affected if he is not added as a party. Such right, however, will necessarily include an enforceable legal right.
Para 16. The doctrine of lis pendens applies only where the lis is pending before a court. Further pending the suit, the transferee is not entitled as of right to be made a party to the suit, though the court has a discretion to make him a party. But the transferee pendente lite can be added as a proper party if his interest in the subject-matter of the suit is substantial and not just peripheral. A transferee pendente lite to the extent he has acquired interest from the defendant is vitally interested in the litigation, where the transfer is of the entire interest of the defendant; the latter having no more interest in the property may not properly defend the suit. He may collude with the plaintiff. Hence, though the plaintiff is under no obligation to make a lis pendens transferee a party, under Order 22 Rule 10 an alienee pendente lite may be joined as party. As already noticed, the court has discretion in the matter which must be judicially exercised and an alienee would ordinarily be joined as a party to enable him to protect his interests. The court has held that a transferee pendente lite of an interest in immovable property is a representative-in-interest of the party from whom he has acquired that interest. He is entitled to be impleaded in the suit or other proceedings where his predecessor-in-interest is made a party to the litigation; he is entitled to be heard in the matter on the merits of the case.
', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (46, 'High Court at Calcutta', 'AIR 2003 Cal 165', '2003-06-01 00:00:00', 'Civil Procedure', 'Revision', '', 'Single Bench', 'Code of Civil Procedure, 1908', 'Sec 115', 'Mrityunjoy Sen Vs Sikha Sen', 'Subhrokamal Mukherjee', 'Effect of amended Section 115 of the Code of Civil Procedure. See also- 2003(6) SCC 659=AIR 2003 SC 2434 Shiv Shakti Co-op. Housing Society v. Swaraj Developers, 2005(6) SCC 344=AIR 2005 SC 2342 Gayatri Devi v. Shashi Pal Singh', '', 'Yes');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (47, 'High Court at Calcutta', '2004(4) CHN 241', '2004-11-01 00:00:00', 'Civil Procedure', 'Appeal', 'Additional Evidence', 'Single Bench', 'Code of Civil Procedure, 1908', '', '', '', 'Subsequent Events', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (48, 'Supreme Court of India', '2004(5) SCC 65', '2004-11-01 00:00:00', 'Consumer Law', 'Consumer Protection', 'Definition', '2 Judges Bench', 'Consumer Protection Act', '', '', '', 'Deficiency in Service:
1995 (2) SCC 150, 2000 (2) SCC 628, 1996 (6) SCC 361, 1997 (10) SCC 173, 1996 (11) SCC 23, 1994 (1) SCC 243', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (49, 'High Court at Calcutta', '2005(4) CHN 387', '2004-09-27 00:00:00', 'Civil Procedure', 'Evidence', 'Marking of Exhibit', 'Single Bench', 'Indian Stamp Act', '36', 'Mujibar Rahaman Mondal Vs Md Abdulla Molla & Ors', '', 'Sikritipatra-Virtually an agreement for sale. The Court has to judicially examine the matter as soon as the document is tendered in evidence and before it is marked as Exhibit in the case. Once a document has been marked as Exhibit is the case and has been used by the parties in examination and cross examination of their witnesses, it is Section 36 comes into operation.AIR1961 SC 1655 and AIR 1978 SC 1393 relied upon. See Section 61', '', '');
INSERT INTO public.citation (claw, court, citation, jdt, topic, rupon, subtopic, bstrength, actnm, sec, ctitle, coram, ratio, oruled, myjud) VALUES (50, 'High Court at Calcutta', '2002 WBLR (Cal) 604', '2002-03-26 00:00:00', 'Civil Procedure', 'Plaint', 'Return', 'Single Bench', 'Code of Civil Procedure, 1908', 'Or 7 r 10', 'Dinwara Engineers Pvt Ltd Vs Amitava Banerjee', 'A.K.Bisi', '1991(2) CLJ 226--AIR 1987 SC 1947--AIR 1987 SC 2085--AIR 1958 SC 245--AIR 1979 SC 989 Followed:
Para: it is set to law that the plaintiff has the right to value the relief claimed according to his own estimation and such valuation has to be ordinarily accepted. (The suit was valued by the plaintiff taking into consideration the relief claimed by way of mesne profits)
', '', '');


--
-- TOC entry 3266 (class 0 OID 24703)
-- Dependencies: 212
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (1, 'Mira Sen Roy', 'CLIENT', '', 'Swapan Kr. Chakraborty, Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (2, 'Abhoy Krishna Chakraborty', 'CLIENT', '', 'Swapan Kr. Chakraborty, Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (3, 'Pradip Kumar Chakraborty', 'CLIENT', '', 'Safik Sk.Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (4, 'Abdul Latif', 'CLIENT', '', 'Swapan Kr. Chakraborty, Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (5, 'Amitava Mandal', 'JUDGE-DISTRICT COURT', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', 'Purulia', '', '', '', '', '', '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (6, 'Pankaj Patwari', 'FRIEND', 'Tata Chemicals Limited', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '2282-0741', 'pankaj.patwari@tatachemicals.com', 'www.tatachemicals.com', '', '', '', '', 'Keya, Daughter', '', '17-May-2006', '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (7, 'Rajendra Mohan Dutta', 'Arbitrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (8, 'Ramji Singh', 'CLIENT', NULL, 'Debdas Acharyya, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (9, 'Ujjal Kanti Banerjee', 'CLIENT', 'Srijoni Construction', 'Santanu Adhikary, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (10, 'Dr. Birendra Kumar Banerjee', 'CLIENT', NULL, 'Pranab Bhattacharyya, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (11, 'Mukulika Sinha', 'JUDGE-DISTRICT COURT', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'Indranil', '', '17-Nov-2005', '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (12, 'Kartick Chandra Das', 'CLIENT', 'Sharee Kutir', 'Atindra Kr. Mukherjee, Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (13, 'Samar Nath Chatterjee', 'CLIENT', NULL, 'Apuda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (14, 'Goutam Kumar Das', 'CLIENT', '', 'Sachindranath Halder, Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (15, 'Sanjib Daruka', 'JUDGE-DISTRICT COURT', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (16, 'Sibnarayan Mondal', 'CLIENT', NULL, 'Sanjib Mukherjee, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (17, 'Tapan Pahari', 'CLIENT', NULL, 'Sanjib Mukherjee, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (18, 'Ashoke Adhikary', 'CLIENT', NULL, 'Swapan Kr. Chakraborty, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (19, 'Dwaipayana Mitra', 'SOLICITOR', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '2243-0787', '', '', 'KOLKATA', '', 'West Bengal', 'INDIA', '', NULL, NULL, 'High Court at Calcutta', 'Multiple Discipline', 'Send Greetings', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (20, 'Ajoy Jhunjhunwala', 'CLIENT', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (21, 'Dilip Singh Mehta', 'CLIENT', 'Multicon Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (22, 'Bagla Building Tenants Association', 'CLIENT', '', 'Sunil Bhartia', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (23, 'Patramita Roy', 'ADVOCATE', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'District Judges Court at Howrah', 'Multiple Discipline', 'Phone Call', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (24, 'Ashis Kumar Chowdhury', 'ADVOCATE', '', 'Sanjukta Barat, Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'High Court at Calcutta', 'Multiple Discipline', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (25, 'Amar Kumar Roy', 'CLIENT', NULL, 'Amlan Ghosh, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (26, 'Atanu Pramanick', 'CLIENT', '', 'Subir Pal, Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (27, 'Biswajit Chakraborty', 'FRIEND', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (28, 'Arvind Kr. Gupta', 'CLIENT', NULL, 'Pranab Bhattacharyya, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (29, 'Jayanta Kumar Saha', 'FRIEND', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Burdwan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (30, 'Nayan Ranjan Bhattacharyya', 'CLIENT', '', 'Timir Baran Banerjee, Sr. Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (31, 'Sanjit Hati', 'ADVOCATE', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', 'Burdwan', '', '', '', NULL, NULL, 'District Judges Court at Burdwan', 'Multiple Discipline', 'Send Greetings', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (32, 'Partha Chowdhury', 'ADVOCATE', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', 'Burdwan', '', '', '', NULL, NULL, '', '', 'Send Greetings', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (33, 'Joy Shankar Roy', 'JUDGE-DISTRICT COURT', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', 'Burdwan', '', '', '', '', '', '', '', '', NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (34, 'Pradip Chakraborty', 'Court Officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (35, 'Ganesh Chandra Patra', 'CLIENT', NULL, 'Asoke Chowdhury, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (36, 'TDI International India Ltd.', 'CLIENT', NULL, 'Jayashree Banerjee, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2337-0544', 'tdiinternational@yahoo.com, tdiinternational@rediffmail.com, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (37, 'Sailendra Nath Ghosh', 'CLIENT', NULL, 'Amitabha Basu, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (38, 'Pritwish Kumar Mitra', 'CLIENT', NULL, 'Amitabha Basu, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (39, 'Nabanita Ray', 'CLIENT', NULL, 'Basudeb Paul, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (40, 'Sunil Kumar Mazumdar', 'CLIENT', NULL, 'Abhishek Banerjee, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (41, 'Suka Oran @ Minji', 'CLIENT', NULL, 'Hanif Ali Sarkar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (42, 'Partha Mazumdar', 'CLIENT', NULL, 'Prabir Chakraborty, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (43, 'Bidhannagar Swimming Association', 'CLIENT', NULL, 'Bikash Ranjan Bhattacharyya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (44, 'Malina Prova Biswas', 'CLIENT', NULL, 'Debabrata Saharay, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (45, 'Shyamapada Das', 'CLIENT', '', 'Shovan Kumar, Advocate', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (46, 'Buddhadeb Hazra', 'CLIENT', NULL, 'Debasis Goon, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (47, 'Batuk Nath Bhattacharyya', 'CLIENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (48, 'Sikharani Nag', 'CLIENT', NULL, 'Atindra Kr. Mukherjee, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (49, 'Pradip Bose', 'CLIENT', NULL, 'Atindra Kr. Mukherjee, Advocate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.client (clid, name, cat, comp, desig, mobile, eml, radd, rph, rfax, oadd, oph, ofax, oeml, web, city, dist, state, country, sname, bday, an, prac, area, remme, note) VALUES (50, 'Vishal Chokhani', 'CLIENT', 'Comsource Data Systems & Information Technology (P', 'Pradip Chakraborty, Court Officer', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL);


--
-- TOC entry 3267 (class 0 OID 24718)
-- Dependencies: 213
-- Data for Name: diary; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (1, 144, 0, 'OA 3447 of 2003', '', 'Umapada Bhattacharyya', 'State of West Bengal', 'West Bengal Land Reforms and Tenancy Tribunal', '', '2005-07-22 00:00:00', '', NULL, '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (2, 424, 0, 'COMMERCIAL SUIT 99 of 2000', '', 'Shree Amar Textiles', 'Duke Fashions (Pvt) Ltd', 'In the City Civil Court at Kolkata', '', '2008-05-14 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (3, 472, 0, 'OA 628 of 2004', '', 'Gurudas Mukherjee', 'Union of India & Ors', 'In the Central Administrative Tribunal', '', '2008-05-15 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (4, 569, 0, 'ARBITRATION 1 of 2004', '', 'Indian Oil Corporation Ltd', 'Universal Gas Agency', 'Arbitral Tribunal', '', '2006-12-18 00:00:00', '', NULL, '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (5, 638, 0, 'OA 1686 of 2004', '', 'Asit Kumar Banerjee & Anr', 'State of West Bengal & Ors', 'In the High Court at Calcutta', '2nd Bench', '2008-09-19 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (6, 639, 0, 'OA 1688 of 2004', '', 'Tapas Goswami', 'State of West Bengal & Ors', 'In the State Administrative Tribunal', '2nd Bench', '2008-09-17 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (7, 368, 0, 'OA 834 of 2004', '', 'Kaji Kudrate Khoda', 'State of West Bengal & Ors', 'West Bengal Land Reforms and Tenancy Tribunal', '1st Bench', '2006-03-23 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (8, 51, 0, 'MISC CASE 229 of 2003', '', 'TDI International India Ltd', 'Airport Authority of India', 'District Judges Court at Barasat', '', '2009-02-07 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (9, 991, 0, 'ARBITRATION 2 of 2005', '', 'Sagar Roy', 'Bata India Ltd', 'Arbitral Tribunal', '', '2007-12-15 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (10, 1425, 0, 'OA 2249 of 2006', '', 'Miron Bala Gorai', 'The State of West Bengal & Ors', 'West Bengal Land Reforms and Tenancy Tribunal', '', '2008-05-09 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (11, 1737, 0, 'OA 924 of 2007', '', 'Indira Devi Rajak', 'State of West Bengal & Ors', 'West Bengal Land Reforms and Tenancy Tribunal', '', '2007-09-24 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (12, 1890, 0, 'OA 21 of 2007', '', 'Punjab National Bank', 'Md Assaduzzaman Khan & Anr', 'Debt Recovery Tribunal-II', 'Registrar-DRT-II', '2007-08-17 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (13, 2121, 0, 'COMP 40 of 2007', '', 'Md. Sultan', 'The Calcutta Punjab Club Ltd', 'Labour Court', '', '2008-06-16 00:00:00', '1st', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (14, 2367, 0, 'OA 598 of 2008', '', 'Nripendra Nath Basak', 'Union of India & Ors', 'In the Central Administrative Tribunal', '', '2008-09-23 00:00:00', '', '', '');
INSERT INTO public.diary (id, bno, appid, cno, appno, ct, ct1, court, coram, date, crtno, "time", item) VALUES (15, 2002, 0, 'WP 22580 (W) of 2007', '', 'Tikiapara Shree Nehru Shiksha Sadan (Junior High School) & Ors', 'Union of India & Ors', 'In the High Court at Calcutta', '', '2008-11-14 00:00:00', '', '', '');


--
-- TOC entry 3268 (class 0 OID 24732)
-- Dependencies: 214
-- Data for Name: docs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3269 (class 0 OID 24743)
-- Dependencies: 215
-- Data for Name: docsimp; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3270 (class 0 OID 24753)
-- Dependencies: 216
-- Data for Name: docsmisc; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (1, 'LA-1', 'How Legal Language Works-Wolcher.pdf', 'How Legal Language Works');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (2, 'LA-2', 'Froomkins Legal Writing Tips.doc', 'Legal Writing Tips');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (3, 'LA-3', 'Judicial Data Security.pdf', 'Paper on Judicial Data Security');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (4, 'LA-4', 'Chief Justices Conference-2007-Resolution.pdf', 'Resolution of Chief Justices Conference, 2007');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (5, 'LA-5', 'Registrar General Conference.pdf', 'Registrar General Conference');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (6, 'LA-6', 'How Facts make law.doc', 'How facts make Law');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (7, 'Stat-1', 'Code of Civil Procedure.doc', 'Code of Civil Procedure, 1908');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (8, 'Stat-6', 'Constitution of India.rtf', 'Constitution of India');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (9, 'Stat-7', 'THE COMPANIES (Court) Rules,1959.doc', 'Company Court Rules');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (10, 'Stat-7', 'Concept Paper -Companies Act.pdf', 'Corporate Laws');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (11, 'LA-7', 'Written Submssion of Soli Sorabjee in Power of Pardon Case.pdf', 'Written Submission of Soli J. Sorabjee');
INSERT INTO public.docsmisc (docid, refno, name, note) VALUES (12, 'LP-1', 'Krishna Dutta-Written Submission.doc', 'What Constitute Rent');


--
-- TOC entry 3271 (class 0 OID 24763)
-- Dependencies: 217
-- Data for Name: docstype; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3272 (class 0 OID 24770)
-- Dependencies: 218
-- Data for Name: filing; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (1, 12, 'Vokalatnama', 'Filed on behalf of Respondents', '2003-06-16 00:00:00', 'A-7219');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (2, 18, 'Vokalatnama', 'Filed on behalf of sole Respondent', '2003-06-16 00:00:00', 'A-7218');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (3, 28, 'Vokalatnama', 'Vokalatnama filed by self and Debabrata Saharay', '2003-06-19 00:00:00', 'A-7486');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (4, 55, 'Affidavit-of-Competency', 'filed on', '2003-07-25 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (5, 55, 'Vokalatnama', 'filed on', '2003-07-25 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (6, 44, 'Paper Book', 'filed in Department', '2004-02-17 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (7, 354, 'Vokalatnama', 'on behalf of Respondent on change', '2004-03-29 00:00:00', 'A-4406');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (8, 358, 'Vokalatnama', 'on behalf of Respondent', '2004-04-02 00:00:00', 'A-4675');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (9, 72, 'Affidavit-of-Compliance', 'Affirmed by N.K.Singh AGM (in-Charge) on May 5, 2004', '2004-05-07 00:00:00', 'In Court');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (10, 226, 'Paper Book', '2 copies of paper Books filed in Department', '2004-06-11 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (11, 444, 'Vokalatnama', 'on behalf of Respondents', '2004-07-02 00:00:00', 'A-8954');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (12, 460, 'Vokalatnama', 'on behalf of Respondent no.1', '2004-07-02 00:00:00', 'A-8955');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (13, 415, 'Vokalatnama', 'on behalf of Respondents', '2004-07-16 00:00:00', 'A-9763');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (14, 72, 'Affidavit-of-Compliance', 'affirmed by Rabisankar Sengupta', '2004-08-11 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (15, 518, 'Vokalatnama', 'on behalf of Respondent', '2004-08-10 00:00:00', 'A-11062');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (16, 581, 'Vokalatnama', 'Respondent No.3', '2004-09-14 00:00:00', 'A-13377');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (17, 582, 'Vokalatnama', 'Respondent No. 1', '2004-09-14 00:00:00', 'A-13376');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (18, 503, 'Vokalatnama', 'on behalf of Respondent No. 1 only', '2004-09-24 00:00:00', 'A-14173');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (19, 194, 'Vokalatnama', 'on behalf of all Respondents', '2004-10-04 00:00:00', 'A-14779');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (20, 226, 'Talabana', 'Rs 5.00', '2004-10-12 00:00:00', 'A-14091');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (21, 424, 'Vokalatnama', 'by Defendants', '2004-12-09 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (22, 52, 'Special Messenger Cost', 'for sending down LCR-Rs 30/-', '2004-12-20 00:00:00', 'W-1067');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (23, 580, 'Vokalatnama', 'on behalf of opposite party', '2004-12-16 00:00:00', 'A-17152');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (24, 93, 'Special Messenger Cost', 'Deposited Rs 30/- for bringing LCR', '2005-01-25 00:00:00', 'W-1152');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (25, 434, 'Vokalatnama', 'on behalf of sole Respondent', '2005-02-02 00:00:00', 'A-1535');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (26, 784, 'Vokalatnama', 'Vokalatnama on behalf of both respondents', '2005-03-08 00:00:00', 'A-3625');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (27, 785, 'Vokalatnama', 'on behalf of Respondents no 1 & 3', '2005-03-16 00:00:00', 'A-4068');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (28, 782, 'Vokalatnama', 'on behalf of Appellant', '2005-03-22 00:00:00', 'A-4451');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (29, 785, 'Vokalatnama', 'on behalf of all respondents', '2005-03-28 00:00:00', 'A-4680');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (30, 845, 'Vokalatnama', 'on behalf of Respondent no. 1-5 filed by Suhrid Sur, Advocate', '2005-04-21 00:00:00', 'A-5907');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (31, 546, 'Special Messenger Cost', 'Deposited for bringing LCR-Rs 100/-', '2005-05-16 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (32, 896, 'Vokalatnama', 'on behalf of sole Respondent', '2005-06-13 00:00:00', 'A-8466');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (33, 962, 'Vokalatnama', 'on behalf of sole Respondent', '2005-07-27 00:00:00', 'A-11095');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (34, 558, 'Vokalatnama', 'on behalf of Respondent no. 1 to 3', '2005-02-04 00:00:00', 'A-1697');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (35, 1139, 'Vokalatnama', 'on behalf of Respondents no. 1,2 and 7', '2005-12-22 00:00:00', 'A -18212');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (36, 1126, 'Vokalatnama', 'On behalf of Respondent No. 1,2 & 7', '2005-12-22 00:00:00', 'A-18213');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (37, 1169, 'Vokalatnama', 'on behalf of Respondent no.2', '2006-02-16 00:00:00', 'A-6788');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (38, 1120, 'Petition', 'for dispensing of filing Certified copy', '2006-02-07 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (39, 1232, 'Vokalatnama', 'on behalf of sole Rspondent', '2006-03-27 00:00:00', 'A-4685');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (40, 531, 'Vokalatnama', 'on behalf of Respondent no. 1', '2005-02-04 00:00:00', 'A-1695');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (41, 1290, 'Vokalatnama', 'on behalf of Opposite party no.1', '2006-05-17 00:00:00', 'A-7998');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (42, 796, 'Vokalatnama', 'on behalf of Respondent', '2006-05-08 00:00:00', 'A-7543');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (43, 1209, 'Paper Book', '2 copies filed in Department', '2006-05-18 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (44, 1137, 'Paper Book', '2 copies filed in Department', '2006-05-18 00:00:00', '');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (45, 1346, 'Vokalatnama', 'on behalf of Respondent', '2006-06-09 00:00:00', 'A-8801');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (46, 1361, 'Vokalatnama', 'on behalf of OP2', '2006-06-27 00:00:00', 'A-9831');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (47, 1364, 'Vokalatnama', 'on behalf of Sole Respondent', '2006-06-27 00:00:00', 'A-9813');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (48, 1365, 'Vokalatnama', 'on behalf of Appellant by Sukanta Chakraborty', '2006-06-27 00:00:00', 'A-9814');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (49, 1375, 'Vokalatnama', 'on behalf of Respondent no. 6 to 11 & 14', '2006-07-05 00:00:00', 'A-10206');
INSERT INTO public.filing (fid, bno, type, acom, fdt, no) VALUES (50, 1144, 'Paper Book', 'Filed in Court', '2006-08-03 00:00:00', '');


--
-- TOC entry 3273 (class 0 OID 24779)
-- Dependencies: 219
-- Data for Name: ifiling; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3274 (class 0 OID 24790)
-- Dependencies: 220
-- Data for Name: introl; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (1, 73, 'CAN 7020 of 2003', 2003, '', '2003-08-13 00:00:00', '', NULL, 'For stay of execution of Decree', 'APPELLANT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (2, 95, 'CAN 6703 of 2003', 2003, '', '2003-08-25 00:00:00', '', '12-Sep-2006', 'For stay of execution of Decree', 'OPPOSITE PARTY', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (3, 93, 'CAN 8139 of 2003', 2003, '', '2003-09-15 00:00:00', '', '09-Jan-2008', 'For Stay of Operation of Order', 'APPELLANT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (4, 124, 'CAN 8650 of 2003', 2003, '18', '2003-09-24 00:00:00', 'To Apply', NULL, 'For stay of further proceedings', 'APPELLANT', 'PENDING', 'Aloke Chakrabarti & S.K.Gupta', 'Stay in connection with an appeal against preliminary partition decree', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (5, 153, 'CAN 8691 of 2003', 2003, '', '2003-09-29 00:00:00', '', '30-Sep-2005', 'For stay of execution of Decree', 'OPPOSITE PARTY', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (6, 153, 'CAN 8760 of 2003', 2003, '', '2003-09-29 00:00:00', 'To Oppose', NULL, 'For additional evidence in Appeal', 'OPPOSITE PARTY', 'PENDING', 'Dilip Seth & R.N. Sinha', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (7, 62, 'CAN 9111 of 2003', 2003, '', '2003-11-05 00:00:00', 'To Oppose', NULL, 'For Appropriate Orders', 'OPPOSITE PARTY', 'DISPOSED', 'M.H.S. Ansari', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (8, 61, 'CAN 443 of 2001', 2001, '', '2003-11-10 00:00:00', '', '19-Jan-2006', 'For Substitution of Party(s)', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (9, 180, 'GA 3551 of 2003', 2003, '', '2003-11-12 00:00:00', '', NULL, 'For appointment of Receiver', 'Receiver', 'PENDING', 'Jayanta Kr. Biswas', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (10, 194, 'CAN 9981 of 2002', 2002, '11', '2003-11-30 00:00:00', 'To Oppose', NULL, 'For Temporary Injunction', 'OPPOSITE PARTY', 'PENDING', 'Amitava Lala', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (11, 225, 'T 635 of 2003', 2003, '16', '2003-12-11 00:00:00', 'To Apply', NULL, 'For Interim Relief', 'PETITIONER', 'PENDING', 'Pinaki Chandra Ghose', 'Section 38 rule 1 to 5 of CPC', '', 'Arbitration and Conciliation Act, 1996
Code of Civil Procedure', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (12, 46, 'CAN 10043 of 2003', 2003, '', '2003-12-04 00:00:00', '', '01-Sep-2004', 'For modification / variation of Final Order', 'PETITIONER', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (13, 147, 'CAN 10804 of 2003', 2003, '', '2003-12-24 00:00:00', 'To Apply', NULL, 'For Custody of Children', 'PETITIONER', 'PENDING', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (14, 167, 'CAN 10689 of 2003', 2003, '', '2003-12-24 00:00:00', 'To Apply', NULL, 'For stay of operation of Order', 'PETITIONER', 'PENDING', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (15, 249, 'CAN 4993 of 2003', 2003, '', '2004-01-12 00:00:00', 'To Oppose', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'PENDING', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (16, 250, 'CAN 10228 of 2003', 2003, '', '2004-01-12 00:00:00', '', '05-Jul-2006', 'For taking into consideration Subsequent Events', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (17, 261, 'CAN 178 of 2004', 2004, '18', '2004-01-16 00:00:00', 'To Oppose', NULL, 'For Temporary Injunction', 'RESPONDENT', 'PENDING', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (18, 273, 'CRAN 129 of 2004', 2004, '27', '2004-01-28 00:00:00', 'To Apply', NULL, 'For Condonation of delay u/s 5 of Limitation Act', 'PETITIONER', 'PENDING', 'Debi Prosad Sengupta', '', '17.2.2004-Pravatendu Narayan Sinha J-To serve copy upon the opposite parties intimating that the matter shall appear two weeks hence as Listed Motion.', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (19, 279, 'CAN 770 of 2004', 2004, '', '2004-01-30 00:00:00', '', '09-Mar-2004', 'For Temporary Injunction', 'APPELLANT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (20, 290, 'CAN 1114 of 2004', 2004, '', '2004-02-12 00:00:00', '', NULL, 'For stay of execution of Decree', 'APPELLANT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (21, 289, 'CAN 761 of 2004', 2004, '', '2004-02-08 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (22, 288, 'CAN 2647 of 2003', 2003, '', '2004-02-08 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (23, 287, 'CAN 2646 of 2003', 2003, '', '2004-02-08 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (24, 302, 'CAN 1129 of 2004', 2004, '', '2004-02-19 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (25, 303, 'CAN 759 of 2004', 2004, '', '2004-02-19 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (26, 305, 'CAN 930 of 2004', 2004, '', '2004-02-19 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (27, 304, 'CAN 924 of 2004', 2004, '', '2004-02-19 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (28, 299, 'CAN 925 of 2004', 2004, '', '2004-02-19 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (29, 319, 'CAN 778 of 2004', 2004, '33', '2004-03-03 00:00:00', 'To Oppose', NULL, 'For recalling of an Order', 'RESPONDENT', 'PENDING', 'Pratap Kumar Ray', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (30, 327, 'CAN 1951 of 2004', 2004, '', '2004-03-12 00:00:00', '', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (31, 317, 'CAN 1832 of 2004', 2004, '', '2004-03-04 00:00:00', 'To Apply', NULL, 'For Temporary Injunction', 'APPELLANT', 'PENDING', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (32, 361, 'CAN 2824 of 2004', 2004, '', '2004-03-31 00:00:00', '', '14-Jun-2004', 'For stay of operation of Order', 'APPELLANT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (33, 362, 'CAN 3087 of 2004', 2004, '', '2004-04-08 00:00:00', '', NULL, 'For stay of operation of Order', 'APPELLANT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (34, 372, 'CAN 9886 of 2003', 2003, '', '2004-04-21 00:00:00', '', '27-Sep-2005', 'For stay of operation of Order', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (35, 139, 'CAN 10648 of 2003', 2003, '', '2003-12-01 00:00:00', '', NULL, 'For Temporary Injunction', 'APPELLANT', 'PENDING', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (36, 460, 'CAN 2706 of 2004', 2004, '', '2004-07-01 00:00:00', '', NULL, 'For Temporary Injunction', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (37, 471, 'CAN 1013 of 2004', 2004, '', '2004-07-09 00:00:00', '', NULL, 'For stay of operation of Order', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (38, 306, 'CAN 1137 of 2003', 2003, '18', '2004-08-12 00:00:00', 'To Oppose', NULL, 'For stay of execution of Decree', 'RESPONDENT', 'DISPOSED', 'Aloke Chakrabarti & S.P. Talukdar', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (39, 531, 'CAN 3381 of 2004', 2004, '', '2004-08-15 00:00:00', 'To Oppose', NULL, 'For Temporary Injunction', 'RESPONDENT', 'PENDING', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (40, 481, 'CAN 7252 of 2004', 2004, '', '2004-08-23 00:00:00', '', NULL, 'For stay of execution of Decree', 'APPELLANT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (41, 555, 'CAN 7706 of 2004', 2004, '', '2004-09-02 00:00:00', 'To Apply', NULL, 'For Temporary Injunction', 'APPELLANT', 'PENDING', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (42, 597, 'CAN 8377 of 2003', 2003, '', '2004-09-19 00:00:00', 'To Oppose', NULL, 'For stay of further proceedings', 'RESPONDENT', 'PENDING', '', '3.9.2004-Asoke Gunguly & Tapan Dutt-Appeal admitted.Stay of Title Suit. Pleader Commissioner may complete the commission work but no further decree may be passed till 30.11.2004', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (43, 592, 'CRAN 1769 of 2004', 2004, '27', '2004-10-05 00:00:00', 'To Apply', NULL, 'For Bail in Connection with Appeal', 'Accused', 'PENDING', 'Debi Prosad Sengupta', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (44, 521, 'CAN 8978 of 2004', 2004, '', '2004-10-06 00:00:00', '', '09-Jun-2006', 'For stay of operation of Order', 'APPELLANT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (45, 418, 'CAN 9233 of 2004', 2004, '', '2004-10-14 00:00:00', 'To Apply', NULL, 'For Temporary Injunction', 'APPELLANT', 'PENDING', '', 'Application in connection with Matrimonial Appeal against grant of Decree of Divorce.', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (46, 660, 'GA 3901 of 2004', 2004, '8', '2004-11-30 00:00:00', 'To Oppose', NULL, 'For Attachment and Sale under CPC', 'Judgment Debtor', 'PENDING', 'Subhrokamal Mukherjee', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (47, 632, 'CAN 10070 of 2004', 2004, '', '2004-12-07 00:00:00', '', NULL, 'For stay of operation of Order', 'APPELLANT', 'DISPOSED', '', 'Principles for grant of interim order.', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (48, 423, 'CAN 10188 of 2004', 2004, '28', '2004-12-09 00:00:00', 'To Apply', NULL, 'For recalling of an Order', 'OPPOSITE PARTY', 'PENDING', 'Aloke Basu', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (49, 415, 'CAN 10084 of 2004', 2004, '', '2004-12-18 00:00:00', '', '01-Mar-2005', 'For appointment of Guardian ad litem', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');
INSERT INTO public.introl (id, bno, iappno, year, court, iadate, action, didate, ittype, iclid, iappstat, icoram, note, lprop, statute, cit) VALUES (50, 415, 'CAN 10083 of 2004', 2004, '', '2004-12-18 00:00:00', '', '01-Mar-2005', 'For setting aside Abatement', 'RESPONDENT', 'DISPOSED', '', '', '', '', '');


--
-- TOC entry 3275 (class 0 OID 24803)
-- Dependencies: 221
-- Data for Name: iopassed; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (1, 95, 2, '2003-09-01 00:00:00', 'Dilip Kr. Seth & R.N.Sinha', 'Stay of Execution of the Decree for a period of four weeks after reopening of Vacation. To deposit rent month by month', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (2, 73, 1, '2003-09-08 00:00:00', 'Aloke Chakrabarti & Jayanta Kumar Biswas', 'Stay of execution of decree.', 'Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (3, 153, 5, '2003-09-30 00:00:00', 'Dilip Kr. Seth & R.N.Sinha', 'There shall be stay of operation of the judgemnt for a period of 2 years from date. Special Messenger cost to be paid by the appellant. Paper Books to be prepared by the appellant within 4 weeks from the date of notice of arrival of Lower Court records. The Appellant shall pay all the arrears and decretal cost within 15th day of November, 2003 and thereafter continue to pay the current rent month by month within 15th of each suceeding month in the lD Court below and the respondent is at liberty to withdraw the same without furnishing any security and without any prejudice to rights and contentions.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (4, 153, 6, '2003-09-29 00:00:00', 'Dilip Kr. Seth & R.N.Sinha', 'The Application for addition of Party will be heard along with the appeal. Affidavit-in-opposition to be filed within 3 weeks after reopening of Vacation.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (5, 180, 9, '2003-11-10 00:00:00', 'Jayanta Kr. Biswas', 'Hence I hereby appoint Mr. Probal Mukherjee, an Advocate of this Court as the REceiver. He shall immediately take possession of the flat situated at 61B, Suren Sarkar Road . Kolkata - 700 010. If the Receiver finds that the flat is in lawful possession of any one, then he shall take symbolic possession thereof. If the flat is lying vacant, the receiver will take actual physical possession of the flat, and it will remain in his possesion until further order. The remuneration of the receiver for the time being is fixed at 150 Gms; it shall be paid by the plaintiff/petitioner.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (6, 62, 7, '2003-11-14 00:00:00', 'M.H.S. Ansari', 'Application is disposed without any order. Affidavit-in-opposition filed by the respondent is kept on record.Time for filing Reply is extended for two weeks.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (7, 261, 17, '2004-02-09 00:00:00', 'Dilip Kr. Seth & R.N.Sinha', 'Status quo to be maintained for a period of two months. Affidavit-in-opposition within 2 weeks. Reply thereto within 1 weeks. matter to appear as application 4 weeks hence.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (8, 279, 19, '2004-03-22 00:00:00', 'Aloke Chakrabarti & Aniruddha Bose', 'The appeal and application stands disposed off. There shall be an order of staus quo as regards possession and that of title till furthers orders of the Court. The Trial Court is directed to dispose of the injunction application.', 'Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (9, 317, 31, '2004-03-15 00:00:00', 'Dilip Kr. Seth & R.N.Sinha', 'There shall be an order of status quo as regards possession of the lands in question as on date till disposal of the application. The service of notice of appeal and application be dispensed with in respect of respondents no. 7 to 35. To serve copy of this application upon the respondents no. 1 to 6.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (10, 460, 36, '2004-05-21 00:00:00', 'Aloke Basu', 'The parties are directed  to maintain status quo in respect of the land in question for a period of three months.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (11, 531, 39, '2004-07-07 00:00:00', 'Asoke Gunguly & Tapan Kr. Dutt', 'An interim order of injunction restraing the respondents from changing the nature and character of the suit properties and also from tranferring the and/or encumbering the suit properties till 31.8.2004. matter to appear 4 weeks hence.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (12, 592, 43, '2004-10-08 00:00:00', 'Debi Prosad Sengupta', 'Bail in connection with appeal allowed.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (13, 555, 41, '2004-10-08 00:00:00', 'Prabir Samanta & Maharaj Sinha', 'The Appellant/ Petitioners are directed to serve copy of the application upon the opposite parties no. 1 to 5 intimating that the matter is returnable 2 weeks after the long vacation. The Opposite parties no. 1 to 5 are restrained by an order of injunction from transferring, alienating and/or encumbering the suit property for a period of 4 weeks after reopening of long vacation.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (14, 660, 46, '2004-12-01 00:00:00', 'Subhrokamal Mukherjee', 'Learned Advocate appearing on behalf of the Judgment Debtor is directed to take instruction from his client within 7 days. Matter will appear on 8.12.2004 There will be a prayer in terms of prayer (c) till 9.12.2004, without leave of Court.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (15, 660, 46, '2004-12-15 00:00:00', 'Subhrokamal Mukherjee', 'Heard in Part, matter stands adjourned to Monday.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (16, 660, 46, '2004-12-20 00:00:00', 'Subhrokamal Mukherjee', 'Matter heard in part. Matter to appear in the monthly list of cases of January 2005 for further hearing.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (17, 531, 39, '2004-08-11 00:00:00', 'Asoke Gunguly & Tapan Kr. Dutt', 'Interim order granted earlier is extended till disposal of the stay application.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.iopassed (id, bno, appno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (18, 531, 39, '2006-05-18 00:00:00', 'Bhaskar Bhattacharyya & P.N.Sinha', 'Interim order to continue till disposal of the Appeal.The Apellant is directed to prepare 8 copies of informal paper books within 2 months from the date of receipt of notice of arrival of LCR.In default the appeal shall stand dismissed. The Department is directed to take steps for bringing the lower court records within 45 days from date. The Appeal is ready as regards service.', 'Not Applied', NULL, NULL, NULL, NULL);


--
-- TOC entry 3276 (class 0 OID 24817)
-- Dependencies: 222
-- Data for Name: ipleading; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3277 (class 0 OID 24827)
-- Dependencies: 223
-- Data for Name: journal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (1, 'All India Reporter', '94', '1117', '2007-01-01 00:00:00', '2007-01-12 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (2, 'The Calcutta Law Journal', '1', '1', '2007-01-05 00:00:00', '2007-01-12 00:00:00', '1-112');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (3, 'The West Bengal Law Reporter', '1', '1', '2007-01-07 00:00:00', '2007-01-15 00:00:00', '1-252');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (4, 'Supreme Court Cases', '1', '1', '2007-01-07 00:00:00', '2007-01-18 00:00:00', '1-192');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (5, 'Calcutta Law Times', '1', '1', '2007-01-01 00:00:00', '2007-01-22 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (6, 'Supreme Court Cases', '1', '2', '2007-01-14 00:00:00', '2007-01-25 00:00:00', '193-320');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (7, 'Supreme Court Cases', '1', '3', '2007-01-21 00:00:00', '2007-01-29 00:00:00', '321-448');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (8, 'Calcutta High Court Notes', '1', '1', '2007-01-01 00:00:00', '2007-01-29 00:00:00', '1-160');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (9, 'The Calcutta Law Journal', '1', '2', '2007-01-20 00:00:00', '2007-02-02 00:00:00', '1-112');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (10, 'Divorce & Matrimonial Cases', '1', '1', '2007-01-01 00:00:00', '2007-02-05 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (11, 'Supreme Court Cases', '1', '4', '2007-01-28 00:00:00', '2007-02-06 00:00:00', '449-592');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (12, 'Calcutta High Court Notes', '1', '2', '2007-01-15 00:00:00', '2007-02-06 00:00:00', '161-320');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (13, 'The Calcutta Law Journal', '1', '3', '2007-02-05 00:00:00', '2007-02-09 00:00:00', '1-112');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (14, 'Supreme Court Cases', '1', '5', '2007-02-07 00:00:00', '2007-02-13 00:00:00', '593-720');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (15, 'Calcutta High Court Notes', '1', '3', '2007-02-01 00:00:00', '2007-02-13 00:00:00', '321-488');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (16, 'All India Reporter', '94', '1118', '2007-02-01 00:00:00', '2007-02-14 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (17, 'The West Bengal Law Reporter', '1', '2', '2007-02-07 00:00:00', '2007-02-15 00:00:00', '1-252');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (18, 'Calcutta Law Times', '1', '2', '2007-02-01 00:00:00', '2007-02-20 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (19, 'Supreme Court Cases', '1', '6', '2007-02-14 00:00:00', '2007-02-21 00:00:00', '721-End');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (20, 'Divorce & Matrimonial Cases', '1', '2', '2007-02-01 00:00:00', '2007-02-21 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (21, 'The Calcutta Law Journal', '1', '4', '2007-02-20 00:00:00', '2007-02-23 00:00:00', '1-110');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (22, 'Calcutta High Court Notes', '1', '4', '2007-02-15 00:00:00', '2007-02-26 00:00:00', '489-648');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (23, 'All India Reporter', '94', '1119', '2007-03-01 00:00:00', '2007-03-07 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (24, 'Supreme Court Cases', '2', '1 & 2', '2007-02-28 00:00:00', '2007-03-08 00:00:00', '1-256');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (25, 'The Calcutta Law Journal', '1', '5', '2007-03-05 00:00:00', '2007-03-12 00:00:00', '1-112');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (26, 'Supreme Court Cases', '2', '3', '2007-03-07 00:00:00', '2007-03-15 00:00:00', '257-400');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (27, 'Calcutta High Court Notes', '1', '5', '2007-03-01 00:00:00', '2007-03-20 00:00:00', '649-808');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (28, 'The West Bengal Law Reporter', '1', '3', '2007-03-07 00:00:00', '2007-03-20 00:00:00', '1-252');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (29, 'Divorce & Matrimonial Cases', '1', '3', '2007-03-01 00:00:00', '2007-03-21 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (30, 'Calcutta High Court Notes', '1', '6', '2007-03-15 00:00:00', '2007-03-23 00:00:00', '809-936');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (31, 'Supreme Court Cases', '2', '5', '2007-03-21 00:00:00', '2007-03-29 00:00:00', '545-704');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (32, 'The Calcutta Law Journal', '1', '6', '2007-03-20 00:00:00', '2007-03-30 00:00:00', '1-112');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (33, 'Calcutta Law Times', '1', '3', '2007-03-01 00:00:00', '2007-04-05 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (34, 'All India Reporter', '94', '1120', '2007-04-01 00:00:00', '2007-04-12 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (35, 'Supreme Court Cases', '3', '1', '2007-04-07 00:00:00', '2007-04-16 00:00:00', '1-144');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (36, 'The West Bengal Law Reporter', '1', '4', '2007-04-01 00:00:00', '2007-04-17 00:00:00', '1-248');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (37, 'Calcutta High Court Notes', '2', '1', '2007-04-01 00:00:00', '2007-04-20 00:00:00', '1-152');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (38, 'Divorce & Matrimonial Cases', '1', '4', '2007-04-01 00:00:00', '2007-04-20 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (39, 'Supreme Court Cases', '2', '6', '2007-03-28 00:00:00', '2007-04-20 00:00:00', '705-End');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (40, 'Supreme Court Cases', '3', '2', '2007-04-14 00:00:00', '2007-04-23 00:00:00', '145-304');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (41, 'The Calcutta Law Journal', '1', '8', '2007-04-20 00:00:00', '2007-04-23 00:00:00', '1-112');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (42, 'Calcutta Weekly Notes', '111', '1', '2007-04-24 00:00:00', '2007-04-26 00:00:00', '1-28');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (43, 'Supreme Court Cases', '3', '3', '2007-04-21 00:00:00', '2007-04-27 00:00:00', '305-480');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (44, 'Supreme Court Cases', '2', '4', '2007-03-14 00:00:00', '2007-03-22 00:00:00', '401-544');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (45, 'Rent Control Journal', '1', '1', '2007-01-01 00:00:00', '2007-05-03 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (46, 'Calcutta High Court Notes', '2', '2', '2007-04-15 00:00:00', '2007-05-04 00:00:00', '153-312');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (47, 'Calcutta Law Times', '1', '4', '2007-04-01 00:00:00', '2007-05-07 00:00:00', '');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (48, 'Supreme Court Cases', '3', '4', '2007-04-28 00:00:00', '2007-05-08 00:00:00', '481-608');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (49, 'Calcutta Weekly Notes', '111', '2 & 3', '2007-05-08 00:00:00', '2007-05-10 00:00:00', '29-84');
INSERT INTO public.journal (id, jname, volume, part, date, rdate, pages) VALUES (50, 'The Calcutta Law Journal', '1', '9', '2007-05-05 00:00:00', '2007-05-11 00:00:00', '1-110');


--
-- TOC entry 3278 (class 0 OID 24834)
-- Dependencies: 224
-- Data for Name: lend; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3279 (class 0 OID 24841)
-- Dependencies: 225
-- Data for Name: library; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (1, 'Law Text Book', 'Industrial Law', '', 'Industrial Law (Vol 1 & 2)', 'P.L.Malik', 'Eastern Book Company', 2004, 'Nineteenth', '', NULL, NULL, 1395, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (2, 'Law Text Book', 'Constitutional Law ', 'Writs', 'Writ Remedies', 'Bhagabati Prosad Banerjee', 'Wadhwa & Co', 1998, 'Second', '', NULL, NULL, 795, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (3, 'Law Text Book', 'Constitution ', '', 'The Constitution of India-An Analytical Approach', 'H.K.Saharay', 'Eastern Law House', 1997, 'Second', '', '', NULL, 490, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (4, 'Law Text Book', 'Constitutional Law ', NULL, 'Constitutional Law of India', 'Durga Das Basu', 'Prentice Hall of India', 1998, 'Seventh', NULL, NULL, NULL, 295, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (5, 'Law Text Book', 'Transport', 'Motor Vehicle', 'Motor Vehicles Act', 'N.D.Basu', 'Ashoka Law House', 1998, 'Eighth', '', '', NULL, 720, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (6, 'Law Text Book', 'Land Law', 'Land Reforms', 'The West Bengal Land Reforms Act, 1955', 'Amal Kumar Das', 'Venus Book Distributors', 1998, 'Fifth', '', '', '', 595, '', 'Yes');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (7, 'Law Text Book', 'Education', NULL, 'School Code - Secondary (Vols. 1 - 3)', 'Amal Kumar Das', 'Venus Book Distributors', 1998, 'Fourth', NULL, NULL, NULL, 900, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (8, 'Law Text Book', 'Muslim Law', 'Wakfs', 'The Law of Wakfs', 'S.A.Kader', 'Eastern Law House', 1999, 'First', '', '', NULL, 350, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (9, 'Law Text Book', 'Constitutional Law ', 'Writs', 'Constitutional Remedies & Writs', 'Durga Das Basu', 'Kamal Law House', 1999, 'Second', '', '', NULL, 700, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (10, 'Law Text Book', 'Specific Relief', NULL, 'Commentaries on Specific Relief Act', 'A.K.Nandi', 'Kamal Law House', 1999, 'Second', NULL, NULL, NULL, 350, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (11, 'Law Text Book', 'Industrial Law', 'Provident Fund', 'Employees Provident, Pension & Insurance Funds', 'S.Krishnamurthi', 'Commercial Law Publishers (I) Pvt. Ltd', 1999, 'First', '', '', NULL, 450, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (12, 'Law Text Book', 'Practice & Procedure', 'High Court', 'Commentaries on The Original Side Rules of High Court at Calcutta', 'Bholanath Sen', 'Venus Book Distributors', 1999, 'Revised', '', '', NULL, 695, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (13, 'Law Text Book', 'Civil Law', 'Valuation', 'Principals & Practice of Valuation', 'D.N.Banerjee', 'Eastern Law House', 1998, 'Fifth', '', '', NULL, 450, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (14, 'Law Text Book', 'Constitutional Law ', 'Public Interest Litigation', 'Public Interest Litigations', 'P.M.Bakshi', 'Ashoka Law House', 1998, 'First', '', '', NULL, 360, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (15, 'Law Text Book', 'Civil Law', 'Partition', 'Joint Property & Partition', 'M.R.Mallick', 'Kamal Law House', 1998, 'Fourth', '', '', NULL, 750, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (16, 'Law Text Book', 'Arbitration & Conciliation', '', 'Law of Arbitration & Conciliation', 'S.K.Chawla', 'Eastern Law House', 1998, 'First', '', '', NULL, 575, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (17, 'Law Text Book', 'Intellectual Property Law', '', 'Intellectual Property Law', 'P.Narayanan', 'Eastern Law House', 1997, 'Second', '', '', NULL, 260, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (18, 'Law Text Book', 'Muslim Law', NULL, 'Muslim Law of Marriage & Succession', 'S.A.Kader', 'Eastern Law House', 1998, 'First', NULL, NULL, NULL, 220, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (19, 'Law Text Book', 'General Legal', NULL, 'Barbarism to Verdict', 'Justin Fleming', 'Angus & Robertson', 1994, 'First', NULL, NULL, NULL, 250, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (20, 'Law Text Book', 'Torts', NULL, 'Law of Torts', 'Alan J Pannett', 'M&E Handbook Series', 1995, 'Seventh', NULL, NULL, NULL, 250, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (21, 'Law Text Book', 'Right to Information', 'Natural Justice', 'Penumbra of Natural Justice', 'Tapash Gan Chowdhury', 'Eastern Law House', 1997, 'First', '', '', NULL, 250, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (22, 'Law Text Book', 'Right to Information', '', 'Administrative Law', 'Wade & Forsyth', 'Clarendon Press-Oxford', 1994, 'Seventh', '', '', NULL, 300, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (23, 'Law Text Book', 'Succession & Inheritance', '', 'The Indian Succession Act', 'M.N.Das', 'Eastern Law House', 1997, 'Thirteenth', '', '', NULL, 375, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (24, 'Law Text Book', 'Specific Relief', NULL, 'Specific Relief Act', 'Sudipto Sarkar', 'Wadhwa & Co', 1997, 'Fourteenth', NULL, NULL, NULL, 440, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (25, 'Law Text Book', 'Evidence', NULL, 'The Law of Evidence', 'Y.V.Chandrachud', 'Wadhwa & Co', 1997, 'Nineteenth', NULL, NULL, NULL, 220, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (26, 'Law Text Book', 'Criminal Law', 'Penal Code', 'The Indian Penal Code', 'Y.V.Chandrachud', 'Wadhwa & Co', 1997, 'Twenty Eighth', '', '', NULL, 220, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (27, 'Law Text Book', 'Criminal Procedure', '', 'Code of Criminal Procedure', 'Y.V.Chandrachud', 'Wadhwa & Co', 1997, 'Fifteenth', '', '', NULL, 220, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (28, 'Law Text Book', 'Torts', NULL, 'The Law of Torts', 'G.P.Singh', 'Wadhwa & Co', 1997, 'Twenty Third', NULL, NULL, NULL, 220, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (29, 'Law Text Book', 'Interpretation', 'Statutes', 'Principles of Statutory Interpretation', 'G.P.Singh', 'Wadhwa & Co', 1997, 'Sixth', '', NULL, NULL, 330, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (30, 'Law Text Book', 'General Legal', 'Dictionary', 'Concise Law Dictionary', 'V.R.Manohar', 'Wadhwa & Co', 1997, 'Second', '', '', NULL, 220, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (31, 'Law Text Book', 'Hindu Law', 'Succession and Inheritance', 'The Hindu Succession Act, 1956', 'D.N.Sen', 'R.Cambray', 1998, 'Second', '', '', NULL, 230, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (32, 'Law Text Book', 'Hindu Law', NULL, 'Hindu Law and the Constitution', 'A.M.Bhattacharjee', 'Eastern Law House', 1994, 'Second', NULL, NULL, NULL, 150, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (33, 'Law Text Book', 'Muslim Law', NULL, 'Muslim Law and the Constitution', 'A.M.Bhattacharjee', 'Eastern Law House', 1994, 'Second', NULL, NULL, NULL, 190, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (34, 'Law Text Book', 'General Legal', 'Dictionary', 'Blacks Law Dictionary', 'Henry Campbell Black', 'West Publishing Co', 1990, 'Sixth', '', '', NULL, 1000, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (35, 'Law Text Book', 'Constitutional Law ', 'Human Rights', 'Human Rights in Constitutional Law', 'Durga Das Basu', 'Prentice Hall of India', 1994, 'First', '', '', NULL, 400, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (36, 'Law Text Book', 'Practice & Procedure', 'High Court', 'Appellate Side Rules of The High Court at Calcutta', 'A.N.Saha', 'Book-N-Trade', 1999, 'First', '', '', NULL, 475, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (37, 'Law Text Book', 'Registration', NULL, 'Registration Act,1908', 'D.N.Sen', 'Book-N-Trade', 1998, 'First', NULL, NULL, NULL, 375, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (38, 'Law Text Book', 'Contempt', 'of Court', 'Law of Contempt of Courts', 'S.K.Mookerji', 'Delhi Law House', 1998, 'Second', '', NULL, NULL, 895, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (39, 'Law Text Book', 'Service Jurisprudence', 'Departmental Enquiry', 'Domestic Enquiry & Punishment', 'M.R.Mallick', 'Eastern Law House', 1998, 'Third', '', '', NULL, 450, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (40, 'Law Text Book', 'Contract', '', 'Franchising in India', 'Mark Abell', 'Eastern Law House', 1998, 'First', '', '', NULL, 350, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (41, 'Law Text Book', 'Matrimonial & Maintenance', 'Divorce', 'Laws of Marriage and Divorce', 'H.K.Saharay', 'Eastern Law House', 1999, 'Fourth', '', '', NULL, 625, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (42, 'Law Text Book', 'General Legal', 'Maxims', 'Brooms Legal Maxims', 'Herbert Bloom', 'Universal Book Traders', 1993, 'Tenth', '', '', NULL, 340, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (43, 'Law Text Book', 'Limitation & Prescription', '', 'The Limitation Act', 'M.R.Mallick', 'Eastern Law House', 1998, 'Twentieth', '', '', NULL, 650, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (44, 'Law Text Book', 'Matrimonial & Maintenance', 'Divorce', 'Unification of Divorce Laws in India', 'S.S.Singh', 'Deep & Deep Publications', 1993, 'First', '', '', NULL, 300, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (45, 'Law Text Book', 'Jurisprudence', NULL, 'Legal Theory', 'W.Friedmann', 'Columbia University Press', 1967, 'Fifth', NULL, NULL, NULL, 2500, NULL, NULL);
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (46, 'Law Text Book', 'Contract', '', 'Law of Contract & Specific Relief', '', 'Madras Law Journal Office', 1997, 'First', '', NULL, NULL, 750, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (47, 'Law Text Book', 'Service Jurisprudence', '', 'The Law Relating to Public Service', 'Samaraditya Pal', 'Eastern Law House', 1998, 'First', '', '', NULL, 650, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (48, 'Law Text Book', 'Civil Procedure', '', 'Code of Civil Procedure (Vol 1 & 2)', 'A.N.Saha', 'Premier Publishing Co', 1998, 'Fifth', '', '', '', 1200, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (49, 'Law Text Book', 'Property Law', 'Transfer of Property', 'Transfer of Property Act (Vols. 1 - 3)', 'K.Shanmukham', 'The Law Book Company (P) Ltd', 1999, 'Sixth', '', '', NULL, 2250, '', '');
INSERT INTO public.library (id, type, topic, subtopic, title, author, publisher, year, edition, rack, soldby, soldon, price, det, discard) VALUES (50, 'Law Text Book', 'Practice & Procedure', 'Pleadings', 'Principles & Forms of Pleading', 'S.K.Roy Chowdhury', 'Eastern Law House', 1984, 'Fourth', '', '', NULL, 175, '', '');


--
-- TOC entry 3280 (class 0 OID 24853)
-- Dependencies: 226
-- Data for Name: login; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.login (password, billingpass) VALUES ('123456', '123456');


--
-- TOC entry 3281 (class 0 OID 24858)
-- Dependencies: 227
-- Data for Name: opassed; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (1, 62, '2003-07-28 00:00:00', 'Arun Mitra', 'On the prayer of the Learned Advocate for the Petitioner, the matter is adjourned to Thursday.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (2, 62, '2003-07-31 00:00:00', 'Arun Mitra', 'The respondents are directed to file Affidavit-in-opposition within 4 weeks, Affidavit-in-Reply, if any, to be filed by 1 week thereafter.The matter to appear 6 weeks hence for ''Hearing'' (Specially Fixed). There shall be an interim order for a period of 10 weeks, restraining the respondents from transferring the petitioner without first considering his claim for promotion.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (3, 72, '2003-08-01 00:00:00', 'M.H.S. Ansari', 'Matter was in list at item no. 11', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (4, 72, '2003-08-08 00:00:00', 'M.H.S. Ansari', 'Supplementary Affidavit filed in Court is kept in record. Mr. Probal Kr. Mukherjee appears and undertakes to file vokalatnama by August 13, 2003. Let a copy of the application and the supplementary affidavit be served upon Sri Mukherjee by August 12, 2003. Affidavit-in-opposition to be filed within 3 weeks, Affidavit-in-reply thereto to be filed by 1 week thereafter. Matter is adjourned for a period of 4 weeks. Signed copy of the minutes to both the parties.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (5, 51, '2003-06-03 00:00:00', 'District Judge, Barasat', 'Issue notice upon opposite party fixing 8.7.2003 for Service Return.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (6, 72, '2003-09-01 00:00:00', 'M.H.S. Ansari', 'The time to file Affidavit-in-opposition is extended for a further period of 2 weeks from the date of service of the contempt application. Matter to appear thereafter on the day assigned for contempt matter.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (7, 95, '2003-09-01 00:00:00', 'Dilip Kr. Seth & R.N.Sinha', 'Appeal Admitted. Stay of execution of Decree for a period of four weeks after vacation. Matter to appear two weeks after vacation.', 'Not Applied', '', '', '', '');
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (8, 73, '2003-09-08 00:00:00', 'Aloke Chakrabarti & Jayanta Biswas', 'Appeal Admitted.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (9, 99, '2003-09-05 00:00:00', 'Ashok Kumar Mathur & Ashim Kr. Banerjee', 'A/O-2 weeks, A/R- 1 week,
Matter to appear one week after vacation.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (10, 44, '2003-09-22 00:00:00', 'Ashok Kumar Mathur & Ashim Kr. Banerjee', 'The matter is adjourned after reopening of long vacation.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (11, 62, '2003-09-23 00:00:00', 'Arun Mitra', 'Time for filing of Affidavit in Opposition is extended for a period of 1 week after vacation. Reply, thereto, if any, one week thereafter. Matter to appear 3 weeks hence after reopening of long vacation. The Interim order  granted earlier will continue till 4 weeks after reopening of long vacation.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (12, 153, '2003-09-30 00:00:00', 'Dilip Kr. Seth & R.N.Sinha', 'Appeal admited and will be heard on grounds no. 1 , 2, 7 & 8', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (13, 37, '2003-09-29 00:00:00', 'Pradip Biswas', 'Ther matter shall appear 4 weeks after vacation as ''Contested Application'' There shall be an interim order of stay of all further proceeding for a period of 6 weeks on condition that petitioner pays a sum of Rs.800/- per month by 15th of each current suceeding month.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (14, 161, '2003-09-08 00:00:00', '7th Bench, City Civil Court', 'Suit Filed alongwith an application for injunction. 
Court fees of Rs 15,500/- paid', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (15, 161, '2003-09-11 00:00:00', '7th Bench, City Civil Court', 'Order no. 4 : Injunction application moved.
 Issue notice upon the Defendant no. 1 to show cause within seven days as to why the application shall not be allowed and issue an interim injunction restraining the defendant (restraining them) from claiming any renewal of the Bank Guarantee / invocation of Bank Guarantee dated 22.1.2002 for the amount of Rs.98500/- and the Bank Guarantee dated 22.1.2002 for the amount 1,41,500/- executed on 22.1.2002 by the defendant no. 2 and the counter guarantee given by the defendant no. 3 as per prayer a) of the application for temporary injunction for a period upto 29.10.2003 as the court wil remain closed from 25.9.2003 to 27.10.2003 due to puja vacation on condition that the plaintiff shall discharge his liabilities, if any, with the concerned transaction within the date fixed positively ...........(illegible)', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (16, 161, '2003-10-29 00:00:00', '7th Bench, City Civil Court', 'Defendant No. 1 appeared with undertaking to file the Vokalatnama and prays for fixing a date for hearing of the injunction application. To 3.12.2003 for injunction hearing. Objections, if any, in the meantime.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (17, 72, '2003-11-17 00:00:00', 'M.H.S. Ansari', 'The affidavit-in-opposition is filed in Court. In view of the appeal preferred by the alleged contemnor, the hearing of the contempt application is adjourned to January 2004', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (18, 174, '2003-11-17 00:00:00', 'Pranab Chattopadhyay', 'The application for vacating will be listed and heard on November 19, 2003', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (19, 184, '2003-11-21 00:00:00', 'Arun Mitra', 'There shall be a stay of impugned notice in terms of prayer h) of the petition for a period of three weeks. The matter shall  appear one week hence in the list. The petitioner is directed to serve another notice upon the Learned Advocate Appearing on behalf of teh State of West Bengal. The affidavit-of service and the notice kept on record.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (20, 44, '2003-11-24 00:00:00', 'Ashok Kumar Mathur & Ashim Kr. Banerjee', 'The delay in filing the appeal is condoned and application under Section 5 of the Limitation Act stands allowed. The matter stands adjourned for two weeks. The Respondents may file their opposition to the supplementary affidavit in the meantime. The supplementary affidavit filed in Court is kept on record.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (21, 174, '2003-11-24 00:00:00', 'Pranab Chattopadhyay', 'In view of the discussions of settlement betwen the parties, the matter stands adjourned to December 8, 2003. Affidavit of adoption of the vacating application is filed in Court.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (22, 51, '2003-06-05 00:00:00', 'District Judge, Barasat', 'Adjourned to 10.6.2003 for hearing and order.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (23, 80, '2003-09-19 00:00:00', 'Aloke Chakrabarti & S.K.Gupta', 'Appeal admitted on grounds no. 2 & 3', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (24, 161, '2003-12-03 00:00:00', '7th Bench, City Civil Court', 'The hearing of injunction application extended till 20.1.2004. Ad-interim injunction granted is extended till that day.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (25, 222, '2002-07-18 00:00:00', 'Barin Ghose', 'Therefore it is declared that the petitioners, who had been working as Data Entry Operator, should also be brought within the zone of consideration for selection as programmers.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (26, 221, '2002-07-18 00:00:00', 'Barin Ghose', 'Therefore it is declared that the petitioners, who had been working as Data Entry Operator, should also be brought within the zone of consideration for selection as programmers.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (27, 184, '2003-12-12 00:00:00', 'Arun Mitra', 'The impugned notice is setaside, the respondents are at liberty to issue fresh notice incorporating the particulars of allegations against the petitioners in accordance with law. The order is passed without going into the merits of the writ petition. Urgent xerox certified copy of the order.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (28, 225, '2003-12-11 00:00:00', 'Pinaki Chandra Ghose', 'Leave is granted to the Advocate-on-Record of the petitioner to correct the name of the petitioner in the cause-title of the petition. Department is directed to issue a show cause upon the respondents as to why they shall not furnish security in favour of the Registrar.O.S. of this Court to the tune Rs.15,00,000/- in respect of the claim of the petition within a period of a week from date. Let the matter appear in the list one week hence. Signed copy.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (29, 44, '2003-12-10 00:00:00', 'Ashok Kumar Mathur & Ashim Kr. Banerjee', 'The appellants as well as the respondent shall point out what is the pay scale of the Senior Assistant and that of the Programmer. The Learned Counsel shall also point out what is the fate of the writ petition which is pending since 1991.It would be open for the Learned Counsel for the Respondent to file Affidavit-in-opposition to the stay application if he so chooses within two weeks from today and reply, if there is any, within one week thereafter. Let the matter appear after three weeks. Mr. Maitra submits that so long the matter is pending before this Court, he will not proceed with the contempt proceeding. Signed Copy.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (30, 130, '2003-12-03 00:00:00', 'Arun Mitra', 'Heard in Part', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (31, 130, '2003-12-17 00:00:00', 'Arun Mitra', 'An interim order of stay in terms of prayer (f) for a period of 4 weeks after Christmas vacation. The prayer (f) of the writ petition is as follows: 
f) An ad-interim order staying the operation of pretended Award dated 26.12.2002 passed by Sri Bharat Prasad Sharma, Learned Judge, Central Industrial Tribunal, Kolkata in Reference no. 27 of 1999 till disposal of this application; 
His Lordship was further pleased to direct filing of Affidavit-in-opposition within one week after Christmas vacation and Affidavit-in-Reply within one week thereafter and the matter to appear as ''Adjourned Motion'' three weeks after Christmas vacation. Liberty has been granted to the petitioner to apply for extension of the interim order on the self same application.
', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (32, 225, '2003-12-18 00:00:00', 'Pinaki Chandra Ghose', 'A/O-1 week after vacation
A/R-1 week thereafter
Matter to appear 3 weeks thereafter', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (33, 99, '2003-11-07 00:00:00', 'Ashok Kumar Mathur & Ashim Kr. Banerjee', 'A/O to be filed within two weeks. Status quo to be maintained in respect of the property. The concerned Police Station is directed to see that the status quo shall be maintained. To serve notice upon Respondent No. 8', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (34, 126, '2003-12-22 00:00:00', 'Pinaki Chandra Ghose', 'A/O- 2 Weeks after Vacation
A/R-2 weeks thereafter
Matter to appear 5 weeks after reopending of Vacation', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (35, 127, '2003-12-22 00:00:00', 'Pinaki Chandra Ghose', 'A/O- 2 Weeks after Vacation
A/R-2 weeks thereafter
Matter to appear 5 weeks after reopending of Vacation', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (36, 229, '2003-12-23 00:00:00', 'Pranab Chattopadhyay', 'The hearing of this application stands adjourned till 13.1.2004.
The Director General of Buildings, Kolkata Municipal Corporation is directed to visit the site in questioning order to ascertain the actual area under lawful occupation of the petitioners at the site in question and submit a report before this Court on the next date of hearing. The D.G.(Building) will visit the site upon serving prior notice to the parties herein In the meantime, parties are directed to maintain status quo in respect of the shop room in occupation of the petitioners. There shall be an order of status quo as on date. 
', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (37, 247, '2004-01-13 00:00:00', 'Ronojit Mitra, Chairperson', 'The Respondents no. 3 and 6 shall be at liberty to file their affidavit-in-opposition within two weeks from date, reply if any within a week thereafter. In the meantime, there shall be an order of injunction restraining the respondent no. 3 from selling, transferreing, dealing with or disposing of the property mentioned herein above in any manner whatsoever, till the disposal of the appeal.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (38, 220, '2004-01-15 00:00:00', 'Pratap Kumar Ray', 'Matter Heard in Part. Adjourned to next Thursday', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (39, 245, '2004-01-15 00:00:00', 'Soumitro Sen', 'The matter stands Adjourned to Monday, 19th January, 2004', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (40, 245, '2004-01-19 00:00:00', 'Girish Chandra Gupta', 'Matter Heard in Part. Adjourned to wednesday at the top of list.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (41, 220, '2004-01-20 00:00:00', 'Pratap Kumar Ray', 'Heard in Part. Not this week.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (42, 260, '2004-01-21 00:00:00', 'Girish Chandra Gupta', 'Affidavit-in-opposition by February 11, 2004, Affidavit-in-Reply by February 25, 2004. There shall be an interim order restraining the respondents from implementing the Check off for a period of 8 weeks from date.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (43, 44, '2004-01-21 00:00:00', 'Ashok Kumar Mathur & Ashim Kr. Banerjee', 'Learned Counsel for the appellant shall file Paper Books prepared out of Court within 4 weeks from date. However, promotion, if any granted in terms of the order of the Learned Single Judge to the respondent will abide by the result of the appeal.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (44, 245, '2004-01-21 00:00:00', 'Girish Chandra Gupta', 'Affidavit-in-opposition to be filed within 4 weeks , Affidavit-in-Reply 2 weeks thereafter. Matter to appear 7 weeks hence. There shall be an interim order of stay of all further proceeding till disposal of the application.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (45, 229, '2004-01-20 00:00:00', 'Pranab Chattopadhyay', 'Affidavit-in-opposition within 3 weeks, Affidavit-in-Reply,if any, to be filed 1 week thereafter. Let this matter appear in the list for hearing 4 weeks hence. Let there also be an interim order restraining the respondent authorities of the Calcutta Municipal Corporation from taking any steps or further steps on the basis of the aforesaid notice dated December 17, 2003 issued by the Executive Engineer being Annexure ''P7'' to this writ petition until further orders.
', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (46, 260, '2004-01-29 00:00:00', 'Girish Chandra Gupta', 'Matter was mentioned on behalf of the petitioner praying for furnishing of names of the Registered Unions operating in the establishments of the Respondents. It was recorded that Sri D.K.Ghosh has supplied the names and addresses of the Trade Unions operating in the establishments of the Respondent Companies.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (47, 220, '2004-01-29 00:00:00', 'Pratap Kumar Ray', 'Matter Heard in Part. Adjourned to next Thursday', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (48, 225, '2004-01-28 00:00:00', 'Pinaki Chandra Ghose', 'The time for A/O extended for 2 days.A/R- 7days thereafter.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (49, 277, '2002-04-29 00:00:00', 'M.H.S. Ansari', 'Meanwhile if any action is taken by the respondents prejudicial to the interest of the petitioners with regard to the functional allowance which is said to be received by the petitioners the respondents shall give at least 7 days prior notice prior to stoppage of the payment of functional allowance to the petitioners.', 'Not Applied', NULL, NULL, NULL, NULL);
INSERT INTO public.opassed (id, bno, orderdt, coram, note, ccopy, fpled, corder, ndate, exdate) VALUES (50, 220, '2004-02-05 00:00:00', 'Pratap Kumar Ray', 'Matter Heard in Part. Adjourned to next Tuesday', 'Not Applied', NULL, NULL, NULL, NULL);


--
-- TOC entry 3282 (class 0 OID 24870)
-- Dependencies: 228
-- Data for Name: path; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.path (name, path) VALUES ('All India Reporter', '');
INSERT INTO public.path (name, path) VALUES ('Dictation Software', '');
INSERT INTO public.path (name, path) VALUES ('Grand Jurix', '');
INSERT INTO public.path (name, path) VALUES ('Law Lexicon', '');
INSERT INTO public.path (name, path) VALUES ('Manupatra', '');
INSERT INTO public.path (name, path) VALUES ('Phone-Fax Dialer', '');
INSERT INTO public.path (name, path) VALUES ('Supreme Court Cases', '');
INSERT INTO public.path (name, path) VALUES ('Video-Conference', '');


--
-- TOC entry 3283 (class 0 OID 24875)
-- Dependencies: 229
-- Data for Name: pleading; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (1, 261, 'Affidavit-in-Opposition', NULL, '08-Apr-2004', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (2, 242, 'Affidavit-in-Opposition', NULL, '08-Apr-2004', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (3, 470, 'Affidavit-in-Opposition', NULL, '27-Aug-2004', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (4, 575, 'Affidavit-in-Opposition', NULL, '20-Sep-2004', 'An affidavit has been filed by us adopting the statement contained in the opposition filed by the National Insurance Company Ltd.');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (5, 313, 'Affidavit-in-Reply', NULL, '14-Oct-2004', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (6, 649, 'Affidavit-in-Opposition', NULL, '01-Dec-2004', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (7, 580, 'Affidavit-in-Opposition', NULL, '22-Dec-2004', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (8, 55, 'Written Statement', NULL, '13-Dec-2004', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (9, 681, 'Affidavit-in-Opposition', NULL, NULL, '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (10, 694, 'Affidavit-in-Opposition', NULL, '12-Aug-2005', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (11, 812, 'Affidavit-in-Opposition', NULL, '11-Apr-2005', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (12, 726, 'Affidavit-in-Reply', NULL, '10-May-2005', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (13, 850, 'Affidavit-in-Opposition', NULL, NULL, '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (14, 813, 'Affidavit-in-Opposition', NULL, '10-May-2005', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (15, 963, 'Affidavit-in-Reply', NULL, '10-Aug-2005', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (16, 946, 'Affidavit-in-Opposition', NULL, '22-Aug-2005', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (17, 947, 'Affidavit-in-Opposition', NULL, '12-Dec-2005', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (18, 437, 'Affidavit-in-Reply', NULL, '16-Dec-2005', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (19, 1144, 'Affidavit-in-Opposition', NULL, '16-Mar-2006', 'To the Section 5 application');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (20, 1144, 'Affidavit-in-Opposition', NULL, '16-Mar-2006', 'To the stay application');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (21, 1475, 'Affidavit-in-Opposition', NULL, '24-Nov-2006', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (22, 1137, 'Affidavit-in-Opposition', NULL, '24-Nov-2006', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (23, 1436, 'Written Statement', NULL, '27-Nov-2006', '');
INSERT INTO public.pleading (id, bno, pltypeid, draft, date, pdet) VALUES (24, 1458, 'Affidavit-in-Opposition', NULL, '29-Jan-2007', '');


--
-- TOC entry 3284 (class 0 OID 24883)
-- Dependencies: 230
-- Data for Name: proposition; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.proposition (clp, topic, rupon, subtopic, actnm, sec, proposit, reference, principle) VALUES (1, 'Tenancy ', 'Rent', 'Sec 17(2) WBPT Act-1956', 'West Bengal Premises Tenancy Act, 1956', 'Sec 17(2)', 'a) Whether the Learned Court whilst deciding an application under Section 17(2) of the West Bengal Premises Tenancy Act, 1956 can take into account the arrear of ''service charges'' being part of monthly ''Rent''.
b) Whether the agreement for payment of ''service charges'' is an element of ''Rent'' within the meaning and intent of West Bengal Premises Tenancy Act, 1956', '2006(1) CHN 145 @ para 16--AIR 2005 Cal (DB) 246 @ para 11,12,18 & 19--1990(2) SCC 651 @ para 3
', 'Decided in the Division Bench decision reported in AIR 2005 Cal 246 @ para, 11, 12,18 and 19. 
Para 12.  So this Court is of the view that by ''rent'' what is meant in this case is the whole amount agreed to be paid by the tenant to his landlord for enjoyment of the demised premises which is let out to the tenant.
Para 19. In Anita Dasgupta, the landlord was realizing two amounts separately under two separate receipts, one was rent and the other was service charges. Even then the Court held that the service charges are included within the wide connation of rent as those enjoyed in connection with fittings and fixtures which are all fixed in the tenanted premises. (Anita Dasgupta Vs A.C. Sett)
The single Bench decision reported in 2006(1) CHN 145 at para 16 and 1988 (2) CHN 69 (DB) also answers the issue, but on the point of Municipal Rates and taxes.
 The Supreme Court decision considering the earlier Bench Judgment of Calcutta High Court reported in 1990(2) SCC 651 @ para 3 is of importance. 

Puspa Sen Gupta v. Susma Ghose, (1990) 2 SCC 651, at page 653  : 
Para 3. Although the expression ''rent'' has not been defined, there are indications in the present Act to suggest that the word ''rent'' includes not only what is strictly understood as rent, but also payment in respect of amenities or services provided by the landlord under the terms of the tenancy. The Act deals with the fixation and revision of fair rent and sub-section (3) of Section 8, takes into account furniture if supplied or fittings affixed in the tenement for the use of the tenant, indicating that an agreement between the landlord and the tenant in respect of the additional amenities comes within the scope of the Act. Similarly the provisions of Section 34 refer to the maintenance of any essential supply or service (including supply of electricity) and Section 35 deals with emergency measures to be taken in respect of matters including additional services. These provisions give a clear indication that the Act contemplates that a tenancy which carries with it certain amenities to be provided or services to be maintained by the landlord is within the purview of the Act. If the Act is not so interpreted, an astute landlord may successfully circumvent the provisions of the Act by imposing on the tenant onerous conditions with reference to supply of amenities as binding terms of the tenancy. A same view was taken by the Calcutta High Court in Residence Ltd. v. Surendra Mohan Banerjee2 while interpreting ''rent'' under the earlier Rent Act of 1950. So far as this aspect is concerned, the relevant provisions of the present Act are not very different. A similar question under the 1950 Act later arose before this Court also in Karnani Properties Ltd. v. Augustin3 and the Calcutta High Court''s view was affirmed. It may, however, be mentioned at this stage that the view of the Calcutta Bench on another question which does not arise in the present appeal was not approved, but that is wholly irrelevant for the purpose of case before us. So far the decision in Radha Kishan Sao case1 relied upon by Mr Garg is concerned, it is clearly distinguishable inasmuch as the agreement therein relating to the payment for furniture was according to the finding a quite independent contract unconnected with the original tenancy (see para 14 of the judgment). Besides, the case was governed by the rent law as applicable in Bihar and not by the present Act. We, therefore, confirm the decision of the High Court and dismiss the appeal with costs.
');


--
-- TOC entry 3285 (class 0 OID 24893)
-- Dependencies: 231
-- Data for Name: regist; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.regist (name, add, phone, refno, pan, bank, note) VALUES ('Prashant Kishore', 'Market Complex , Calcutta, 180/20F, Howrah. Kolkata-700 077', NULL, 320, NULL, 'Indian Overseas Bank, Kalighat Branch, SB A/c 0000', 'Please remit the TDS, if any, against the Income Tax-PAN ');


--
-- TOC entry 3286 (class 0 OID 24903)
-- Dependencies: 232
-- Data for Name: reminder; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (1, '2008-07-30 00:00:00', 'Interim Order Expires in - CO 168 of 2008(Anjali Das & Ors Vs Samar Roy & Ors)', '2008-07-30 00:00:00', 'Order403', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (47, '2008-07-11 00:00:00', 'Interim Order Expires in - CO 4633 of 2006(Arun Bhusan Guha & Ors Vs Amal Roy & Anr)', '2008-07-11 00:00:00', 'Order333', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (56, '2008-06-29 00:00:00', 'Caveat Expires in - 1240 of 2008 In re: Kuntal Lahiri', '2008-06-29 00:00:00', 'Cvt523', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (57, '2008-06-30 00:00:00', 'Caveat Expires in - 1260 of 2008 In re: Gopal Chandra Roy', '2008-06-30 00:00:00', 'Cvt524', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (58, '2008-06-30 00:00:00', 'Interim Order Expires in - CO 350 of 2008(Chabi Mondal & Anr Vs Pushpabal Mondal & Ors)', '2008-06-30 00:00:00', 'Order399', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (59, '2008-07-02 00:00:00', 'Caveat Expires in - 1296 of 2008 In re: Sibu Nath Das', '2008-07-02 00:00:00', 'Cvt525', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (61, '2008-07-05 00:00:00', 'Caveat Expires in - 1312 of 2008 In re: Uma Saha', '2008-07-05 00:00:00', 'Cvt526', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (62, '2008-07-05 00:00:00', 'Caveat Expires in - 1313 of 2008 In re: Uma Saha', '2008-07-05 00:00:00', 'Cvt527', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (64, '2008-07-06 00:00:00', 'Caveat Expires in - 1328 of 2008 In re: Partha Sarathi Ghosh', '2008-07-06 00:00:00', 'Cvt528', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (65, '2008-07-06 00:00:00', 'Caveat Expires in - 1330 of 2008 In re: Abhijit Chaudhury', '2008-07-06 00:00:00', 'Cvt529', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (70, '2008-07-15 00:00:00', 'Caveat Expires in - 1456 of 2008 In re: Siddhartha Gupta', '2008-07-15 00:00:00', 'Cvt530', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (74, '2008-07-20 00:00:00', 'Caveat Expires in - 1479  of 2008 In re: Debasree Das', '2008-07-20 00:00:00', 'Cvt531', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (80, '2008-08-31 00:00:00', 'Interim Order Expires in - CO 4474 of 2007(M/s J.D.Casting & Forging Pvt. Ltd Vs Chandra Devi Jaiswal & Ors)', '2008-08-31 00:00:00', 'Order397', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (83, '2008-07-28 00:00:00', 'Caveat Expires in - 1651 of 2008 In re: Subrata Banerjee', '2008-07-28 00:00:00', 'Cvt532', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (87, '2008-08-02 00:00:00', 'Caveat Expires in - 1679 of 2008 In re: Shukla Chattoraj', '2008-08-02 00:00:00', 'Cvt533', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (90, '2008-08-02 00:00:00', 'Caveat Expires in - 1682 of 2008 In re: Jayatri Tapaswi', '2008-08-02 00:00:00', 'Cvt534', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (94, '2008-08-04 00:00:00', 'Caveat Expires in - 1714 of 2008 In re: Palm View Flat Owners Welfare Association', '2008-08-04 00:00:00', 'Cvt535', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (97, '2008-07-31 00:00:00', 'Interim Order Expires in - WP 5556(W) of 2008(Pratul Kr. Roy & Ors Vs State Bank of India & Ors)', '2008-07-31 00:00:00', 'Order404', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (105, '2008-08-11 00:00:00', 'Caveat Expires in - 1806 of 2008 In re: Suranjana Bhagat', '2008-08-11 00:00:00', 'Cvt536', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (112, '2008-08-12 00:00:00', 'Caveat Expires in - 1840 of 2008 In re: Mrinmoyee Dutta', '2008-08-12 00:00:00', 'Cvt537', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (118, '2008-08-13 00:00:00', 'Caveat Expires in - 1856 of 2008 In re: Rajkumar Sen', '2008-08-13 00:00:00', 'Cvt538', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (124, '2008-08-31 00:00:00', 'Caveat Expires in - 1943 of 2008 In re: Biswanath Das', '2008-08-31 00:00:00', 'Cvt540', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (127, '2008-08-31 00:00:00', 'Caveat Expires in - 1942  of 2008 In re: Balbinder Singh', '2008-08-31 00:00:00', 'Cvt539', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (130, '2008-09-01 00:00:00', 'Caveat Expires in - 1985 of 2008 In re: Chinmoyee Chakraborty', '2008-09-01 00:00:00', 'Cvt542', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (134, '2008-09-07 00:00:00', 'Caveat Expires in - 2060 of 2008 In re: Soma Das', '2008-09-07 00:00:00', 'Cvt543', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (137, '2008-09-07 00:00:00', 'Caveat Expires in - 2062 of 2008 In re: Jahar Ghosh', '2008-09-07 00:00:00', 'Cvt545', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (140, '2008-09-07 00:00:00', 'Caveat Expires in - 2061  of 2008 In re: Archana Basu', '2008-09-07 00:00:00', 'Cvt544', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (143, '2008-09-10 00:00:00', 'Caveat Expires in - 2176 of 2008 In re: Sundari Kayal', '2008-09-10 00:00:00', 'Cvt546', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (152, '2008-09-14 00:00:00', 'Caveat Expires in - 2207 of 2008 In re: Bulu Das', '2008-09-14 00:00:00', 'Cvt549', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (157, '2008-09-13 00:00:00', 'Caveat Expires in - 2194  of 2008 In re: Bimlesh Kumar', '2008-09-13 00:00:00', 'Cvt547', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (160, '2008-09-15 00:00:00', 'Caveat Expires in - 2232 of 2008 In re: Sila Sanyal', '2008-09-15 00:00:00', 'Cvt550', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (162, '2008-07-16 00:00:00', 'Interim Order Expires in - CO 1136 of 2008(Safina Begum & Ors Vs Abdul Mannaf & Ors)', '2008-07-16 00:00:00', 'Order411', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (165, '2008-09-16 00:00:00', 'Caveat Expires in - 2238 of 2008 In re: Sabita Pal', '2008-09-16 00:00:00', 'Cvt551', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (168, '2008-08-31 00:00:00', 'Caveat Expires in - 1944  of 2008 In re: Sarbajit Ghatak', '2008-08-31 00:00:00', 'Cvt541', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (180, '2008-09-24 00:00:00', 'Caveat Expires in - 2399 of 2008 In re: Engineering Projects(India) Ltd', '2008-09-24 00:00:00', 'Cvt554', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (183, '2008-09-29 00:00:00', 'Caveat Expires in - 2445 of 2008 In re: Rajrani Singh', '2008-09-29 00:00:00', 'Cvt555', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (186, '2008-09-29 00:00:00', 'Caveat Expires in - 2446 of 2008 In re: Dulal Choudhury', '2008-09-29 00:00:00', 'Cvt556', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (189, '2008-09-30 00:00:00', 'Caveat Expires in - 2468 of 2008 In re: Sibu Nath Das', '2008-09-30 00:00:00', 'Cvt557', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (195, '2008-08-28 00:00:00', 'Interim Order Expires in - CO 947 of 2006(Sudhir Kumar Satnaliwala & Ors Vs Rina Dey & Ors)', '2008-08-28 00:00:00', 'Order390', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (200, '2008-10-04 00:00:00', 'Caveat Expires in - 2497 of 2008 In re: Partha Sarathi Ghosh', '2008-10-04 00:00:00', 'Cvt559', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (203, '2008-10-04 00:00:00', 'Caveat Expires in - 2496 of 2008 In re: 23 Palli Durga Mandir Society', '2008-10-04 00:00:00', 'Cvt560', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (209, '2008-10-21 00:00:00', 'Caveat Expires in - 2809 of 2008 In re: Sadhana Mitra', '2008-10-21 00:00:00', 'Cvt562', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (215, '2008-10-22 00:00:00', 'Caveat Expires in - 2832 of 2008 In re: Shampa Saha', '2008-10-22 00:00:00', 'Cvt564', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (218, '2008-10-25 00:00:00', 'Caveat Expires in - 2857 of 2008 In re: Sunil Kr. Bhuwalka', '2008-10-25 00:00:00', 'Cvt565', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (225, '2008-08-05 00:00:00', 'D.P. Wadhwa - Opinion in Writing', '2008-08-05 00:00:00', 'CWork10', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (232, '2009-02-05 00:00:00', 'Interim Order Expires in - CRR 248 of 2008(Kalipada Das Vs Sampa Das (Saha))', '2009-01-29 00:00:00', 'Order406', 'Y');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (233, '2009-02-05 00:00:00', 'Interim Order Expires in - CRR 248 of 2008(Kalipada Das Vs Sampa Das (Saha))', '2009-02-02 00:00:00', 'Order406', 'Y');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (234, '2009-02-05 00:00:00', 'Interim Order Expires in - CRR 248 of 2008(Kalipada Das Vs Sampa Das (Saha))', '2009-02-05 00:00:00', 'Order406', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (237, '2008-11-02 00:00:00', 'Caveat Expires in - 2958 of 2008 In re: Debasis Das', '2008-11-02 00:00:00', 'Cvt567', 'N');
INSERT INTO public.reminder (id, date, subject, remdate, refno, delable) VALUES (240, '2008-09-21 00:00:00', 'Caveat Expires in - 2304  of 2008 In re: Pratima Dutta', '2008-09-21 00:00:00', 'Cvt553', 'N');


--
-- TOC entry 3287 (class 0 OID 24913)
-- Dependencies: 233
-- Data for Name: rep; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3288 (class 0 OID 24919)
-- Dependencies: 234
-- Data for Name: rep1; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3289 (class 0 OID 24925)
-- Dependencies: 235
-- Data for Name: repappo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3290 (class 0 OID 24931)
-- Dependencies: 236
-- Data for Name: repcase; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3291 (class 0 OID 24940)
-- Dependencies: 237
-- Data for Name: repcit; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3292 (class 0 OID 24949)
-- Dependencies: 238
-- Data for Name: repdiary; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3293 (class 0 OID 24957)
-- Dependencies: 239
-- Data for Name: replend; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3294 (class 0 OID 24963)
-- Dependencies: 240
-- Data for Name: reprem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3295 (class 0 OID 24969)
-- Dependencies: 241
-- Data for Name: reptask; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3296 (class 0 OID 24978)
-- Dependencies: 242
-- Data for Name: sstopic; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (1, 1, 2, 'Right to');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (2, 1, 1, 'Audi Alterem Partem');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (3, 3, 3, 'Execution of Award');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (4, 4, 4, 'Transfer');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (5, 5, 7, 'under Section 37');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (6, 5, 7, 'under Section 39 (1940)');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (7, 5, 10, 'Section 11');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (8, 5, 8, 'Section 9');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (9, 5, 6, 'Section 34');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (10, 6, 14, 'Attachment');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (11, 6, 14, 'Recovery Officer');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (12, 6, 15, 'Appointment');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (13, 6, 15, 'Pay scale');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (14, 6, 15, 'Promotion');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (15, 6, 15, 'Transfer');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (16, 6, 15, 'Disciplinary Proceeding');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (17, 6, 397, 'Bank Account');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (18, 6, 397, 'Lockers');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (19, 6, 397, 'Fixed Deposit');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (20, 6, 14, 'Recovery Tribunal');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (21, 6, 14, 'Appeal');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (22, 6, 12, 'Recovery of Possession');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (23, 6, 13, 'Lapsed Deposit');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (24, 8, 18, 'Issue of');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (25, 8, 18, 'Impounding');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (26, 8, 18, 'Cancellation');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (27, 9, 21, 'Court Fee');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (28, 9, 21, 'on Probate');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (29, 9, 21, 'Valuation of Suit');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (30, 9, 20, 'Quasi-Easements');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (31, 9, 20, 'Irrevocable License');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (32, 9, 31, 'Interim Receiver');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (33, 9, 32, 'Appeal');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (34, 9, 32, 'Custody of Child');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (35, 9, 19, 'Preemption');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (36, 9, 19, 'Final Decree');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (37, 9, 19, 'Owelty');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (38, 9, 19, 'Preliminary Decree');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (39, 9, 19, 'Impartible Estate');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (40, 10, 45, 'In Appeal Court');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (41, 10, 45, 'In Trial Court');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (42, 10, 45, 'Transposition');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (43, 10, 35, 'Plaint');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (44, 10, 35, 'Written Statement');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (45, 10, 35, 'of Law');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (46, 10, 41, 'Additional Evidence');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (47, 10, 41, 'Dismissal');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (48, 10, 41, 'Limitation');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (49, 10, 41, 'Remand');
INSERT INTO public.sstopic (id, topicid, stopicid, subsubtopic) VALUES (50, 10, 41, 'Stay');


--
-- TOC entry 3297 (class 0 OID 24988)
-- Dependencies: 243
-- Data for Name: statute; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.statute (statid, actno, actyr, stat, actnm, status, type, damen, dstat) VALUES (1, NULL, '1908', 'Civil Procedure', 'Code of Civil Procedure, 1908', '', 'Central Act', '', '');
INSERT INTO public.statute (statid, actno, actyr, stat, actnm, status, type, damen, dstat) VALUES (2, NULL, '1955', 'Matrimonial & Maintenance', 'Hindu Marriage Act, 1955', '', 'Central Act', '', '');
INSERT INTO public.statute (statid, actno, actyr, stat, actnm, status, type, damen, dstat) VALUES (3, NULL, '1988', 'Consumer Law', 'Consumer Protection Act', '', 'Central Act', '', '');
INSERT INTO public.statute (statid, actno, actyr, stat, actnm, status, type, damen, dstat) VALUES (4, NULL, '1963', 'Specific Relief', 'Specific Relief Act, 1963', '', 'Central Act', '', '');
INSERT INTO public.statute (statid, actno, actyr, stat, actnm, status, type, damen, dstat) VALUES (5, NULL, '1955', 'Land Law', 'West Bengal Land Reforms Act, 1955', '', 'State Act', '', '');
INSERT INTO public.statute (statid, actno, actyr, stat, actnm, status, type, damen, dstat) VALUES (6, NULL, '1950', 'Constitution', 'Constitution of India', '', 'Central Act', '', '');
INSERT INTO public.statute (statid, actno, actyr, stat, actnm, status, type, damen, dstat) VALUES (7, '', '1956', 'Company Law', 'Companies Act, 1956', 'IN FORCE', 'Central Act', '', '');
INSERT INTO public.statute (statid, actno, actyr, stat, actnm, status, type, damen, dstat) VALUES (8, '', '1956', 'Tenancy', 'West Bengal Premises Tenancy Act, 1956', 'REPEALED', 'State Act', '', 'Repealed by West Bengal Premises Tenancy Act, 1997 with saving to pending proceedings. ');


--
-- TOC entry 3298 (class 0 OID 24998)
-- Dependencies: 244
-- Data for Name: stopic; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stopic (id, topicid, subtopic) VALUES (1, 1, 'Natural Justice');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (2, 1, 'Information');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (3, 3, 'Lok Adalat');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (4, 4, 'Government Tenement');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (5, 4, 'Essential Amenities');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (6, 5, 'Setting aside Award');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (7, 5, 'Appeal');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (8, 5, 'Interim Relief');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (9, 5, 'Proceeding');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (10, 5, 'Appointment of Arbitrator');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (11, 6, 'Government Finance');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (12, 6, 'Securitisation');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (13, 6, 'Treasury Rules');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (14, 6, 'Debt Recovery');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (15, 6, 'Employees and Service');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (16, 6, 'Postal Saving Scheme');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (17, 7, 'Compilation-Short Stories');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (18, 8, 'Passport');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (19, 9, 'Partition');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (20, 9, 'Easement & License');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (21, 9, 'Court Fees & Suit Valuation');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (22, 9, 'Partnership');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (23, 9, 'Defamation');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (24, 9, 'Adverse Possession');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (25, 9, 'Power of Attorney');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (26, 9, 'Compendium of Statutes');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (27, 9, 'Valuation');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (28, 9, 'Benami Transaction');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (29, 9, 'Digest of Cases');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (30, 9, 'Societies & Associations');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (31, 9, 'Insolvency');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (32, 9, 'Letters Patent');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (33, 10, 'Temporary Injunction');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (34, 10, 'Adjournment');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (35, 10, 'Amendment');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (36, 10, 'Witness');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (37, 10, 'Restitution');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (38, 10, 'Stay of Suit');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (39, 10, 'Evidence');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (40, 10, 'Admissions');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (41, 10, 'Appeal');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (42, 10, 'Discovery & Inspection');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (43, 10, 'Attachment before Judgment');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (44, 10, 'Transfer of Suit');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (45, 10, 'Addition of Party');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (46, 10, 'Affidavit');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (47, 10, 'Judgment');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (48, 10, 'Expeditious hearing');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (49, 10, 'Abatement & Substitution');
INSERT INTO public.stopic (id, topicid, subtopic) VALUES (50, 10, 'Inherent Power');


--
-- TOC entry 3299 (class 0 OID 25006)
-- Dependencies: 245
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (1, 'Draft Application', 'PENDING', '2007-01-19 00:00:00', '', 'Section 5- Hari Dasi Devi', 'Y');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (2, 'Draft Application', 'PENDING', '2007-01-12 00:00:00', '', 'For Substitution - Madhusudan Bora', 'Y');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (3, 'Draft Application', 'PENDING', '2007-01-12 00:00:00', '', 'For Maintenance-Bindu Aryya', 'Y');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (4, 'Draft Application', 'PENDING', '2008-01-09 00:00:00', '', 'For Substitution-Subrata Kar-Paid Rs 1000/- 0933-3133662: Uma Kar- Wife of Deceased, Kumar Kar-Son-Age 40 Occupation: Business; Same Address as Deceased: Nandini Ghosh-Daughter-Wife of Subrata Ghosh-AE 42- Tagore Gardens, New Delhi-110 027', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (5, 'Draft Application', 'PENDING', '2007-01-18 00:00:00', '', 'Section 5 and Injunction-FAT 3830 of 2004-Saroj Chakraborty', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (6, 'Draft Affidavit', 'PENDING', '2008-01-08 00:00:00', '', 'Opposition-Bhabesh Mazumdar', 'Y');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (7, 'Draft Application', 'PENDING', '2008-01-09 00:00:00', '', 'For Substitution-Ram Amrita Hazra', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (8, 'Draw Application-Expeditious Hearing', 'PENDING', '2008-01-08 00:00:00', '', 'Brief ID-1346 - FA 68 of 2006 [Aradhana Chatterjee Vs Anup Chatterjee]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (9, 'Draw Petition for Contempt', 'PENDING', '2007-01-17 00:00:00', '', 'Gita Debnath-Paid Rs 3000/- on 3.7.2006', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (10, 'Draw Affidavit-in-Opposition', 'PENDING', '2008-01-16 00:00:00', '', 'Brief ID-1424 - WP 17996 (W) of 2006 [Gobinda Dhali Vs State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (11, 'Draw Application', 'PENDING', '2008-01-10 00:00:00', 'Sukanta Chakraborty', 'For Condonation of Delay-Brief ID-1512 - SAT 4006 of 2006 [Dilip Karmakar Vs Pushparani Karmakar & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (12, 'Inform Client', 'PENDING', '2007-01-10 00:00:00', '', 'Brief ID-771 - CO 2912 of 2004 [Satya Narayan Pal & Ors Vs Sukhen Ch. Pal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (13, 'Draw Application', 'PENDING', '2008-01-10 00:00:00', 'Sukanta Chakraborty', 'Brief ID-1604 - FAT 4797 of 2006 [Paramananda Mondal Vs Sulekha Mondal]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (14, 'Draw Gift Deed', 'PENDING', '2007-01-25 00:00:00', '', 'Arabinda Adak-94330-38106-Paid Rs 1000/-', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (15, 'Communicate Order Passed', 'PENDING', '2007-02-06 00:00:00', '', 'Brief ID-1615 - WP 27913 (W) of 2006 [Philip Murmu Vs State of West Bengal & Ors] To the District Primary Schol Council.', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (16, 'Draw Application', 'PENDING', '2007-03-15 00:00:00', 'Sukanta Chakraborty', 'For Stay and Condonation of Delay of About 8 days-Brief ID-1701 - FAT 818 of 2007 [Goutam Saha Vs Kakali Chakraborty & Anr]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (17, 'Draw Application', 'PENDING', '2007-05-03 00:00:00', '', 'For substitution-Brief ID-1059 - FMAT 3843 of 2005 [Uma Banerjee & Ors Vs Sukumar Banerjee & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (18, 'Draw Plaint', 'PENDING', '2007-05-30 00:00:00', '', 'Draw Plaint in Bhushan Steel Matter-Rs 10,000/-', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (19, 'Draw Petition for Bail', 'PENDING', '2007-07-03 00:00:00', 'Sukanta Chakraborty', 'Brief ID-1818 - CRA 266 of 2007 [Dhananjoy Mahato & Ors Vs State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (20, 'Draw Application', 'PENDING', '2007-07-17 00:00:00', '', 'Brief ID-1878 - FAT 2357 of 2007 [Amarnath Saha Vs Samarnath Saha & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (21, 'Draw Application', 'PENDING', '2007-07-23 00:00:00', '', 'Brief ID-879 - WP 9984 (W) of 2005 [Sapan Kaushik Vs The State of Wset Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (22, 'Draw Application', 'PENDING', '2008-01-10 00:00:00', '', 'Brief ID-1892 - FAT 2364 of 2007 [Swapan Kr. Mondal & Ors Vs Achintya Mondal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (23, 'Draw Application', 'PENDING', '2007-08-15 00:00:00', '', 'Brief ID-1419 - SAT 2996 of 2006 [Samir Ranjan Halder Vs Nirmalendu Halder]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (24, 'Draw Affidavit -in-Opposition', 'PENDING', '2007-09-06 00:00:00', 'Rajat Dutta', 'Brief ID-927 - WP 11215 (W) of 2005 [Tarini Charan Das & Anr Vs State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (25, 'Draw Application', 'PENDING', '2008-01-10 00:00:00', 'Rajat Dutta', 'Brief ID-1689 - FAT 721 of 2007 [Abdul Sattar & Ors Vs Jainal Abedin & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (26, 'Draw Affidavit -in-opposition', 'PENDING', '2007-10-05 00:00:00', '', 'Brief ID-1844 - WP 11699(W) of 2007 [Debashish Mukherjee Vs West Bengal Surface Transport Corporation Ltd. & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (27, 'Draw Affidavit-in-opposition', 'PENDING', '2008-01-08 00:00:00', 'Rajat Dutta', 'Brief ID-2017 - WP 19140(W) of 2007 [Ujjal Gunguly & Ors Vs State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (28, 'Draw Affidavit -in-Opposition', 'PENDING', '2007-12-04 00:00:00', '', 'Brief ID-2026 - WP 21334(W) of 2007 [Arun Karuri Vs State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (29, 'Draw Affidavit-in-opposition', 'PENDING', '2008-01-31 00:00:00', 'Rajat Dutta', 'Brief ID-2116 - WP 27377(W) of 2007 [Allotees Association of Ulhas, Burdwan & Ors Vs State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (30, 'Draw Affidavit -in-Opposition', 'PENDING', '2008-02-14 00:00:00', '', 'Brief ID-2153 - CO 3637 of 2007 [Swapan Kr. Ghoshal & Ors Vs Nirmal Kundu & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (31, 'Draw Affidavit -in-Opposition', 'PENDING', '2008-03-07 00:00:00', 'Rajat Dutta', 'Brief ID-2170 - WP 2096(W) of 2008 [Malay Kumar Ghosh Vs State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (32, 'Draw Application for substitution', 'PENDING', '2008-03-11 00:00:00', 'Sukanta Chakraborty', 'Brief ID-1852 - CO 2265 of 2007 [Shyam Sundar Sen Vs Usha Rani Dasi (Das)]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (33, 'Draw Affidavit -in-Opposition', 'PENDING', '2008-05-02 00:00:00', 'Rajat Dutta', 'Brief ID-2211 - WP 3914(W) of 2008 [Mrityunjay Karmakar Vs State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (34, 'Draw Petition', 'PENDING', '2008-06-02 00:00:00', 'Suhrid Sur', 'Draw Appeal and Application under Section 227-Ranga Java-Paid Rs. 6500/-', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (35, 'Draw Affidavit -in-Opposition', 'PENDING', '2008-11-02 00:00:00', 'Suhrid Sur', 'Brief ID-2442 - FAT 216 of 2008--[Sita Ram Behani Vs Amiya Kumar Mukherjee & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (36, 'Draw Affidavit -in-Opposition', 'PENDING', '2008-11-07 00:00:00', '', 'Brief ID-2411 - WP 11220(W) of 2008--[Mita Rani Bairagi Vs The State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (37, 'Draw Affidavit in-Opposition', 'PENDING', '2008-11-11 00:00:00', 'Suhrid Sur', 'Brief ID-2411 - WP 11220(W) of 2008--[Mita Rani Bairagi Vs The State of West Bengal & Ors]', 'N');
INSERT INTO public.task (id, type, stat, dt, assto, sub, rem) VALUES (38, 'Draw Affidavit -in-opposition', 'PENDING', '2008-12-25 00:00:00', '', 'Brief ID-2567 - CO 3019 of 2008--[Arpita Mitra Vs Sabyasachi Mitra]', 'N');


--
-- TOC entry 3300 (class 0 OID 25016)
-- Dependencies: 246
-- Data for Name: topic; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.topic (topicid, det) VALUES (1, 'Administrative Law');
INSERT INTO public.topic (topicid, det) VALUES (2, 'Administrative Tribunals');
INSERT INTO public.topic (topicid, det) VALUES (3, 'Advocates & Legal Services');
INSERT INTO public.topic (topicid, det) VALUES (4, 'Apartment & Building');
INSERT INTO public.topic (topicid, det) VALUES (5, 'Arbitration & Conciliation');
INSERT INTO public.topic (topicid, det) VALUES (6, 'Banking & Finance');
INSERT INTO public.topic (topicid, det) VALUES (7, 'Bengali Literature');
INSERT INTO public.topic (topicid, det) VALUES (8, 'Citizenship');
INSERT INTO public.topic (topicid, det) VALUES (9, 'Civil Law');
INSERT INTO public.topic (topicid, det) VALUES (10, 'Civil Procedure');
INSERT INTO public.topic (topicid, det) VALUES (11, 'Common Law');
INSERT INTO public.topic (topicid, det) VALUES (12, 'Company Law');
INSERT INTO public.topic (topicid, det) VALUES (13, 'Compensation & Damages');
INSERT INTO public.topic (topicid, det) VALUES (14, 'Constitution ');
INSERT INTO public.topic (topicid, det) VALUES (15, 'Constitutional Law ');
INSERT INTO public.topic (topicid, det) VALUES (16, 'Consumer Law');
INSERT INTO public.topic (topicid, det) VALUES (17, 'Contempt');
INSERT INTO public.topic (topicid, det) VALUES (18, 'Contract');
INSERT INTO public.topic (topicid, det) VALUES (19, 'Co-operative Societies');
INSERT INTO public.topic (topicid, det) VALUES (20, 'Criminal Law');
INSERT INTO public.topic (topicid, det) VALUES (21, 'Criminal Procedure');
INSERT INTO public.topic (topicid, det) VALUES (22, 'Drugs, Cosmetics & Medicines');
INSERT INTO public.topic (topicid, det) VALUES (23, 'Education');
INSERT INTO public.topic (topicid, det) VALUES (24, 'Election');
INSERT INTO public.topic (topicid, det) VALUES (25, 'Electricity');
INSERT INTO public.topic (topicid, det) VALUES (26, 'English Literature');
INSERT INTO public.topic (topicid, det) VALUES (27, 'Environmental Law');
INSERT INTO public.topic (topicid, det) VALUES (28, 'Essential Commodities');
INSERT INTO public.topic (topicid, det) VALUES (29, 'Essential Services');
INSERT INTO public.topic (topicid, det) VALUES (30, 'Evidence');
INSERT INTO public.topic (topicid, det) VALUES (31, 'Forests & Wildlife');
INSERT INTO public.topic (topicid, det) VALUES (32, 'General Legal');
INSERT INTO public.topic (topicid, det) VALUES (33, 'General Reading');
INSERT INTO public.topic (topicid, det) VALUES (34, 'Highways & Tolls');
INSERT INTO public.topic (topicid, det) VALUES (35, 'Hindu Law');
INSERT INTO public.topic (topicid, det) VALUES (36, 'Hire Purchase');
INSERT INTO public.topic (topicid, det) VALUES (37, 'Industrial Law');
INSERT INTO public.topic (topicid, det) VALUES (38, 'Information Technology Law');
INSERT INTO public.topic (topicid, det) VALUES (39, 'Insurance Law');
INSERT INTO public.topic (topicid, det) VALUES (40, 'Intellectual Property Law');
INSERT INTO public.topic (topicid, det) VALUES (41, 'International Law');
INSERT INTO public.topic (topicid, det) VALUES (42, 'Interpretation');
INSERT INTO public.topic (topicid, det) VALUES (43, 'Jurisprudence');
INSERT INTO public.topic (topicid, det) VALUES (44, 'Land Law');
INSERT INTO public.topic (topicid, det) VALUES (45, 'Limitation & Prescription');
INSERT INTO public.topic (topicid, det) VALUES (46, 'Matrimonial & Maintenance');
INSERT INTO public.topic (topicid, det) VALUES (47, 'Medical Jurisprudence');
INSERT INTO public.topic (topicid, det) VALUES (48, 'Mental Health');
INSERT INTO public.topic (topicid, det) VALUES (49, 'Military Law');
INSERT INTO public.topic (topicid, det) VALUES (50, 'Mines & Minerals');


--
-- TOC entry 3301 (class 0 OID 25023)
-- Dependencies: 247
-- Data for Name: tour; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tour (id, frdt, todt, place, purpose) VALUES (1, '2000-02-27 00:00:00', '2007-07-29 00:00:00', 'New Delhi', 'Arbitration in Bata Matter');
INSERT INTO public.tour (id, frdt, todt, place, purpose) VALUES (2, '2000-04-24 00:00:00', '2007-08-26 00:00:00', 'New Delhi', 'Local Inspection in Re: Sagar Roy');
INSERT INTO public.tour (id, frdt, todt, place, purpose) VALUES (3, '0200-10-07 00:00:00', '2007-10-08 00:00:00', 'New Delhi', 'Supreme Court in Jogesh Kr. Shah SLP matter');
INSERT INTO public.tour (id, frdt, todt, place, purpose) VALUES (4, '2000-05-04 00:00:00', '2008-05-05 00:00:00', 'New Delhi', 'Supreme Court in Parul Rani Bose');
INSERT INTO public.tour (id, frdt, todt, place, purpose) VALUES (5, '2000-08-01 00:00:00', '2008-08-03 00:00:00', 'New Delhi', 'Arbitration in Bata Matter');
INSERT INTO public.tour (id, frdt, todt, place, purpose) VALUES (6, '2000-10-23 00:00:00', '2008-10-26 00:00:00', 'New Delhi', 'Arbitration in Bata Matter');


--
-- TOC entry 2975 (class 2606 OID 24582)
-- Name: appo appo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appo
    ADD CONSTRAINT appo_pkey PRIMARY KEY (id);


--
-- TOC entry 2977 (class 2606 OID 24592)
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (cla);


--
-- TOC entry 2982 (class 2606 OID 24608)
-- Name: billdet billdet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billdet
    ADD CONSTRAINT billdet_pkey PRIMARY KEY (id);


--
-- TOC entry 2986 (class 2606 OID 24619)
-- Name: billm billm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billm
    ADD CONSTRAINT billm_pkey PRIMARY KEY (id);


--
-- TOC entry 2991 (class 2606 OID 24630)
-- Name: billmst billmst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billmst
    ADD CONSTRAINT billmst_pkey PRIMARY KEY (billno);


--
-- TOC entry 2995 (class 2606 OID 24646)
-- Name: billper billper_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billper
    ADD CONSTRAINT billper_pkey PRIMARY KEY (aid);


--
-- TOC entry 2997 (class 2606 OID 24658)
-- Name: casedet casedet_bno_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.casedet
    ADD CONSTRAINT casedet_bno_key UNIQUE (bno);


--
-- TOC entry 3008 (class 2606 OID 24675)
-- Name: caveat caveat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caveat
    ADD CONSTRAINT caveat_pkey PRIMARY KEY (id);


--
-- TOC entry 3012 (class 2606 OID 24688)
-- Name: chember chember_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chember
    ADD CONSTRAINT chember_pkey PRIMARY KEY (chid);


--
-- TOC entry 3014 (class 2606 OID 24699)
-- Name: citation citation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.citation
    ADD CONSTRAINT citation_pkey PRIMARY KEY (claw);


--
-- TOC entry 3022 (class 2606 OID 24711)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (clid);


--
-- TOC entry 3027 (class 2606 OID 24728)
-- Name: diary diary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diary
    ADD CONSTRAINT diary_pkey PRIMARY KEY (id);


--
-- TOC entry 3030 (class 2606 OID 24741)
-- Name: docs docs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docs
    ADD CONSTRAINT docs_pkey PRIMARY KEY (docid);


--
-- TOC entry 3033 (class 2606 OID 24751)
-- Name: docsimp docsimp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docsimp
    ADD CONSTRAINT docsimp_pkey PRIMARY KEY (docid);


--
-- TOC entry 3036 (class 2606 OID 24761)
-- Name: docsmisc docsmisc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docsmisc
    ADD CONSTRAINT docsmisc_pkey PRIMARY KEY (docid);


--
-- TOC entry 3039 (class 2606 OID 24768)
-- Name: docstype docstype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docstype
    ADD CONSTRAINT docstype_pkey PRIMARY KEY (docid);


--
-- TOC entry 3043 (class 2606 OID 24776)
-- Name: filing filing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filing
    ADD CONSTRAINT filing_pkey PRIMARY KEY (fid);


--
-- TOC entry 3048 (class 2606 OID 24786)
-- Name: ifiling ifiling_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ifiling
    ADD CONSTRAINT ifiling_pkey PRIMARY KEY (fid);


--
-- TOC entry 3052 (class 2606 OID 24800)
-- Name: introl introl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.introl
    ADD CONSTRAINT introl_pkey PRIMARY KEY (id);


--
-- TOC entry 3057 (class 2606 OID 24813)
-- Name: iopassed iopassed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.iopassed
    ADD CONSTRAINT iopassed_pkey PRIMARY KEY (id);


--
-- TOC entry 3061 (class 2606 OID 24824)
-- Name: ipleading ipleading_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ipleading
    ADD CONSTRAINT ipleading_pkey PRIMARY KEY (id);


--
-- TOC entry 3064 (class 2606 OID 24832)
-- Name: journal journal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.journal
    ADD CONSTRAINT journal_pkey PRIMARY KEY (id);


--
-- TOC entry 3067 (class 2606 OID 24839)
-- Name: lend lend_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lend
    ADD CONSTRAINT lend_pkey PRIMARY KEY (id);


--
-- TOC entry 3070 (class 2606 OID 24851)
-- Name: library library_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.library
    ADD CONSTRAINT library_pkey PRIMARY KEY (id);


--
-- TOC entry 3072 (class 2606 OID 24857)
-- Name: login login_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (password);


--
-- TOC entry 3076 (class 2606 OID 24867)
-- Name: opassed opassed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opassed
    ADD CONSTRAINT opassed_pkey PRIMARY KEY (id);


--
-- TOC entry 3078 (class 2606 OID 24874)
-- Name: path path_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.path
    ADD CONSTRAINT path_pkey PRIMARY KEY (name);


--
-- TOC entry 3081 (class 2606 OID 24881)
-- Name: pleading pleading_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pleading
    ADD CONSTRAINT pleading_pkey PRIMARY KEY (id);


--
-- TOC entry 3083 (class 2606 OID 24891)
-- Name: proposition proposition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposition
    ADD CONSTRAINT proposition_pkey PRIMARY KEY (clp);


--
-- TOC entry 3085 (class 2606 OID 24901)
-- Name: regist regist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regist
    ADD CONSTRAINT regist_pkey PRIMARY KEY (name);


--
-- TOC entry 3090 (class 2606 OID 24909)
-- Name: reminder reminder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reminder
    ADD CONSTRAINT reminder_pkey PRIMARY KEY (id);


--
-- TOC entry 3095 (class 2606 OID 24924)
-- Name: rep1 rep1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rep1
    ADD CONSTRAINT rep1_pkey PRIMARY KEY (id);


--
-- TOC entry 3093 (class 2606 OID 24918)
-- Name: rep rep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rep
    ADD CONSTRAINT rep_pkey PRIMARY KEY (id);


--
-- TOC entry 3097 (class 2606 OID 24930)
-- Name: repappo repappo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repappo
    ADD CONSTRAINT repappo_pkey PRIMARY KEY (id);


--
-- TOC entry 3099 (class 2606 OID 24939)
-- Name: repcase repcase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repcase
    ADD CONSTRAINT repcase_pkey PRIMARY KEY (bno);


--
-- TOC entry 3101 (class 2606 OID 24948)
-- Name: repcit repcit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repcit
    ADD CONSTRAINT repcit_pkey PRIMARY KEY (id);


--
-- TOC entry 3104 (class 2606 OID 24955)
-- Name: repdiary repdiary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repdiary
    ADD CONSTRAINT repdiary_pkey PRIMARY KEY (id);


--
-- TOC entry 3106 (class 2606 OID 24962)
-- Name: replend replend_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.replend
    ADD CONSTRAINT replend_pkey PRIMARY KEY (id);


--
-- TOC entry 3108 (class 2606 OID 24968)
-- Name: reprem reprem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reprem
    ADD CONSTRAINT reprem_pkey PRIMARY KEY (id);


--
-- TOC entry 3110 (class 2606 OID 24977)
-- Name: reptask reptask_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reptask
    ADD CONSTRAINT reptask_pkey PRIMARY KEY (id);


--
-- TOC entry 3112 (class 2606 OID 24985)
-- Name: sstopic sstopic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sstopic
    ADD CONSTRAINT sstopic_pkey PRIMARY KEY (id);


--
-- TOC entry 3116 (class 2606 OID 24996)
-- Name: statute statute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statute
    ADD CONSTRAINT statute_pkey PRIMARY KEY (statid);


--
-- TOC entry 3119 (class 2606 OID 25004)
-- Name: stopic stopic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stopic
    ADD CONSTRAINT stopic_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 2606 OID 25014)
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- TOC entry 3126 (class 2606 OID 25021)
-- Name: topic topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topic
    ADD CONSTRAINT topic_pkey PRIMARY KEY (topicid);


--
-- TOC entry 3129 (class 2606 OID 25028)
-- Name: tour tour_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tour
    ADD CONSTRAINT tour_pkey PRIMARY KEY (id);


--
-- TOC entry 2973 (class 1259 OID 24583)
-- Name: appo_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appo_id ON public.appo USING btree (id);


--
-- TOC entry 2978 (class 1259 OID 24609)
-- Name: billdet_billno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billdet_billno ON public.billdet USING btree (billno);


--
-- TOC entry 2979 (class 1259 OID 24610)
-- Name: billdet_clid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billdet_clid ON public.billdet USING btree (clid);


--
-- TOC entry 2980 (class 1259 OID 24611)
-- Name: billdet_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billdet_id ON public.billdet USING btree (id);


--
-- TOC entry 2983 (class 1259 OID 24612)
-- Name: billdet_refno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billdet_refno ON public.billdet USING btree (refno);


--
-- TOC entry 2984 (class 1259 OID 24620)
-- Name: billm_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billm_id ON public.billm USING btree (id);


--
-- TOC entry 2987 (class 1259 OID 24631)
-- Name: billmst_billid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billmst_billid ON public.billmst USING btree (billno);


--
-- TOC entry 2988 (class 1259 OID 24632)
-- Name: billmst_billpaid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billmst_billpaid ON public.billmst USING btree (billpaid);


--
-- TOC entry 2989 (class 1259 OID 24633)
-- Name: billmst_clid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billmst_clid ON public.billmst USING btree (clid);


--
-- TOC entry 2992 (class 1259 OID 24634)
-- Name: billmst_refno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billmst_refno ON public.billmst USING btree (refno);


--
-- TOC entry 2993 (class 1259 OID 24647)
-- Name: billper_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX billper_id ON public.billper USING btree (aid);


--
-- TOC entry 2998 (class 1259 OID 24659)
-- Name: casedet_catid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX casedet_catid ON public.casedet USING btree (catid);


--
-- TOC entry 2999 (class 1259 OID 24660)
-- Name: casedet_clid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX casedet_clid ON public.casedet USING btree (clid);


--
-- TOC entry 3000 (class 1259 OID 24661)
-- Name: casedet_stageid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX casedet_stageid ON public.casedet USING btree (stageid);


--
-- TOC entry 3001 (class 1259 OID 24662)
-- Name: casedet_statusid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX casedet_statusid ON public.casedet USING btree (statusid);


--
-- TOC entry 3002 (class 1259 OID 24663)
-- Name: casedet_subgroupid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX casedet_subgroupid ON public.casedet USING btree (subgroupid);


--
-- TOC entry 3003 (class 1259 OID 24664)
-- Name: casedet_wsecid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX casedet_wsecid ON public.casedet USING btree (wsecid);


--
-- TOC entry 3004 (class 1259 OID 24676)
-- Name: caveat_clid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX caveat_clid ON public.caveat USING btree (clid);


--
-- TOC entry 3005 (class 1259 OID 24677)
-- Name: caveat_courtid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX caveat_courtid ON public.caveat USING btree (courtid);


--
-- TOC entry 3006 (class 1259 OID 24678)
-- Name: caveat_cvid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX caveat_cvid ON public.caveat USING btree (id);


--
-- TOC entry 3009 (class 1259 OID 24689)
-- Name: chember_chid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chember_chid ON public.chember USING btree (chid);


--
-- TOC entry 3010 (class 1259 OID 24690)
-- Name: chember_clid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chember_clid ON public.chember USING btree (clid);


--
-- TOC entry 3015 (class 1259 OID 24712)
-- Name: client_clientid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_clientid ON public.client USING btree (clid);


--
-- TOC entry 3016 (class 1259 OID 24713)
-- Name: client_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_email ON public.client USING btree (oeml);


--
-- TOC entry 3017 (class 1259 OID 24714)
-- Name: client_fax; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_fax ON public.client USING btree (ofax);


--
-- TOC entry 3018 (class 1259 OID 24715)
-- Name: client_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_name ON public.client USING btree (cat);


--
-- TOC entry 3019 (class 1259 OID 24716)
-- Name: client_phoneo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_phoneo ON public.client USING btree (oph);


--
-- TOC entry 3020 (class 1259 OID 24717)
-- Name: client_phoner; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_phoner ON public.client USING btree (eml);


--
-- TOC entry 3023 (class 1259 OID 24729)
-- Name: diary_appid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX diary_appid ON public.diary USING btree (appid);


--
-- TOC entry 3024 (class 1259 OID 24730)
-- Name: diary_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX diary_bno ON public.diary USING btree (bno);


--
-- TOC entry 3025 (class 1259 OID 24731)
-- Name: diary_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX diary_id ON public.diary USING btree (id);


--
-- TOC entry 3028 (class 1259 OID 24742)
-- Name: docs_courtid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX docs_courtid ON public.docs USING btree (docid);


--
-- TOC entry 3031 (class 1259 OID 24752)
-- Name: docsimp_courtid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX docsimp_courtid ON public.docsimp USING btree (docid);


--
-- TOC entry 3034 (class 1259 OID 24762)
-- Name: docsmisc_courtid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX docsmisc_courtid ON public.docsmisc USING btree (docid);


--
-- TOC entry 3037 (class 1259 OID 24769)
-- Name: docstype_courtid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX docstype_courtid ON public.docstype USING btree (docid);


--
-- TOC entry 3040 (class 1259 OID 24777)
-- Name: filing_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filing_bno ON public.filing USING btree (bno);


--
-- TOC entry 3041 (class 1259 OID 24778)
-- Name: filing_fid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filing_fid ON public.filing USING btree (fid);


--
-- TOC entry 3044 (class 1259 OID 24787)
-- Name: ifiling_appno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ifiling_appno ON public.ifiling USING btree (appno);


--
-- TOC entry 3045 (class 1259 OID 24788)
-- Name: ifiling_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ifiling_bno ON public.ifiling USING btree (bno);


--
-- TOC entry 3046 (class 1259 OID 24789)
-- Name: ifiling_fid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ifiling_fid ON public.ifiling USING btree (fid);


--
-- TOC entry 3049 (class 1259 OID 24801)
-- Name: introl_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX introl_bno ON public.introl USING btree (bno);


--
-- TOC entry 3050 (class 1259 OID 24802)
-- Name: introl_iappno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX introl_iappno ON public.introl USING btree (iappno);


--
-- TOC entry 3053 (class 1259 OID 24814)
-- Name: iopassed_appno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX iopassed_appno ON public.iopassed USING btree (appno);


--
-- TOC entry 3054 (class 1259 OID 24815)
-- Name: iopassed_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX iopassed_bno ON public.iopassed USING btree (bno);


--
-- TOC entry 3055 (class 1259 OID 24816)
-- Name: iopassed_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX iopassed_id ON public.iopassed USING btree (id);


--
-- TOC entry 3058 (class 1259 OID 24825)
-- Name: ipleading_appno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ipleading_appno ON public.ipleading USING btree (appno);


--
-- TOC entry 3059 (class 1259 OID 24826)
-- Name: ipleading_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ipleading_bno ON public.ipleading USING btree (bno);


--
-- TOC entry 3062 (class 1259 OID 24833)
-- Name: journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX journal_id ON public.journal USING btree (id);


--
-- TOC entry 3065 (class 1259 OID 24840)
-- Name: lend_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lend_id ON public.lend USING btree (id);


--
-- TOC entry 3068 (class 1259 OID 24852)
-- Name: library_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX library_id ON public.library USING btree (id);


--
-- TOC entry 3073 (class 1259 OID 24868)
-- Name: opassed_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX opassed_bno ON public.opassed USING btree (bno);


--
-- TOC entry 3074 (class 1259 OID 24869)
-- Name: opassed_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX opassed_id ON public.opassed USING btree (id);


--
-- TOC entry 3079 (class 1259 OID 24882)
-- Name: pleading_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pleading_bno ON public.pleading USING btree (bno);


--
-- TOC entry 3086 (class 1259 OID 24902)
-- Name: regist_refno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX regist_refno ON public.regist USING btree (refno);


--
-- TOC entry 3087 (class 1259 OID 24910)
-- Name: reminder_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reminder_date ON public.reminder USING btree (date);


--
-- TOC entry 3088 (class 1259 OID 24911)
-- Name: reminder_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reminder_id ON public.reminder USING btree (id);


--
-- TOC entry 3091 (class 1259 OID 24912)
-- Name: reminder_remdate; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reminder_remdate ON public.reminder USING btree (remdate);


--
-- TOC entry 3102 (class 1259 OID 24956)
-- Name: repdiary_bno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX repdiary_bno ON public.repdiary USING btree (bno);


--
-- TOC entry 3113 (class 1259 OID 24986)
-- Name: sstopic_topicid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sstopic_topicid ON public.sstopic USING btree (stopicid);


--
-- TOC entry 3114 (class 1259 OID 24987)
-- Name: sstopic_topicid1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sstopic_topicid1 ON public.sstopic USING btree (topicid);


--
-- TOC entry 3117 (class 1259 OID 24997)
-- Name: statute_statid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX statute_statid ON public.statute USING btree (statid);


--
-- TOC entry 3120 (class 1259 OID 25005)
-- Name: stopic_topicid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stopic_topicid ON public.stopic USING btree (topicid);


--
-- TOC entry 3121 (class 1259 OID 25015)
-- Name: task_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_id ON public.task USING btree (id);


--
-- TOC entry 3124 (class 1259 OID 25022)
-- Name: topic_courtid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX topic_courtid ON public.topic USING btree (topicid);


--
-- TOC entry 3127 (class 1259 OID 25029)
-- Name: tour_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tour_id ON public.tour USING btree (id);


-- Completed on 2022-03-01 06:33:35

--
-- PostgreSQL database dump complete
--

