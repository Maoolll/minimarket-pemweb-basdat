--
-- PostgreSQL database dump
--

\restrict tRwVNZ9vx1nVmi9qZ4GWla4o52VRcnSmlSxPFkC6dqi0famrU5Hm01gCabwmygV

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: detail_transaksi; Type: TABLE; Schema: public; Owner: yuki
--

CREATE TABLE public.detail_transaksi (
    id_detail_transaksi integer NOT NULL,
    kode_transaksi integer,
    id_produk integer,
    jumlah_produk integer,
    subtotal numeric(12,2)
);


ALTER TABLE public.detail_transaksi OWNER TO yuki;

--
-- Name: jadwal_shift; Type: TABLE; Schema: public; Owner: yuki
--

CREATE TABLE public.jadwal_shift (
    id_jadwal integer NOT NULL,
    jam_masuk time without time zone,
    jam_selesai time without time zone,
    hari character varying(16)
);


ALTER TABLE public.jadwal_shift OWNER TO yuki;

--
-- Name: jenis_produk; Type: TABLE; Schema: public; Owner: yuki
--

CREATE TABLE public.jenis_produk (
    id_jenis_produk integer NOT NULL,
    nama_jenis_produk character varying(200),
    keterangan character varying(100)
);


ALTER TABLE public.jenis_produk OWNER TO yuki;

--
-- Name: logistik; Type: TABLE; Schema: public; Owner: yuki
--

CREATE TABLE public.logistik (
    id_logistik integer NOT NULL,
    id_produk integer,
    stok_barang_masuk integer,
    tanggal_masuk date
);


ALTER TABLE public.logistik OWNER TO yuki;

--
-- Name: pegawai; Type: TABLE; Schema: public; Owner: yuki
--

CREATE TABLE public.pegawai (
    id_pegawai integer NOT NULL,
    id_jadwal integer,
    nama character varying(200),
    jenis_kelamin character varying(10),
    no_telp character varying(16),
    jabatan character varying(50),
    alamat character varying(300)
);


ALTER TABLE public.pegawai OWNER TO yuki;

--
-- Name: pembeli; Type: TABLE; Schema: public; Owner: yuki
--

CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(200),
    no_telp character varying(16),
    email character varying(100),
    total_poin integer
);


ALTER TABLE public.pembeli OWNER TO yuki;

--
-- Name: produk; Type: TABLE; Schema: public; Owner: yuki
--

CREATE TABLE public.produk (
    id_produk integer NOT NULL,
    id_jenis_produk integer,
    nama_produk character varying(200),
    harga_satuan numeric(12,2),
    merek character varying(100),
    jumlah_stok integer,
    minimum_stok integer
);


ALTER TABLE public.produk OWNER TO yuki;

--
-- Name: transaksi; Type: TABLE; Schema: public; Owner: yuki
--

CREATE TABLE public.transaksi (
    kode_transaksi integer NOT NULL,
    id_pembeli integer,
    id_pegawai integer,
    total_pembayaran numeric(12,2),
    metode_pembayaran character varying(50),
    tanggal_transaksi date,
    poin_transaksi integer
);


ALTER TABLE public.transaksi OWNER TO yuki;

--
-- Data for Name: detail_transaksi; Type: TABLE DATA; Schema: public; Owner: yuki
--

COPY public.detail_transaksi (id_detail_transaksi, kode_transaksi, id_produk, jumlah_produk, subtotal) FROM stdin;
\.


--
-- Data for Name: jadwal_shift; Type: TABLE DATA; Schema: public; Owner: yuki
--

COPY public.jadwal_shift (id_jadwal, jam_masuk, jam_selesai, hari) FROM stdin;
\.


--
-- Data for Name: jenis_produk; Type: TABLE DATA; Schema: public; Owner: yuki
--

COPY public.jenis_produk (id_jenis_produk, nama_jenis_produk, keterangan) FROM stdin;
\.


--
-- Data for Name: logistik; Type: TABLE DATA; Schema: public; Owner: yuki
--

COPY public.logistik (id_logistik, id_produk, stok_barang_masuk, tanggal_masuk) FROM stdin;
\.


--
-- Data for Name: pegawai; Type: TABLE DATA; Schema: public; Owner: yuki
--

COPY public.pegawai (id_pegawai, id_jadwal, nama, jenis_kelamin, no_telp, jabatan, alamat) FROM stdin;
\.


--
-- Data for Name: pembeli; Type: TABLE DATA; Schema: public; Owner: yuki
--

COPY public.pembeli (id_pembeli, nama_pembeli, no_telp, email, total_poin) FROM stdin;
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: yuki
--

COPY public.produk (id_produk, id_jenis_produk, nama_produk, harga_satuan, merek, jumlah_stok, minimum_stok) FROM stdin;
\.


--
-- Data for Name: transaksi; Type: TABLE DATA; Schema: public; Owner: yuki
--

COPY public.transaksi (kode_transaksi, id_pembeli, id_pegawai, total_pembayaran, metode_pembayaran, tanggal_transaksi, poin_transaksi) FROM stdin;
\.


--
-- Name: detail_transaksi detail_transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.detail_transaksi
    ADD CONSTRAINT detail_transaksi_pkey PRIMARY KEY (id_detail_transaksi);


--
-- Name: jadwal_shift jadwal_shift_pkey; Type: CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.jadwal_shift
    ADD CONSTRAINT jadwal_shift_pkey PRIMARY KEY (id_jadwal);


--
-- Name: jenis_produk jenis_produk_pkey; Type: CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.jenis_produk
    ADD CONSTRAINT jenis_produk_pkey PRIMARY KEY (id_jenis_produk);


--
-- Name: logistik logistik_pkey; Type: CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.logistik
    ADD CONSTRAINT logistik_pkey PRIMARY KEY (id_logistik);


--
-- Name: pegawai pegawai_pkey; Type: CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_pkey PRIMARY KEY (id_pegawai);


--
-- Name: pembeli pembeli_pkey; Type: CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);


--
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (id_produk);


--
-- Name: transaksi transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (kode_transaksi);


--
-- Name: detail_transaksi detail_transaksi_fk_id_produk; Type: FK CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.detail_transaksi
    ADD CONSTRAINT detail_transaksi_fk_id_produk FOREIGN KEY (id_produk) REFERENCES public.produk(id_produk);


--
-- Name: detail_transaksi detail_transaksi_fk_kode_transaksi; Type: FK CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.detail_transaksi
    ADD CONSTRAINT detail_transaksi_fk_kode_transaksi FOREIGN KEY (kode_transaksi) REFERENCES public.transaksi(kode_transaksi);


--
-- Name: logistik logistik_fk_id_produk; Type: FK CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.logistik
    ADD CONSTRAINT logistik_fk_id_produk FOREIGN KEY (id_produk) REFERENCES public.produk(id_produk);


--
-- Name: pegawai pegawai_fk_id_jadwal; Type: FK CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_fk_id_jadwal FOREIGN KEY (id_jadwal) REFERENCES public.jadwal_shift(id_jadwal);


--
-- Name: produk produk_fk_id_jenis_produk; Type: FK CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_fk_id_jenis_produk FOREIGN KEY (id_jenis_produk) REFERENCES public.jenis_produk(id_jenis_produk);


--
-- Name: transaksi transaksi_fk_id_pegawai; Type: FK CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_fk_id_pegawai FOREIGN KEY (id_pegawai) REFERENCES public.pegawai(id_pegawai);


--
-- Name: transaksi transaksi_fk_id_pembeli; Type: FK CONSTRAINT; Schema: public; Owner: yuki
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_fk_id_pembeli FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli);


--
-- PostgreSQL database dump complete
--

\unrestrict tRwVNZ9vx1nVmi9qZ4GWla4o52VRcnSmlSxPFkC6dqi0famrU5Hm01gCabwmygV

