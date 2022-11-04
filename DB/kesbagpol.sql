-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 05 Nov 2022 pada 00.45
-- Versi server: 5.7.37-log
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kesbagpol`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic_years`
--

CREATE TABLE `academic_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year` varchar(9) NOT NULL COMMENT 'Tahun Pelajaran',
  `semester` enum('odd','even') NOT NULL DEFAULT 'odd' COMMENT 'odd = Ganjil, even = Genap',
  `current_semester` enum('true','false') NOT NULL DEFAULT 'false',
  `admission_semester` enum('true','false') NOT NULL DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) DEFAULT '0',
  `achievement_description` varchar(255) NOT NULL,
  `achievement_type` bigint(20) DEFAULT '0',
  `achievement_level` smallint(6) NOT NULL DEFAULT '0',
  `achievement_year` year(4) NOT NULL,
  `achievement_organizer` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admission_phases`
--

CREATE TABLE `admission_phases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) DEFAULT '0' COMMENT 'Tahun Pelajaran',
  `phase_name` varchar(255) NOT NULL COMMENT 'Gelombang Pendaftaran',
  `phase_start_date` date DEFAULT NULL COMMENT 'Tanggal Mulai',
  `phase_end_date` date DEFAULT NULL COMMENT 'Tanggal Selesai',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admission_quotas`
--

CREATE TABLE `admission_quotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) DEFAULT '0' COMMENT 'Tahun Pelajaran',
  `admission_type_id` bigint(20) DEFAULT '0' COMMENT 'Jalur Pendaftaran',
  `major_id` bigint(20) DEFAULT '0' COMMENT 'Program Keahlian',
  `quota` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Kuota Pendaftaran',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_title` varchar(255) NOT NULL,
  `album_description` varchar(255) DEFAULT NULL,
  `album_slug` varchar(255) DEFAULT NULL,
  `album_cover` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `albums`
--

INSERT INTO `albums` (`id`, `album_title`, `album_description`, `album_slug`, `album_cover`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(6, 'Kegiatan Bagian Umum', 'Kegiatan Bagian Umum', 'kegiatan-bagian-umum', 'df837925a6aa8a9c4f1e70fb6e9a3031.png', '2022-10-31 12:20:42', '2022-11-04 16:37:17', NULL, NULL, 6, 0, 0, 0, 'false'),
(7, 'Kegiatan Bagian Hukum', 'Kegiatan Bagian Hukum', 'kegiatan-bagian-hukum', '7f0c871fce4f76a02bedb0fc58030faf.png', '2022-10-31 12:22:18', '2022-10-31 05:22:24', NULL, NULL, 6, 0, 0, 0, 'false'),
(8, 'Kegiatan Bagian Protokoler', 'Kegiatan Bagian Protokoler', 'kegiatan-bagian-protokoler', '5cb5fb1966840f5fe71408672fa5348d.png', '2022-10-31 12:22:43', '2022-10-31 05:22:53', NULL, NULL, 6, 0, 0, 0, 'false'),
(9, 'Kegiatan Bagian Adm-Pemb', 'Kegiatan Bagian Adm-Pemb', 'kegiatan-bagian-adm-pemb', 'afc080325180301188b835d03bc6dc1f.png', '2022-10-31 12:23:18', '2022-10-31 05:23:24', NULL, NULL, 6, 0, 0, 0, 'false'),
(10, 'Kegiatan Bagian Kesra', 'Kegiatan Bagian Kesra', 'kegiatan-bagian-kesra', '7974cf7609c3d8c8381fbc26a2327c69.png', '2022-10-31 12:23:38', '2022-10-31 05:23:45', NULL, NULL, 6, 0, 0, 0, 'false'),
(11, 'Kegiatan Bagian Perekonomian', 'Kegiatan Bagian Perekonomian', 'kegiatan-bagian-perekonomian', '6c1e00afd95b8c8c11376d6306697aee.png', '2022-10-31 12:24:19', '2022-10-31 05:24:26', NULL, NULL, 6, 0, 0, 0, 'false'),
(12, 'Kegiatan Bagian PBJ', 'Kegiatan Bagian PBJ', 'kegiatan-bagian-pbj', '08797be01edea903458c3748fbb2006c.png', '2022-10-31 12:24:56', '2022-10-31 05:25:23', NULL, NULL, 6, 6, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 1, 'Informatif', '2021-01-11 16:49:46', '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false'),
(2, 1, 'Sedang', '2021-01-11 16:50:07', '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false'),
(3, 1, 'Kurang', '2021-01-11 16:50:15', '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) DEFAULT NULL,
  `category_type` enum('post','file') DEFAULT 'post',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_description`, `category_type`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Pemerintahan', 'pemerintahan', 'Pemerintahan', 'post', '2020-05-07 05:09:17', '2022-08-11 12:39:46', NULL, NULL, 0, 1, 0, 0, 'false'),
(2, 'Undang - Undang', 'undang-undang', 'Undang - Undang', 'file', '2020-05-07 05:09:17', '2022-08-11 12:39:46', NULL, NULL, 0, 1, 0, 0, 'false'),
(3, 'Daerah', 'daerah', 'Daerah', 'post', NULL, '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false'),
(4, 'Bisnis & Ekonomi', 'bisnis-ekonomi', 'Bisnis & Ekonomi', 'post', NULL, '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false'),
(5, 'Sosial Budaya', 'sosial-budaya', 'Sosial Budaya', 'post', NULL, '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false'),
(6, 'Surat Keputusan', 'surat-keputusan', 'Surat Keputusan', 'file', '2021-01-21 15:12:58', '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false'),
(7, 'Surat Edaran', 'surat-edaran', 'Surat Edaran', 'file', '2021-01-21 15:13:09', '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false'),
(8, 'Pengumuman', 'pengumuman', 'Pengumuman', 'file', '2021-01-22 11:16:45', '2022-08-11 12:39:46', NULL, NULL, 1, 0, 0, 0, 'false'),
(9, 'Transparansi', 'transparansi', 'Transparansi', 'file', '2021-02-17 10:06:13', '2022-08-11 12:39:46', NULL, NULL, 1, 1, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_groups`
--

CREATE TABLE `class_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_group` varchar(100) DEFAULT NULL,
  `sub_class_group` varchar(100) DEFAULT NULL,
  `major_id` bigint(20) DEFAULT '0' COMMENT 'Program Keahlian',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_group_settings`
--

CREATE TABLE `class_group_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) DEFAULT '0' COMMENT 'FK dari academic_years',
  `class_group_id` bigint(20) DEFAULT '0' COMMENT 'Kelas, FK dari class_groups',
  `employee_id` bigint(20) DEFAULT '0' COMMENT 'Wali Kelas, FK dari employees',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_group_students`
--

CREATE TABLE `class_group_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_group_setting_id` bigint(20) DEFAULT '0',
  `student_id` bigint(20) DEFAULT '0',
  `is_class_manager` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Ketua Kelas ?',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_post_id` bigint(20) DEFAULT '0',
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) DEFAULT NULL,
  `comment_url` varchar(255) DEFAULT NULL,
  `comment_ip_address` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_subject` varchar(255) DEFAULT NULL,
  `comment_reply` text,
  `comment_status` enum('approved','unapproved','spam') DEFAULT 'approved',
  `comment_agent` varchar(255) DEFAULT NULL,
  `comment_parent_id` varchar(255) DEFAULT NULL,
  `comment_type` enum('post','message') DEFAULT 'post',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_letter_number` varchar(255) DEFAULT NULL COMMENT 'Nomor Surat Tugas',
  `assignment_letter_date` date DEFAULT NULL COMMENT 'Tanggal Surat Tugas',
  `assignment_start_date` date DEFAULT NULL COMMENT 'TMT Tugas',
  `parent_school_status` enum('true','false') NOT NULL DEFAULT 'true' COMMENT 'Status Sekolah Induk',
  `full_name` varchar(150) NOT NULL,
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  `nik` varchar(50) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL COMMENT 'Alamat Jalan',
  `rt` varchar(10) DEFAULT NULL COMMENT 'Rukun Tetangga',
  `rw` varchar(10) DEFAULT NULL COMMENT 'Rukun Warga',
  `sub_village` varchar(255) DEFAULT NULL COMMENT 'Nama Dusun',
  `village` varchar(255) DEFAULT NULL COMMENT 'Nama Kelurahan/ Desa',
  `sub_district` varchar(255) DEFAULT NULL COMMENT 'Kecamatan',
  `district` varchar(255) DEFAULT NULL COMMENT 'Kota / Kabupaten',
  `postal_code` varchar(20) DEFAULT NULL COMMENT 'Kode POS',
  `religion_id` bigint(20) DEFAULT '0',
  `marriage_status_id` bigint(20) DEFAULT '0',
  `spouse_name` varchar(255) DEFAULT NULL COMMENT 'Nama Pasangan : Suami / Istri',
  `spouse_employment_id` bigint(20) DEFAULT '0' COMMENT 'Pekerjaan Pasangan : Suami / Istri',
  `citizenship` enum('WNI','WNA') NOT NULL DEFAULT 'WNI' COMMENT 'Kewarganegaraan',
  `country` varchar(255) DEFAULT NULL,
  `npwp` varchar(100) DEFAULT NULL,
  `employment_status_id` bigint(20) DEFAULT '0' COMMENT 'Status Kepegawaian',
  `nip` varchar(100) DEFAULT NULL,
  `niy` varchar(100) DEFAULT NULL COMMENT 'NIY/NIGK',
  `nuptk` varchar(100) DEFAULT NULL,
  `employment_type_id` bigint(20) DEFAULT '0' COMMENT 'Jenis Guru dan Tenaga Kependidikan (GTK)',
  `decree_appointment` varchar(255) DEFAULT NULL COMMENT 'SK Pengangkatan',
  `appointment_start_date` date DEFAULT NULL COMMENT 'TMT Pengangkatan',
  `institution_lifter_id` bigint(20) DEFAULT '0' COMMENT 'Lembaga Pengangkat',
  `decree_cpns` varchar(100) DEFAULT NULL COMMENT 'SK CPNS',
  `pns_start_date` date DEFAULT NULL COMMENT 'TMT CPNS',
  `rank_id` bigint(20) DEFAULT '0' COMMENT 'Pangkat / Golongan',
  `salary_source_id` bigint(20) DEFAULT '0' COMMENT 'Sumber Gaji',
  `headmaster_license` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Punya Lisensi Kepala Sekolah ?',
  `laboratory_skill_id` bigint(20) DEFAULT '0' COMMENT 'Keahlian Lab oratorium',
  `special_need_id` bigint(20) DEFAULT '0' COMMENT 'Mampu Menangani Kebutuhan Khusus',
  `braille_skills` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Keahlian Braile ?',
  `sign_language_skills` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Keahlian Bahasa Isyarat ?',
  `phone` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_title` varchar(255) DEFAULT NULL,
  `file_description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_category_id` bigint(20) DEFAULT '0',
  `file_path` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `file_visibility` enum('public','private') DEFAULT 'public',
  `file_counter` bigint(20) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `image_sliders`
--

INSERT INTO `image_sliders` (`id`, `caption`, `image`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(5, 'SLIDER 1', '75187a3c18e0e516987aa4b0ad9020ea.png', '2022-10-25 14:56:03', '2022-11-04 16:32:13', NULL, NULL, 6, 6, 0, 0, 'false'),
(6, 'slider 2', 'c8d714d015bd3b73868cdc84590770d6.jpeg', '2022-10-31 12:17:07', '2022-10-31 05:17:23', NULL, NULL, 6, 6, 0, 0, 'false'),
(7, 'slider 3', '14a582ba585eeb408983946bc7cff822.png', '2022-10-31 12:17:44', '2022-10-31 05:17:49', NULL, NULL, 6, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_target` enum('_blank','_self','_parent','_top') DEFAULT '_blank',
  `link_image` varchar(100) DEFAULT NULL,
  `link_type` enum('link','banner') DEFAULT 'link',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `links`
--

INSERT INTO `links` (`id`, `link_title`, `link_url`, `link_target`, `link_image`, `link_type`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(8, 'PPID', 'https://ppid.solselkab.go.id/', '_blank', NULL, 'link', '2022-08-12 00:31:08', '2022-08-11 17:31:08', NULL, NULL, 6, 0, 0, 0, 'false'),
(9, 'JDIH', 'https://jdih.solselkab.go.id/', '_blank', NULL, 'link', '2022-08-12 00:31:39', '2022-08-11 17:31:39', NULL, NULL, 6, 0, 0, 0, 'false'),
(10, 'SATU DATA', 'https://satudata.solselkab.go.id/', '_blank', NULL, 'link', '2022-08-12 00:32:22', '2022-08-11 17:32:22', NULL, NULL, 6, 0, 0, 0, 'false'),
(11, 'Help Desl IT Diskominfo', 'https://helpdesk.solselkab.go.id/index.php/login', '_blank', 'dcd0db9118094898208c9d8aa086eef6.jpg', 'banner', '2022-08-12 00:44:40', '2022-08-11 17:45:01', NULL, NULL, 6, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `counter` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `datetime` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `major_name` varchar(255) DEFAULT NULL COMMENT 'Program Keahlian / Jurusan',
  `major_short_name` varchar(255) DEFAULT NULL COMMENT 'Nama Singkat',
  `is_active` enum('true','false') DEFAULT 'true',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_title` varchar(150) NOT NULL,
  `menu_url` varchar(150) NOT NULL,
  `menu_target` enum('_blank','_self','_parent','_top') DEFAULT '_self',
  `menu_type` varchar(100) NOT NULL DEFAULT 'pages',
  `menu_parent_id` bigint(20) DEFAULT '0',
  `menu_position` bigint(20) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `menu_title`, `menu_url`, `menu_target`, `menu_type`, `menu_parent_id`, `menu_position`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Hubungi Kami', 'hubungi-kami', '_self', 'modules', 0, 10, '2020-05-07 05:09:18', '2022-09-01 09:34:43', NULL, NULL, 0, 0, 0, 0, 'false'),
(2, 'Galeri Foto', 'galeri-foto', '_self', 'modules', 9, 1, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(3, 'Galeri Video', 'galeri-video', '_self', 'modules', 9, 2, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(4, 'Formulir PPDB', 'formulir-penerimaan-peserta-didik-baru', '_self', 'modules', 8, 1, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(5, 'Hasil Seleksi', 'hasil-seleksi-penerimaan-peserta-didik-baru', '_self', 'modules', 8, 2, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(6, 'Cetak Formulir', 'cetak-formulir-penerimaan-peserta-didik-baru', '_self', 'modules', 8, 3, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(7, 'Download Formulir', 'download-formulir-penerimaan-peserta-didik-baru', '_self', 'modules', 8, 4, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(8, 'PPDB 2020', '#', '', 'links', 0, 8, '2020-05-07 05:09:18', '2022-08-11 12:39:50', '2021-01-11 15:17:51', NULL, 0, 1, 1, 0, 'true'),
(9, 'Galeri', '#', '_self', 'links', 0, 9, '2020-05-07 05:09:18', '2022-09-01 09:34:43', NULL, NULL, 0, 0, 0, 0, 'false'),
(10, 'Kategori', '#', '', 'links', 0, 5, '2020-05-07 05:09:18', '2022-08-11 12:39:50', '2021-01-11 15:17:20', NULL, 0, 1, 1, 0, 'true'),
(11, 'Uncategorized', 'kategori/uncategorized', '_self', 'post_categories', 10, 1, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(12, 'Direktori', '#', '', 'links', 0, 6, '2020-05-07 05:09:18', '2022-08-11 12:39:50', '2021-01-11 15:13:40', NULL, 0, 1, 1, 0, 'true'),
(13, 'Direktori Alumni', 'direktori-alumni', '_self', 'modules', 12, 1, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(14, 'Direktori Peserta Didik', 'http://mms.solselkab.go.id/', '_blank', 'modules', 12, 3, '2020-05-07 05:09:18', '2022-08-11 12:39:50', NULL, '2021-03-29 15:50:10', 0, 1, 0, 1, 'false'),
(16, 'Informasi Menara Telekomunikasi', 'http://mms.solselkab.go.id/', '_blank', 'modules', 0, 7, '2020-05-07 05:09:18', '2022-08-11 12:39:50', '2021-03-29 15:52:14', '2021-03-29 15:51:35', 0, 1, 1, 1, 'true'),
(17, 'Profil', '#', '', 'pages', 0, 3, '2020-05-07 05:09:18', '2022-09-01 09:34:43', NULL, '2022-09-01 15:03:06', 0, 6, 0, 6, 'false'),
(18, 'Moto', 'read/3/visi-dan-misi', '', 'pages', 17, 3, '2020-05-07 05:09:18', '2022-08-12 02:45:53', NULL, '2022-08-12 09:45:53', 0, 6, 0, 6, 'false'),
(24, 'Kata Sambutan', 'read/13/selayang-pandang', '', 'pages', 17, 1, '2021-01-11 14:48:45', '2022-08-11 12:39:50', NULL, '2021-01-12 13:22:42', 1, 1, 0, 1, 'false'),
(26, 'Program Kerja', '#', '_blank', 'pages', 0, 5, '2021-01-11 14:54:43', '2022-09-01 08:08:40', '2022-09-01 15:05:39', '2021-01-12 13:25:49', 1, 6, 6, 1, 'true'),
(42, 'Perencanaan', 'read/16/perencanaan', '_self', 'pages', 26, 2, '2021-01-12 14:08:33', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(43, 'Program Kerja Instansi', 'read/14/program-kerja-instansi', '_self', 'pages', 26, 1, '2021-01-12 14:12:14', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(44, 'Anggota Organisasi', '#', '_blank', 'pages', 0, 6, '2021-01-12 14:15:40', '2022-09-01 08:08:40', '2022-09-01 15:06:44', '2021-02-25 09:58:26', 1, 6, 6, 1, 'true'),
(45, 'Pengumuman', 'read/32/pengumuman', '', 'pages', 46, 2, '2021-01-12 14:19:41', '2022-08-11 12:39:50', '2021-01-22 11:17:46', NULL, 1, 1, 1, 0, 'true'),
(46, 'Informasi', '#', '', 'pages', 0, 7, '2021-01-12 14:19:41', '2022-09-01 09:34:43', NULL, '2021-01-21 15:25:40', 1, 1, 0, 1, 'false'),
(51, 'Agenda Kegiatan', 'read/34/agenda-kegiatan', '_self', 'pages', 46, 3, '2021-01-12 14:25:57', '2022-09-01 08:08:40', NULL, NULL, 1, 0, 0, 0, 'false'),
(58, 'Pengumuman', 'download/pengumuman', '_self', 'file_categories', 46, 2, '2021-01-22 11:17:20', '2022-09-01 08:08:40', NULL, NULL, 1, 0, 0, 0, 'false'),
(59, 'Berita', 'tag/berita', '', 'pages', 46, 1, '2021-01-22 11:28:58', '2022-08-11 12:39:50', NULL, '2021-01-22 11:30:29', 1, 1, 0, 1, 'false'),
(60, 'PPID', 'http://ppid.solselkab.go.id/', '_blank', 'links', 44, 1, '2021-01-27 09:37:07', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(62, 'Transparansi', 'download/transparansi', '', 'file_categories', 0, 7, '2021-02-17 10:09:43', '2022-09-01 08:20:39', '2022-09-01 15:20:39', NULL, 1, 6, 6, 0, 'true'),
(73, 'INFO COVID', 'http://corona.solselkab.go.id/', '_blank', 'links', 44, 2, '2021-03-12 11:12:41', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(75, 'Beranda', 'index.php', '', 'pages', 0, 1, '2022-08-11 20:56:24', '2022-09-01 08:08:40', NULL, '2022-08-11 23:40:32', 6, 6, 0, 6, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_description` varchar(255) DEFAULT NULL,
  `module_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_description`, `module_url`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Pengguna', 'Pengguna', 'users', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(2, 'PPDB / PMB', 'PPDB / PMB', 'admission', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(3, 'Tampilan', 'Tampilan', 'appearance', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(4, 'Blog', 'Blog', 'blog', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 1, 0, 0, 'false'),
(5, 'GTK / Staff / Dosen', 'GTK / Staff / Dosen', 'employees', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(6, 'Media', 'Media', 'media', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(7, 'Plugins', 'Plugins', 'plugins', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(8, 'Data Referensi', 'Data Referensi', 'reference', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(9, 'Pengaturan', 'Pengaturan', 'settings', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(10, 'Akademik', 'Akademik', 'academic', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_group` varchar(100) NOT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`id`, `option_group`, `option_name`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'student_status', 'Aktif', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(2, 'student_status', 'Lulus', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(3, 'student_status', 'Mutasi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(4, 'student_status', 'Dikeluarkan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(5, 'student_status', 'Mengundurkan Diri', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(6, 'student_status', 'Putus Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(7, 'student_status', 'Meninggal', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(8, 'student_status', 'Hilang', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(9, 'student_status', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(10, 'employments', 'Tidak bekerja', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(11, 'employments', 'Nelayan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(12, 'employments', 'Petani', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(13, 'employments', 'Peternak', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(14, 'employments', 'PNS/TNI/POLRI', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(15, 'employments', 'Karyawan Swasta', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(16, 'employments', 'Pedagang Kecil', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(17, 'employments', 'Pedagang Besar', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(18, 'employments', 'Wiraswasta', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(19, 'employments', 'Wirausaha', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(20, 'employments', 'Buruh', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(21, 'employments', 'Pensiunan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(22, 'employments', 'Lain-lain', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(23, 'special_needs', 'Tidak', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(24, 'special_needs', 'Tuna Netra', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(25, 'special_needs', 'Tuna Rungu', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(26, 'special_needs', 'Tuna Grahita ringan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(27, 'special_needs', 'Tuna Grahita Sedang', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(28, 'special_needs', 'Tuna Daksa Ringan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(29, 'special_needs', 'Tuna Daksa Sedang', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(30, 'special_needs', 'Tuna Laras', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(31, 'special_needs', 'Tuna Wicara', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(32, 'special_needs', 'Tuna ganda', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(33, 'special_needs', 'Hiper aktif', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(34, 'special_needs', 'Cerdas Istimewa', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(35, 'special_needs', 'Bakat Istimewa', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(36, 'special_needs', 'Kesulitan Belajar', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(37, 'special_needs', 'Narkoba', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(38, 'special_needs', 'Indigo', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(39, 'special_needs', 'Down Sindrome', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(40, 'special_needs', 'Autis', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(41, 'special_needs', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(42, 'educations', 'Tidak sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(43, 'educations', 'Putus SD', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(44, 'educations', 'SD Sederajat', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(45, 'educations', 'SMP Sederajat', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(46, 'educations', 'SMA Sederajat', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(47, 'educations', 'D1', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(48, 'educations', 'D2', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(49, 'educations', 'D3', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(50, 'educations', 'D4/S1', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(51, 'educations', 'S2', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(52, 'educations', 'S3', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(53, 'scholarships', 'Anak berprestasi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(54, 'scholarships', 'Anak Miskin', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(55, 'scholarships', 'Pendidikan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(56, 'scholarships', 'Unggulan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(57, 'scholarships', 'Lain-lain', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(58, 'achievement_types', 'Sains', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(59, 'achievement_types', 'Seni', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(60, 'achievement_types', 'Olahraga', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(61, 'achievement_types', 'Lain-lain', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(62, 'achievement_levels', 'Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(63, 'achievement_levels', 'Kecamatan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(64, 'achievement_levels', 'Kota / Kabupaten', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(65, 'achievement_levels', 'Propinsi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(66, 'achievement_levels', 'Nasional', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(67, 'achievement_levels', 'Internasional', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(68, 'monthly_incomes', 'Kurang dari 500,000', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(69, 'monthly_incomes', '500.000 - 999.9999', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(70, 'monthly_incomes', '1 Juta - 1.999.999', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(71, 'monthly_incomes', '2 Juta - 4.999.999', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(72, 'monthly_incomes', '5 Juta - 20 Juta', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(73, 'monthly_incomes', 'Lebih dari 20 Juta', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(74, 'residences', 'Bersama orang tua', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(75, 'residences', 'Wali', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(76, 'residences', 'Kos', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(77, 'residences', 'Asrama', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(78, 'residences', 'Panti Asuhan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(79, 'residences', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(80, 'transportations', 'Jalan kaki', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(81, 'transportations', 'Kendaraan pribadi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(82, 'transportations', 'Kendaraan Umum / angkot / Pete-pete', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(83, 'transportations', 'Jemputan Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(84, 'transportations', 'Kereta Api', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(85, 'transportations', 'Ojek', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(86, 'transportations', 'Andong / Bendi / Sado / Dokar / Delman / Beca', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(87, 'transportations', 'Perahu penyebrangan / Rakit / Getek', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(88, 'transportations', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(89, 'religions', 'Islam', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(90, 'religions', 'Kristen / protestan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(91, 'religions', 'Katholik', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(92, 'religions', 'Hindu', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(93, 'religions', 'Budha', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(94, 'religions', 'Khong Hu Chu', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(95, 'religions', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(96, 'school_levels', '1 - Sekolah Dasar (SD) / Sederajat', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(97, 'school_levels', '2 - Sekolah Menengah Pertama (SMP) / Sederajat', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(98, 'school_levels', '3 - Sekolah Menengah Atas (SMA) / Aliyah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(99, 'school_levels', '4 - Sekolah Menengah Kejuruan (SMK)', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(100, 'school_levels', '5 - Universitas', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(101, 'school_levels', '6 - Sekolah Tinggi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(102, 'school_levels', '7 - Politeknik', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(103, 'marriage_status', 'Kawin', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(104, 'marriage_status', 'Belum Kawin', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(105, 'marriage_status', 'Berpisah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(106, 'institution_lifters', 'Pemerintah Pusat', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(107, 'institution_lifters', 'Pemerintah Provinsi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(108, 'institution_lifters', 'Pemerintah Kab/Kota', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(109, 'institution_lifters', 'Ketua yayasan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(110, 'institution_lifters', 'Kepala Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(111, 'institution_lifters', 'Komite Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(112, 'institution_lifters', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(113, 'employment_status', 'PNS ', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(114, 'employment_status', 'PNS Diperbantukan ', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(115, 'employment_status', 'PNS DEPAG ', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(116, 'employment_status', 'PTY', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 1, 0, 0, 'false'),
(117, 'employment_status', 'PTT Provinsi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 1, 0, 0, 'false'),
(118, 'employment_status', 'PTT Kota / Kabupaten', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 1, 0, 0, 'false'),
(119, 'employment_status', 'Guru Bantu Pusat ', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:07:18', NULL, 0, 0, 1, 0, 'true'),
(120, 'employment_status', 'Guru Honor Sekolah ', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:07:18', NULL, 0, 0, 1, 0, 'true'),
(121, 'employment_status', 'Tenaga Honor Daerah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 1, 0, 0, 'false'),
(122, 'employment_status', 'CPNS', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(123, 'employment_status', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(124, 'employment_types', 'Guru Kelas', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(125, 'employment_types', 'Guru Mata Pelajaran', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(126, 'employment_types', 'Eselon I', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 1, 0, 0, 'false'),
(127, 'employment_types', 'Guru Inklusi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(128, 'employment_types', 'Tenaga Administrasi Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(129, 'employment_types', 'Guru Pendamping', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(130, 'employment_types', 'Guru Magang', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(131, 'employment_types', 'Guru TIK', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(132, 'employment_types', 'Laboran', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(133, 'employment_types', 'Pustakawan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(134, 'employment_types', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', '2021-01-15 17:50:39', NULL, 0, 0, 1, 0, 'true'),
(135, 'ranks', 'I/A', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(136, 'ranks', 'I/B', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(137, 'ranks', 'I/C', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(138, 'ranks', 'I/D', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(139, 'ranks', 'II/A', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(140, 'ranks', 'II/B', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(141, 'ranks', 'II/C', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(142, 'ranks', 'II/D', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(143, 'ranks', 'III/A', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(144, 'ranks', 'III/B', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(145, 'ranks', 'III/C', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(146, 'ranks', 'III/D', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(147, 'ranks', 'IV/A', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(148, 'ranks', 'IV/B', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(149, 'ranks', 'IV/C', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(150, 'ranks', 'IV/D', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(151, 'ranks', 'IV/E', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(152, 'salary_sources', 'APBN', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(153, 'salary_sources', 'APBD Provinsi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(154, 'salary_sources', 'APBD Kab/Kota', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(155, 'salary_sources', 'Yayasan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(156, 'salary_sources', 'Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(157, 'salary_sources', 'Lembaga Donor', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(158, 'salary_sources', 'Lainnya', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(159, 'laboratory_skills', 'Lab IPA', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(160, 'laboratory_skills', 'Lab Fisika', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(161, 'laboratory_skills', 'Lab Biologi', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(162, 'laboratory_skills', 'Lab Kimia', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(163, 'laboratory_skills', 'Lab Bahasa', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(164, 'laboratory_skills', 'Lab Komputer', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(165, 'laboratory_skills', 'Teknik Bangunan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(166, 'laboratory_skills', 'Teknik Survei & Pemetaan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(167, 'laboratory_skills', 'Teknik Ketenagakerjaan', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(168, 'laboratory_skills', 'Teknik Pendinginan & Tata Udara', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(169, 'laboratory_skills', 'Teknik Mesin', '2020-05-07 05:09:16', '2022-08-11 12:39:50', NULL, NULL, 0, 0, 0, 0, 'false'),
(170, 'employment_types', 'Eselon II', '2021-01-15 17:51:23', '2022-08-11 12:39:50', NULL, NULL, 1, 1, 0, 0, 'false'),
(171, 'employment_types', 'Eselon III', '2021-01-15 17:51:51', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(172, 'employment_types', 'Eselon IV', '2021-01-15 17:52:07', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(173, 'employment_types', 'Staf Pelaksana', '2021-01-15 17:52:19', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(174, 'employment_types', 'Staf Fungsional', '2021-01-15 17:52:37', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(175, 'employment_types', 'PTT Kota / Kabupaten', '2021-01-22 13:29:24', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(176, 'employment_types', 'Tenaga Honor Daerah', '2021-01-22 13:29:53', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false'),
(177, 'ranks', 'Tenaga Honor Daerah', '2021-01-22 13:30:14', '2022-08-11 12:39:50', NULL, NULL, 1, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_album_id` bigint(20) DEFAULT '0',
  `photo_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`id`, `photo_album_id`, `photo_name`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 6, '6c57a77d672c98d62c3cb30961485923.jpg', '2022-11-04 23:03:33', '2022-11-04 16:03:33', NULL, NULL, 1, 0, 0, 0, 'false'),
(2, 6, '85135dc011ea0f01ca01093ca9c988e2.jpg', '2022-11-04 23:35:41', '2022-11-04 16:35:41', NULL, NULL, 1, 0, 0, 0, 'false'),
(3, 6, 'cae2113c07f50799f09bbaa13c5bc6b2.jpg', '2022-11-04 23:36:32', '2022-11-04 16:36:32', NULL, NULL, 1, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pollings`
--

CREATE TABLE `pollings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_content` longtext,
  `post_image` varchar(100) DEFAULT NULL,
  `post_author` bigint(20) DEFAULT '0',
  `post_categories` varchar(255) DEFAULT NULL,
  `post_type` varchar(50) NOT NULL DEFAULT 'post',
  `post_status` enum('publish','draft') DEFAULT 'draft',
  `post_visibility` enum('public','private') DEFAULT 'public',
  `post_comment_status` enum('open','close') DEFAULT 'close',
  `post_slug` varchar(255) DEFAULT NULL,
  `post_tags` varchar(255) DEFAULT NULL,
  `post_counter` bigint(20) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_content`, `post_image`, `post_author`, `post_categories`, `post_type`, `post_status`, `post_visibility`, `post_comment_status`, `post_slug`, `post_tags`, `post_counter`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, '', '<table>\n<tbody>\n<tr>\n<td>Nama Lengkap&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;AAAAAAAA, SE</td>\n</tr>\n<tr>\n<td>NIP</td>\n<td>:</td>\n<td>19710316193231001</td>\n</tr>\n<tr>\n<td>Tempat/ Tanggal Lahir&nbsp;</td>\n<td>:</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>Jenis Kelamin&nbsp;&nbsp;</td>\n<td>:</td>\n<td>Laki - laki</td>\n</tr>\n<tr>\n<td>Agama&nbsp;</td>\n<td>:</td>\n<td>Islam</td>\n</tr>\n<tr>\n<td>Status Pegawai</td>\n<td>:</td>\n<td>Pegawai Negeri Sipil</td>\n</tr>\n<tr>\n<td>Pangkat Terakhir</td>\n<td>:</td>\n<td>Penata Tk.I/ III d</td>\n</tr>\n<tr>\n<td>Jabatan Terakhir&nbsp;</td>\n<td>:</td>\n<td>Direktur</td>\n</tr>\n<tr>\n<td>Pendidikan Terakhir&nbsp;</td>\n<td>:</td>\n<td>S.1</td>\n</tr>\n<tr>\n<td>Satuan Kerja&nbsp;&nbsp;</td>\n<td>:</td>\n<td>Kecamatan Sungai Pagu</td>\n</tr>\n</tbody>\n</table>', 'headmaster_photo.png', 0, '', 'opening_speech', 'publish', 'public', 'open', '', '', 0, '2020-05-07 05:09:18', '2022-10-27 03:07:20', NULL, NULL, 0, 6, 0, 0, 'false'),
(2, 'Profil', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 1, '+1+', 'page', 'publish', 'public', 'open', 'profil', 'berita, pengumuman, sekilas-info', 11, '2020-05-07 05:09:18', '2022-08-11 12:39:52', NULL, NULL, 0, 0, 0, 0, 'false'),
(3, 'Moto', '<p>-</p>', NULL, 1, '+1+', 'page', 'publish', 'public', 'close', 'moto', 'berita, pengumuman, sekilas-info', 458, '2020-05-07 05:09:18', '2022-11-04 03:28:21', NULL, NULL, 0, 6, 0, 0, 'false'),
(9, 'Sekilas Instansi', '<p>-</p>\n<p>&nbsp;</p>\n<p style=\"text-align: justify;\">&nbsp;</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'close', 'sekilas-instansi', NULL, 431, '2021-01-11 14:44:25', '2022-10-31 02:10:13', NULL, NULL, 1, 6, 0, 0, 'false'),
(10, 'Lambang Daerah', '<p>Test</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'lambang-daerah', NULL, 1, '2021-01-11 14:47:00', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(11, 'Tugas Pokok dan Fungsi', '<p>Berdasarkan UU nomor 23 Tahun 2014 tentang&nbsp; Perangkat Daerah, Dinas Komunikasi dan Informatika mempunyai&nbsp; 3 (tiga)&nbsp; Urusan Wajib Non Pelayanan Dasar \"Menyelenggarakan urusan pemerintahan Bidang Komunikasi Informatika, Bidang Statistik dan Bidang Persandian\"</p>\n<p>Untuk menyelenggarakan tugas pokok Dinas Komunikasi dan Informatika Kabupaten Solok Selatan mempunyai fungsi sebagai berikut :</p>\n<ol>\n<li>Perumusan Kebijakan teknis bidang komunikasi dan informatika, statistik dan persandian;</li>\n<li>Penyelenggaraan urusan pemerintahan dan pelayanan umum bidang bidang komunikasi dan informatika, statistik dan persandian;</li>\n<li>Pembinaan dan fasilitasi bidang komunikasi bidang komunikasi dan informatika, statistik dan persandian lingkup Kabupaten Solok Selatan;</li>\n<li>Pelaksanaan kesekretariatan Dinas;</li>\n<li>Pelaksanaan tugas di Bidang Pengelolaan Informasi dan Komunikasi Publik, Bidang Aplikasi dan Infrastruk Informatika;</li>\n<li>Pemantauan, evaluasi dan pelaporan di bidang bidang komunikasi dan informatika, statistik dan persandian;</li>\n<li>Pelaksanaan tugas lain yang diberikan oleh Pimpinan.</li>\n</ol>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'tugas-pokok-dan-fungsi', NULL, 473, '2021-01-11 14:47:20', '2022-08-12 09:22:09', NULL, NULL, 1, 1, 0, 0, 'false'),
(12, 'Struktur Organisasi', '<p>-</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'close', 'struktur-organisasi', NULL, 624, '2021-01-11 14:47:27', '2022-10-25 08:13:57', NULL, NULL, 1, 6, 0, 0, 'false'),
(13, 'Kata Sambutan', '<p>Kami menyambut baik pembaharuan Propil KESBANGPOL ini sebagai salah satu sarana untuk lebih mengenal dan mempublikasikan Pelayananan di Dinas KESBANGPOL kepada masyarakat luas, Khususnya masyarakat. Disamping sebagai sumber informasi umum tentang Kesehatan, propil ini juga mempunyai makna strategis tidak hanya bagi jajaran Pemerintah Kecamatan Sungai Pagu dan dunia Kesehatan terlebih-lebih lagi bagi Perorangan yang ingin Mencari informasi tentang pelayanan kesehatan di daerah kita.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dengan adanya Propil KEBANGPOL ini berarti telah &nbsp;memiliki sumber Informasi yang sama untuk berbagai data dalam ruang lingkup di Dinas KESABANGPOL. Kami berharap dari waktu-kewaktu perlu terus diupayakan&nbsp; Peningkatan akurasi dan keragaman data yang ditampilkan.</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Akhirnya kepada semua pihak yang telah memberikan bantuan dan kerja samanya dalam pembuatan dan penerbitan Propil Dinas KESBANGPOL, kami ucapkan terima kasih yang sebesar-besarnya. Semoga propil ini bermanfaat bagi para pengguna data dan kita semua.</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Muara Labuh,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Desember&nbsp; 2021</p>\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;DIREKTUR RSUD</strong></p>\n<p><strong>&nbsp;</strong></p>\n<p><strong>&nbsp;</strong></p>\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;AAA AAAAA, SE</strong></p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Nip. 197103161991031201</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'close', 'kata-sambutan', NULL, 497, '2021-01-11 14:48:28', '2022-11-04 16:05:44', NULL, NULL, 1, 6, 0, 0, 'false'),
(14, 'Program Kerja Instansi', '<p>Test</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'program-kerja-instansi', NULL, 463, '2021-01-11 14:52:55', '2022-08-11 12:39:52', NULL, NULL, 1, 1, 0, 0, 'false'),
(15, 'PEMERINTAHAN', '<p>...</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'pemerintahan', NULL, 3, '2021-01-11 14:53:55', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(16, 'Perencanaan', '<p>Test</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'perencanaan', NULL, 368, '2021-01-11 14:54:10', '2022-08-11 12:39:52', NULL, NULL, 1, 1, 0, 0, 'false'),
(31, 'Layanan', '<p>testing</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'layanan', NULL, 131, '2021-01-12 14:15:01', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(32, 'Pengumuman', '<p>testing</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'pengumuman', NULL, 7, '2021-01-12 14:18:18', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(33, 'Informasi', '<p>testing</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'informasi', NULL, 10, '2021-01-12 14:18:43', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(34, 'Agenda Kegiatan', '<p>Agenda Kegiatan</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'agenda-kegiatan', NULL, 381, '2021-01-12 14:24:40', '2022-10-31 04:18:24', NULL, NULL, 1, 0, 0, 0, 'false'),
(37, 'Pegawai', '<p>test</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'pegawai', NULL, 1, '2021-01-15 17:55:10', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(38, 'Unduhan', '<p>-</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'unduhan', NULL, 4, '2021-01-21 15:15:24', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(39, 'Berita', '<p>-</p>', NULL, 1, NULL, 'page', 'publish', 'public', 'open', 'berita', NULL, 0, '2021-01-22 11:28:27', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(41, 'Wisata Solok Selatan', 'dGJzc5UaNgk', NULL, 0, NULL, 'video', 'draft', 'public', 'close', NULL, NULL, 0, '2021-01-27 13:32:40', '2022-08-11 12:39:52', NULL, NULL, 1, 1, 0, 0, 'false'),
(42, 'Apresiasi Hari PERS Nasional', 'DWwLlY1XpEM', NULL, 0, NULL, 'video', 'draft', 'public', 'close', NULL, NULL, 0, '2021-02-10 09:09:53', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(46, 'Lindungi Diri dan Keluarga dengan Vaksinasi Covid-19', '7016sQ2hSQo', NULL, 0, NULL, 'video', 'draft', 'public', 'close', NULL, NULL, 0, '2021-02-23 09:47:57', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(56, 'Vaksinasi Melatih Tubuh Kenal, Lawan dan Kebal', 'DHzCXdCna8I', NULL, 0, NULL, 'video', 'draft', 'public', 'close', NULL, NULL, 0, '2021-03-29 09:08:50', '2022-08-11 12:39:52', NULL, NULL, 1, 0, 0, 0, 'false'),
(112, 'PPID', 'f3JC4A0twFo', NULL, 0, NULL, 'video', 'draft', 'public', 'close', NULL, NULL, 0, '2022-08-02 10:17:56', '2022-08-11 12:39:53', NULL, NULL, 1, 0, 0, 0, 'false'),
(138, 'Selamat Hari Sumpah Pemuda', '<p>Momentum Peringatan Hari Sumpah Pemuda ke 94, 28 Oktober 2022, kita tingkatkan semangat untuk bangkit maju dan sejahtera.</p>\r\n<p>&nbsp;</p>\r\n<p>Mari kita bersama, \"BERSATU MEMBANGUN BANGSA\"</p>\r\n<p>&nbsp;</p>\r\n<p>#solsel #solokselatan #sumbar #ASN #SumpahPemuda2022 #pemuda</p>', '4f465f5b6c3361e1d33dbeb5c5ab78cc.jpeg', 6, '+1+', 'post', 'publish', 'public', 'open', 'selamat-hari-sumpah-pemuda', '', 5, '2022-10-31 12:16:35', '2022-11-04 16:38:47', NULL, NULL, 6, 0, 0, 0, 'false'),
(139, '1', '<p>1</p>', '7225016d70c5cc806562e538f998af75.jpg', 1, '+1+', 'post', 'publish', 'public', 'open', '1', '', 12, '2022-11-04 22:46:46', '2022-11-04 16:38:50', NULL, NULL, 1, 1, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `is_active` enum('true','false') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `question`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Bagaimana Pendapat Anda Tentang Website ini ?', 'true', '2021-01-11 16:49:23', '2022-08-11 12:39:55', NULL, NULL, 1, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quote` varchar(255) DEFAULT NULL,
  `quote_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `quote_by`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Pendidikan merupakan tiket untuk masa depan. Hari esok untuk orang-orang yang telah mempersiapkan dirinya hari ini', 'Anonim', '2020-05-07 05:09:17', '2022-08-11 12:39:55', NULL, NULL, 1, 0, 0, 0, 'false'),
(2, 'Agama tanpa ilmu pengetahuan adalah buta. Dan ilmu pengetahuan tanpa agama adalah lumpuh', 'Anonim', '2020-05-07 05:09:17', '2022-08-11 12:39:55', NULL, NULL, 1, 0, 0, 0, 'false'),
(3, 'Hiduplah seakan-akan kau akan mati besok. Belajarlah seakan-akan kau akan hidup selamanya', 'Anonim', '2020-05-07 05:09:17', '2022-08-11 12:39:55', NULL, NULL, 1, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `scholarships`
--

CREATE TABLE `scholarships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) DEFAULT '0',
  `scholarship_type` bigint(20) DEFAULT '0',
  `scholarship_description` varchar(255) NOT NULL,
  `scholarship_start_year` year(4) NOT NULL,
  `scholarship_end_year` year(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_group` varchar(100) NOT NULL,
  `setting_variable` varchar(255) DEFAULT NULL,
  `setting_value` text,
  `setting_default_value` text,
  `setting_access_group` varchar(255) DEFAULT NULL,
  `setting_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `setting_group`, `setting_variable`, `setting_value`, `setting_default_value`, `setting_access_group`, `setting_description`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'general', 'site_maintenance', NULL, 'false', 'public', 'Pemeliharaan situs', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(2, 'general', 'site_maintenance_end_date', NULL, '2020-01-01', 'public', 'Tanggal Berakhir Pemeliharaan Situs', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(3, 'general', 'site_cache', NULL, 'false', 'public', 'Cache situs', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(4, 'general', 'site_cache_time', NULL, '10', 'public', 'Lama Cache Situs', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(5, 'general', 'meta_description', 'CMS', 'CMS Sekolahku adalah Content Management System dan PPDB Online gratis untuk SD SMP/Sederajat SMA/Sederajat', 'public', 'Deskripsi Meta', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 1, 0, 0, 'false'),
(6, 'general', 'meta_keywords', 'CMS', 'CMS, Website Sekolah Gratis, Cara Membuat Website Sekolah, membuat web sekolah, contoh website sekolah, fitur website sekolah, Sekolah, Website, Internet,Situs, CMS Sekolah, Web Sekolah, Website Sekolah Gratis, Website Sekolah, Aplikasi Sekolah, PPDB Online, PSB Online, PSB Online Gratis, Penerimaan Siswa Baru Online, Raport Online, Kurikulum 2013, SD, SMP, SMA, Aliyah, MTs, SMK', 'public', 'Kata Kunci Meta', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 1, 0, 0, 'false'),
(7, 'general', 'map_location', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.346138821768!2d101.2373344146159!3d-1.5565214364193158!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e2cf3efb83c5845%3A0x86b2e31c19f2dd6a!2sKantor%20Bupati%20Solok%20Selatan!5e0!3m2!1sid!2sid!4v1667188091803!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '', 'public', 'Lokasi di Google Maps', '2020-05-07 05:09:16', '2022-10-31 03:48:20', NULL, NULL, 0, 6, 0, 0, 'false'),
(8, 'general', 'favicon', '8204332ae73e0f4dc389524502b1a2a8.png', 'favicon.png', 'public', 'Favicon', '2020-05-07 05:09:16', '2022-08-11 13:25:58', NULL, NULL, 0, 0, 0, 0, 'false'),
(9, 'general', 'header', 'df8262813ac1527cc021beea58708d59.png', 'header.png', 'public', 'Gambar Header', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(10, 'general', 'recaptcha_status', NULL, 'disable', 'public', 'reCAPTCHA Status', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(11, 'general', 'recaptcha_site_key', NULL, '6LeNCTAUAAAAAADTbL1rDw8GT1DF2DUjVtEXzdMu', 'public', 'Recaptcha Site Key', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(12, 'general', 'recaptcha_secret_key', NULL, '6LeNCTAUAAAAAGq8O0ItkzG8fsA9KeJ7mFMMFF1s', 'public', 'Recaptcha Secret Key', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(13, 'general', 'timezone', NULL, 'Asia/Jakarta', 'public', 'Time Zone', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(14, 'media', 'file_allowed_types', 'pdf,jpg,jpeg,png,mov,mp4,gif', 'jpg, jpeg, png, gif', 'public', 'Tipe file yang diizinkan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 1, 0, 0, 'false'),
(15, 'media', 'upload_max_filesize', '300000', '0', 'public', 'Maksimal Ukuran File yang Diupload', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 1, 0, 0, 'false'),
(16, 'media', 'thumbnail_size_height', NULL, '100', 'public', 'Tinggi Gambar Thumbnail', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(17, 'media', 'thumbnail_size_width', NULL, '150', 'public', 'Lebar Gambar Thumbnail', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(18, 'media', 'medium_size_height', NULL, '308', 'public', 'Tinggi Gambar Sedang', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(19, 'media', 'medium_size_width', NULL, '460', 'public', 'Lebar Gambar Sedang', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(20, 'media', 'large_size_height', NULL, '600', 'public', 'Tinggi Gambar Besar', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(21, 'media', 'large_size_width', NULL, '800', 'public', 'Lebar Gambar Besar', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(22, 'media', 'album_cover_height', NULL, '250', 'public', 'Tinggi Cover Album Foto', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(23, 'media', 'album_cover_width', NULL, '400', 'public', 'Lebar Cover Album Foto', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(24, 'media', 'banner_height', NULL, '81', 'public', 'Tinggi Iklan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(25, 'media', 'banner_width', NULL, '245', 'public', 'Lebar Iklan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(26, 'media', 'image_slider_height', NULL, '400', 'public', 'Tinggi Gambar Slide', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(27, 'media', 'image_slider_width', NULL, '900', 'public', 'Lebar Gambar Slide', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(28, 'media', 'student_photo_height', NULL, '400', 'public', 'Tinggi Photo Peserta Didik', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(29, 'media', 'student_photo_width', NULL, '300', 'public', 'Lebar Photo Peserta Didik', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(30, 'media', 'employee_photo_height', NULL, '400', 'public', 'Tinggi Photo Guru dan Tenaga Kependidikan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(31, 'media', 'employee_photo_width', NULL, '300', 'public', 'Lebar Photo Guru dan Tenaga Kependidikan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(32, 'media', 'headmaster_photo_height', NULL, '400', 'public', 'Tinggi Photo Kepala Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(33, 'media', 'headmaster_photo_width', NULL, '300', 'public', 'Lebar Photo Kepala Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(34, 'media', 'header_height', NULL, '80', 'public', 'Tinggi Gambar Header', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(35, 'media', 'header_width', '200', '200', 'public', 'Lebar Gambar Header', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 1, 0, 0, 'false'),
(36, 'media', 'logo_height', '120', '120', 'public', 'Tinggi Logo Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 1, 0, 0, 'false'),
(37, 'media', 'logo_width', NULL, '120', 'public', 'Lebar Logo Sekolah', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(38, 'writing', 'default_post_category', NULL, '1', 'public', 'Default Kategori Tulisan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(39, 'writing', 'default_post_status', NULL, 'publish', 'public', 'Default Status Tulisan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(40, 'writing', 'default_post_visibility', NULL, 'public', 'public', 'Default Akses Tulisan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(41, 'writing', 'default_post_discussion', NULL, 'open', 'public', 'Default Komentar Tulisan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(42, 'writing', 'post_image_thumbnail_height', NULL, '100', 'public', 'Tinggi Gambar Kecil', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(43, 'writing', 'post_image_thumbnail_width', NULL, '150', 'public', 'Lebar Gambar Kecil', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(44, 'writing', 'post_image_medium_height', NULL, '250', 'public', 'Tinggi Gambar Sedang', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(45, 'writing', 'post_image_medium_width', NULL, '400', 'public', 'Lebar Gambar Sedang', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(46, 'writing', 'post_image_large_height', NULL, '450', 'public', 'Tinggi Gambar Besar', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(47, 'writing', 'post_image_large_width', NULL, '840', 'public', 'Lebar Gambar Besar', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(48, 'reading', 'post_per_page', NULL, '10', 'public', 'Tulisan per halaman', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(49, 'reading', 'post_rss_count', NULL, '10', 'public', 'Jumlah RSS', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(50, 'reading', 'post_related_count', NULL, '10', 'public', 'Jumlah Tulisan Terkait', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(51, 'reading', 'comment_per_page', NULL, '10', 'public', 'Komentar per halaman', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(52, 'discussion', 'comment_moderation', NULL, 'false', 'public', 'Komentar harus disetujui secara manual', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(53, 'discussion', 'comment_registration', NULL, 'false', 'public', 'Pengguna harus terdaftar dan login untuk komentar', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(54, 'discussion', 'comment_blacklist', NULL, 'kampret', 'public', 'Komentar disaring', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(55, 'discussion', 'comment_order', NULL, 'asc', 'public', 'Urutan Komentar', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(56, 'social_account', 'facebook', 'https://www.facebook.com', '', 'public', 'Facebook', '2020-05-07 05:09:16', '2022-10-25 07:44:11', NULL, NULL, 0, 6, 0, 0, 'false'),
(57, 'social_account', 'twitter', 'https://twitter.com', '', 'public', 'Twitter', '2020-05-07 05:09:16', '2022-10-25 07:44:22', NULL, NULL, 0, 6, 0, 0, 'false'),
(58, 'social_account', 'linked_in', NULL, '', 'public', 'Linked In', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(59, 'social_account', 'youtube', 'https://www.youtube.com', '', 'public', 'Youtube', '2020-05-07 05:09:16', '2022-10-25 07:44:28', NULL, NULL, 0, 6, 0, 0, 'false'),
(60, 'social_account', 'instagram', 'https://www.instagram.com', '', 'public', 'Instagram', '2020-05-07 05:09:16', '2022-10-25 07:44:17', NULL, NULL, 0, 6, 0, 0, 'false'),
(61, 'mail_server', 'sendgrid_username', NULL, '', 'public', 'Sendgrid Username', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(62, 'mail_server', 'sendgrid_password', NULL, '', 'public', 'Sendgrid Password', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(63, 'mail_server', 'sendgrid_api_key', NULL, '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', 'public', 'Sendgrid API Key', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(64, 'school_profile', 'npsn', NULL, '123', 'public', 'NPSN', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(65, 'school_profile', 'school_name', 'KESBANGBPOL', 'SMA Negeri 9 Kuningan', 'public', 'Nama Sekolah', '2020-05-07 05:09:16', '2022-11-03 03:46:00', NULL, NULL, 0, 6, 0, 0, 'false'),
(66, 'school_profile', 'headmaster', 'Kepala Dinas KESBANGPOL', 'Anton Sofyan', 'public', 'Kepala Sekolah', '2020-05-07 05:09:16', '2022-11-03 04:18:31', NULL, NULL, 0, 6, 0, 0, 'false'),
(67, 'school_profile', 'headmaster_photo', '7417860a7ae5db935a47d24d89c905df.jpg', 'headmaster_photo.png', 'public', 'Photo Kepala Sekolah', '2020-05-07 05:09:16', '2022-10-31 04:11:30', NULL, NULL, 0, 0, 0, 0, 'false'),
(68, 'school_profile', 'school_level', NULL, '3', 'public', 'Bentuk Pendidikan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(69, 'school_profile', 'school_status', '2', '1', 'public', 'Status Sekolah', '2020-05-07 05:09:16', '2022-10-27 02:36:10', NULL, NULL, 0, 6, 0, 0, 'false'),
(70, 'school_profile', 'ownership_status', '108', '1', 'public', 'Status Kepemilikan', '2020-05-07 05:09:16', '2022-10-31 03:49:45', NULL, NULL, 0, 6, 0, 0, 'false'),
(71, 'school_profile', 'decree_operating_permit', NULL, '-', 'public', 'SK Izin Operasional', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(72, 'school_profile', 'decree_operating_permit_date', NULL, '2020-05-07', 'public', 'Tanggal SK Izin Operasional', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(73, 'school_profile', 'tagline', 'Kabupaten Solok Selatan', 'Where Tomorrow\'s Leaders Come Together', 'public', 'Slogan', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 1, 0, 0, 'false'),
(74, 'school_profile', 'rt', NULL, '12', 'public', 'RT', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(75, 'school_profile', 'rw', NULL, '06', 'public', 'RW', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(76, 'school_profile', 'sub_village', 'Lubuk Gadang', 'Wage', 'public', 'Dusun', '2020-05-07 05:09:16', '2022-10-31 03:51:49', NULL, NULL, 0, 6, 0, 0, 'false'),
(77, 'school_profile', 'village', 'Lubuk Gadang', 'Kadugede', 'public', 'Kelurahan / Desa', '2020-05-07 05:09:16', '2022-10-31 03:51:59', NULL, NULL, 0, 6, 0, 0, 'false'),
(78, 'school_profile', 'sub_district', 'Kec. Sangir', 'Kadugede', 'public', 'Kecamatan', '2020-05-07 05:09:16', '2022-10-31 03:51:37', NULL, NULL, 0, 6, 0, 0, 'false'),
(79, 'school_profile', 'district', 'Solok Selatan, Sumatera Barat', 'Kuningan', 'public', 'Kota / Kabupaten', '2020-05-07 05:09:16', '2022-10-27 03:04:35', NULL, NULL, 0, 6, 0, 0, 'false'),
(80, 'school_profile', 'postal_code', '27778', '45561', 'public', 'Kode Pos', '2020-05-07 05:09:16', '2022-10-31 03:49:58', NULL, NULL, 0, 6, 0, 0, 'false'),
(81, 'school_profile', 'street_address', 'Kode Pos 27778', 'Jalan Raya Kadugede No. 11', 'public', 'Alamat Jalan', '2020-05-07 05:09:16', '2022-10-31 03:51:11', NULL, NULL, 0, 6, 0, 0, 'false'),
(82, 'school_profile', 'phone', NULL, '0232123456', 'public', 'Telepon', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(83, 'school_profile', 'fax', NULL, '0232123456', 'public', 'Fax', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(84, 'school_profile', 'email', 'kesbangpol@solselkab.go.id', 'info@sman9kuningan.sch.id', 'public', 'Email', '2020-05-07 05:09:16', '2022-11-03 03:46:29', NULL, NULL, 0, 6, 0, 0, 'false'),
(85, 'school_profile', 'website', 'kesbangpol.solselkab.go.id', 'http://www.sman9kuningan.sch.id', 'public', 'Website', '2020-05-07 05:09:16', '2022-11-03 03:46:10', NULL, NULL, 0, 6, 0, 0, 'false'),
(86, 'school_profile', 'logo', '6773129567297395130e1ead02acba99.png', 'logo.png', 'public', 'Logo', '2020-05-07 05:09:16', '2022-10-27 02:58:41', NULL, NULL, 0, 0, 0, 0, 'false'),
(87, 'admission', 'admission_status', NULL, 'open', 'public', 'Status Penerimaan Peserta Didik Baru', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(88, 'admission', 'admission_year', NULL, '2020', 'public', 'Tahun Penerimaan Peserta Didik Baru', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(89, 'admission', 'admission_start_date', NULL, '2020-01-01', 'public', 'Tanggal Mulai PPDB', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(90, 'admission', 'admission_end_date', NULL, '2020-12-31', 'public', 'Tanggal Selesai PPDB', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(91, 'admission', 'announcement_start_date', NULL, '2020-01-01', 'public', 'Tanggal Mulai Pengumuman Hasil Seleksi PPDB', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false'),
(92, 'admission', 'announcement_end_date', NULL, '2020-12-31', 'public', 'Tanggal Selesai Pengumuman Hasil Seleksi PPDB', '2020-05-07 05:09:16', '2022-08-11 12:39:56', NULL, NULL, 0, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `major_id` bigint(20) DEFAULT '0' COMMENT 'Program Keahlian',
  `first_choice_id` bigint(20) DEFAULT '0' COMMENT 'Pilihan Pertama PPDB',
  `second_choice_id` bigint(20) DEFAULT '0' COMMENT 'Pilihan Kedua PPDB',
  `registration_number` varchar(10) DEFAULT NULL COMMENT 'Nomor Pendaftaran',
  `admission_exam_number` varchar(10) DEFAULT NULL COMMENT 'Nomor Ujian Tes Tulis',
  `selection_result` varchar(100) DEFAULT NULL COMMENT 'Hasil Seleksi PPDB/PMB',
  `admission_phase_id` bigint(20) DEFAULT '0' COMMENT 'Gelombang Pendaftaran',
  `admission_type_id` bigint(20) DEFAULT '0' COMMENT 'Jalur Pendaftaran',
  `photo` varchar(100) DEFAULT NULL,
  `achievement` text COMMENT 'Prestasi Calon Peserta Didik / Mahasiswa',
  `is_student` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Apakah Siswa Aktif ? Set true jika lolos seleksi PPDB dan set FALSE jika sudah lulus',
  `is_prospective_student` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Apakah Calon Siswa Baru ?',
  `is_alumni` enum('true','false','unverified') NOT NULL DEFAULT 'false' COMMENT 'Apakah Alumni ?',
  `is_transfer` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'Jenis Pendaftaran : Baru / Pindahan ?',
  `re_registration` enum('true','false') DEFAULT NULL COMMENT 'Konfirmasi Pendaftaran Ulang Calon Siswa Baru',
  `start_date` date DEFAULT NULL COMMENT 'Tanggal Masuk Sekolah',
  `identity_number` varchar(50) DEFAULT NULL COMMENT 'NIS/NIM',
  `nisn` varchar(50) DEFAULT NULL COMMENT 'Nomor Induk Siswa Nasional',
  `nik` varchar(50) DEFAULT NULL COMMENT 'Nomor Induk Kependudukan / KTP',
  `prev_exam_number` varchar(50) DEFAULT NULL COMMENT 'Nomor Peserta Ujian Sebelumnya',
  `prev_diploma_number` varchar(50) DEFAULT NULL COMMENT 'Nomor Ijazah Sebelumnya',
  `paud` enum('true','false') DEFAULT NULL COMMENT 'Apakah Pernah PAUD',
  `tk` enum('true','false') DEFAULT NULL COMMENT 'Apakah Pernah TK',
  `skhun` varchar(50) DEFAULT NULL COMMENT 'No. Seri Surat Keterangan Hasil Ujian Nasional Sebelumnya',
  `prev_school_name` varchar(255) DEFAULT NULL COMMENT 'Nama Sekolah Sebelumnya',
  `prev_school_address` varchar(255) DEFAULT NULL COMMENT 'Alamat Sekolah Sebelumnya',
  `hobby` varchar(255) DEFAULT NULL,
  `ambition` varchar(255) DEFAULT NULL COMMENT 'Cita-cita',
  `full_name` varchar(150) NOT NULL,
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `religion_id` bigint(20) DEFAULT '0',
  `special_need_id` bigint(20) DEFAULT '0' COMMENT 'Berkeburuhan Khusus',
  `street_address` varchar(255) DEFAULT NULL COMMENT 'Alamat Jalan',
  `rt` varchar(10) DEFAULT NULL COMMENT 'Alamat Jalan',
  `rw` varchar(10) DEFAULT NULL COMMENT 'Alamat Jalan',
  `sub_village` varchar(255) DEFAULT NULL COMMENT 'Nama Dusun',
  `village` varchar(255) DEFAULT NULL COMMENT 'Nama Kelurahan/ Desa',
  `sub_district` varchar(255) DEFAULT NULL COMMENT 'Kecamatan',
  `district` varchar(255) DEFAULT NULL COMMENT 'Kota / Kabupaten',
  `postal_code` varchar(20) DEFAULT NULL COMMENT 'Kode POS',
  `residence_id` bigint(20) DEFAULT '0' COMMENT 'Tempat Tinggal',
  `transportation_id` bigint(20) DEFAULT '0' COMMENT 'Moda Transportasi',
  `phone` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `sktm` varchar(100) DEFAULT NULL COMMENT 'Surat Keterangan Tidak Mampu (SKTM)',
  `kks` varchar(100) DEFAULT NULL COMMENT 'Kartu Keluarga Sejahtera (KKS)',
  `kps` varchar(100) DEFAULT NULL COMMENT 'Kartu Pra Sejahtera (KPS)',
  `kip` varchar(100) DEFAULT NULL COMMENT 'Kartu Indonesia Pintar (KIP)',
  `kis` varchar(100) DEFAULT NULL COMMENT 'Kartu Indonesia Sehat (KIS)',
  `citizenship` enum('WNI','WNA') NOT NULL DEFAULT 'WNI' COMMENT 'Kewarganegaraan',
  `country` varchar(255) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `father_birth_year` year(4) DEFAULT NULL,
  `father_education_id` bigint(20) DEFAULT '0',
  `father_employment_id` bigint(20) DEFAULT '0',
  `father_monthly_income_id` bigint(20) DEFAULT '0',
  `father_special_need_id` bigint(20) DEFAULT '0',
  `mother_name` varchar(150) DEFAULT NULL,
  `mother_birth_year` year(4) DEFAULT NULL,
  `mother_education_id` bigint(20) DEFAULT '0',
  `mother_employment_id` bigint(20) DEFAULT '0',
  `mother_monthly_income_id` bigint(20) DEFAULT '0',
  `mother_special_need_id` bigint(20) DEFAULT '0',
  `guardian_name` varchar(150) DEFAULT NULL,
  `guardian_birth_year` year(4) DEFAULT NULL,
  `guardian_education_id` bigint(20) DEFAULT '0',
  `guardian_employment_id` bigint(20) DEFAULT '0',
  `guardian_monthly_income_id` bigint(20) DEFAULT '0',
  `mileage` smallint(6) DEFAULT NULL COMMENT 'Jarak tempat tinggal ke sekolah',
  `traveling_time` smallint(6) DEFAULT NULL COMMENT 'Waktu Tempuh',
  `height` smallint(6) DEFAULT NULL COMMENT 'Tinggi Badan',
  `weight` smallint(6) DEFAULT NULL COMMENT 'Berat Badan',
  `sibling_number` smallint(6) DEFAULT '0' COMMENT 'Jumlah Saudara Kandung',
  `student_status_id` bigint(20) DEFAULT '0' COMMENT 'Status siswa',
  `end_date` date DEFAULT NULL COMMENT 'Tanggal Keluar',
  `reason` varchar(255) DEFAULT NULL COMMENT 'Diisi jika peserta didik sudah keluar',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `tag`, `slug`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'Berita', 'berita', '2020-05-07 05:09:17', '2022-08-11 12:39:57', NULL, NULL, 0, 0, 0, 0, 'false'),
(2, 'Daerah', 'daerah', '2020-05-07 05:09:17', '2022-08-11 12:39:57', '2021-01-13 11:13:31', '2021-01-13 11:14:47', 0, 1, 1, 1, 'false'),
(12, 'pengumuman', 'pengumuman', '2021-01-27 10:19:20', '2022-08-11 12:39:57', NULL, NULL, 1, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme_name` varchar(255) NOT NULL,
  `theme_folder` varchar(255) DEFAULT NULL,
  `theme_author` varchar(255) DEFAULT NULL,
  `is_active` enum('true','false') DEFAULT 'false',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_folder`, `theme_author`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(6, 'barka', 'barka', 'sulthanullah', 'true', '2022-08-14 00:45:54', '2022-11-04 03:18:52', NULL, NULL, 6, 6, 0, 0, 'false'),
(7, 'blue_sky', 'blue_sky', 'baru', 'false', '2022-08-30 12:17:51', '2022-11-04 03:18:47', '2022-08-30 12:20:18', NULL, 6, 6, 6, 0, 'true');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_full_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_url` varchar(100) DEFAULT NULL,
  `user_group_id` bigint(20) DEFAULT '0',
  `user_type` enum('super_user','administrator','employee','student') NOT NULL DEFAULT 'administrator',
  `user_profile_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'student_id OR employee_id',
  `user_biography` text,
  `user_forgot_password_key` varchar(100) DEFAULT NULL,
  `user_forgot_password_request_date` date DEFAULT NULL,
  `has_login` enum('true','false') DEFAULT 'false',
  `last_logged_in` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_password`, `user_full_name`, `user_email`, `user_url`, `user_group_id`, `user_type`, `user_profile_id`, `user_biography`, `user_forgot_password_key`, `user_forgot_password_request_date`, `has_login`, `last_logged_in`, `ip_address`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'administrator', '$2a$12$xMYTYwhGuOIBZ9/x0Fgi1uZ5rIWQLyqdJSoD9IewXsuZ2Sh.2bqS6', 'Administrator', 'admin@admin.com', 'diskominfo.solselkab.go.id', 0, 'super_user', NULL, NULL, NULL, NULL, 'true', '2022-11-04 23:44:44', '36.67.234.41', '2020-05-07 05:09:16', '2022-11-04 15:44:44', NULL, NULL, 0, 1, 0, 0, 'false'),
(6, 'admin', '$2y$10$Dv7eAfMwFB30pDE7ZxC8heDZvHb.1x9jEfvgLWdl9IzooCiFGuO46', 'Admin Dinas Kominfo2', 'idep@gmail.com', NULL, 0, 'super_user', NULL, '', NULL, NULL, 'true', '2022-11-03 05:18:08', '::1', '2021-06-21 10:37:37', '2022-11-03 04:18:08', NULL, NULL, 1, 6, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_group` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_groups`
--

INSERT INTO `user_groups` (`id`, `user_group`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 'kontributor', '2021-01-11 16:55:17', '2022-08-11 12:39:58', NULL, NULL, 1, 0, 0, 0, 'false'),
(2, 'statistik', '2021-02-25 12:25:03', '2022-08-11 12:39:58', NULL, NULL, 1, 0, 0, 0, 'false'),
(3, 'aptika', '2021-03-08 12:08:34', '2022-08-11 12:39:58', NULL, NULL, 1, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_privileges`
--

CREATE TABLE `user_privileges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_group_id` bigint(20) DEFAULT '0',
  `module_id` bigint(20) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT '0',
  `restored_by` bigint(20) DEFAULT '0',
  `is_deleted` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_privileges`
--

INSERT INTO `user_privileges` (`id`, `user_group_id`, `module_id`, `created_at`, `updated_at`, `deleted_at`, `restored_at`, `created_by`, `updated_by`, `deleted_by`, `restored_by`, `is_deleted`) VALUES
(1, 1, 4, '2021-01-11 16:55:35', '2022-08-11 12:39:59', NULL, NULL, 1, 0, 0, 0, 'false'),
(2, 2, 6, '2021-02-25 12:25:25', '2022-08-11 12:39:59', NULL, NULL, 1, 0, 0, 0, 'false'),
(3, 3, 6, '2021-04-22 10:58:23', '2022-08-11 12:39:59', NULL, NULL, 1, 0, 0, 0, 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_sessions`
--

CREATE TABLE `_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `_sessions`
--

INSERT INTO `_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('9nulfndobmnd6nqaja7uen7e1oirn1em', '::1', 1667528469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373532383436373b746f6b656e7c733a33323a223339356661373938313833316131343939356262316131356435613165356430223b637372665f746f6b656e7c733a33323a223339356661373938313833316131343939356262316131356435613165356430223b736974655f6d61696e74656e616e63657c733a353a2266616c7365223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323032302d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a333a22434d53223b6d6574615f6b6579776f7264737c733a333a22434d53223b6d61705f6c6f636174696f6e7c733a3433323a223c696672616d65207372633d2268747470733a2f2f7777772e676f6f676c652e636f6d2f6d6170732f656d6265643f70623d21316d313821316d313221316d33213164333938382e3334363133383832313736382132643130312e323337333334343134363135392133642d312e3535363532313433363431393331353821326d3321316630213266302133663021336d322131693130323421326937363821346631332e3121336d3321316d322131733078326532636633656662383363353834352533413078383662326533316331396632646436612132734b616e746f72253230427570617469253230536f6c6f6b25323053656c6174616e2135653021336d32213173696421327369642134763136363731383830393138303321356d3221317369642132736964222077696474683d2236303022206865696768743d2234353022207374796c653d22626f726465723a303b2220616c6c6f7766756c6c73637265656e3d2222206c6f6164696e673d226c617a7922207265666572726572706f6c6963793d226e6f2d72656665727265722d7768656e2d646f776e6772616465223e3c2f696672616d653e223b66617669636f6e7c733a33363a2238323034333332616537336530663464633338393532343530326231613261382e706e67223b6865616465727c733a33363a2264663832363238313361633135323763633032316265656135383730386435392e706e67223b7265636170746368615f7374617475737c733a373a2264697361626c65223b7265636170746368615f736974655f6b65797c733a34303a22364c654e435441554141414141414454624c317244773847543144463244556a567445587a644d75223b7265636170746368615f7365637265745f6b65797c733a34303a22364c654e4354415541414141414771384f3049746b7a4738667341394b654a376d464d4d46463173223b74696d657a6f6e657c733a31323a22417369612f4a616b61727461223b66696c655f616c6c6f7765645f74797065737c733a32383a227064662c6a70672c6a7065672c706e672c6d6f762c6d70342c676966223b75706c6f61645f6d61785f66696c6573697a657c733a363a22333030303030223b7468756d626e61696c5f73697a655f6865696768747c733a333a22313030223b7468756d626e61696c5f73697a655f77696474687c733a333a22313530223b6d656469756d5f73697a655f6865696768747c733a333a22333038223b6d656469756d5f73697a655f77696474687c733a333a22343630223b6c617267655f73697a655f6865696768747c733a333a22363030223b6c617267655f73697a655f77696474687c733a333a22383030223b616c62756d5f636f7665725f6865696768747c733a333a22323530223b616c62756d5f636f7665725f77696474687c733a333a22343030223b62616e6e65725f6865696768747c733a323a223831223b62616e6e65725f77696474687c733a333a22323435223b696d6167655f736c696465725f6865696768747c733a333a22343030223b696d6167655f736c696465725f77696474687c733a333a22393030223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22333030223b656d706c6f7965655f70686f746f5f6865696768747c733a333a22343030223b656d706c6f7965655f70686f746f5f77696474687c733a333a22333030223b686561646d61737465725f70686f746f5f6865696768747c733a333a22343030223b686561646d61737465725f70686f746f5f77696474687c733a333a22333030223b6865616465725f6865696768747c733a323a223830223b6865616465725f77696474687c733a333a22323030223b6c6f676f5f6865696768747c733a333a22313230223b6c6f676f5f77696474687c733a333a22313230223b64656661756c745f706f73745f63617465676f72797c733a313a2231223b64656661756c745f706f73745f7374617475737c733a373a227075626c697368223b64656661756c745f706f73745f7669736962696c6974797c733a363a227075626c6963223b64656661756c745f706f73745f64697363757373696f6e7c733a343a226f70656e223b706f73745f696d6167655f7468756d626e61696c5f6865696768747c733a333a22313030223b706f73745f696d6167655f7468756d626e61696c5f77696474687c733a333a22313530223b706f73745f696d6167655f6d656469756d5f6865696768747c733a333a22323530223b706f73745f696d6167655f6d656469756d5f77696474687c733a333a22343030223b706f73745f696d6167655f6c617267655f6865696768747c733a333a22343530223b706f73745f696d6167655f6c617267655f77696474687c733a333a22383430223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f6d6f6465726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a32343a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d223b747769747465727c733a31393a2268747470733a2f2f747769747465722e636f6d223b6c696e6b65645f696e7c733a303a22223b796f75747562657c733a32333a2268747470733a2f2f7777772e796f75747562652e636f6d223b696e7374616772616d7c733a32353a2268747470733a2f2f7777772e696e7374616772616d2e636f6d223b73656e64677269645f757365726e616d657c733a303a22223b73656e64677269645f70617373776f72647c733a303a22223b73656e64677269645f6170695f6b65797c733a36393a2253472e7337614c476977725464695a6c4146724a4f425939512e6370676d765a5833625250377649786f71775553764d6c38733132394d41467a43794458694c77616e7373223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31313a224b455342414e4742504f4c223b686561646d61737465727c733a32333a224b6570616c612044696e6173204b455342414e47504f4c223b686561646d61737465725f70686f746f7c733a33363a2237343137383630613761653564623933356134376432346438396339303564662e6a7067223b7363686f6f6c5f6c6576656c7c733a313a224d223b7363686f6f6c5f7374617475737c733a313a2232223b6f776e6572736869705f7374617475737c733a333a22313038223b6465637265655f6f7065726174696e675f7065726d69747c733a313a222d223b6465637265655f6f7065726174696e675f7065726d69745f646174657c733a31303a22323032302d30352d3037223b7461676c696e657c733a32333a224b616275706174656e20536f6c6f6b2053656c6174616e223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a31323a224c7562756b20476164616e67223b76696c6c6167657c733a31323a224c7562756b20476164616e67223b7375625f64697374726963747c733a31313a224b65632e2053616e676972223b64697374726963747c733a32393a22536f6c6f6b2053656c6174616e2c2053756d6174657261204261726174223b706f7374616c5f636f64657c733a353a223237373738223b7374726565745f616464726573737c733a31343a224b6f646520506f73203237373738223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32363a226b657362616e67706f6c40736f6c73656c6b61622e676f2e6964223b776562736974657c733a32363a226b657362616e67706f6c2e736f6c73656c6b61622e676f2e6964223b6c6f676f7c733a33363a2236373733313239353637323937333935313330653165616430326163626139392e706e67223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303230223b61646d697373696f6e5f73746172745f646174657c733a31303a22323032302d30312d3031223b61646d697373696f6e5f656e645f646174657c733a31303a22323032302d31322d3331223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323032302d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323032302d31322d3331223b5f61636164656d69635f796561727c733a31353a22546168756e2050656c616a6172616e223b5f73747564656e747c733a31333a225065736572746120446964696b223b5f6964656e746974795f6e756d6265727c733a333a224e4953223b5f656d706c6f7965657c733a373a2250656761776169223b5f5f656d706c6f7965657c733a31313a224b6570656761776169616e223b5f7375626a6563747c733a31343a224d6174612050656c616a6172616e223b5f61646d697373696f6e7c733a343a2250504442223b5f6d616a6f727c733a373a224a75727573616e223b5f686561646d61737465727c733a31323a224b6570616c612044696e6173223b7468656d657c733a353a226261726b61223b6d616a6f725f636f756e747c623a303b),
('mmtdgvbjis1lirloti149otdkgvgevcu', '36.67.234.41', 1667532024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373533323032343b746f6b656e7c733a33323a226363346331393363313936666432643366376638326130346130326434366638223b637372665f746f6b656e7c733a33323a226363346331393363313936666432643366376638326130346130326434366638223b736974655f6d61696e74656e616e63657c733a353a2266616c7365223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323032302d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a333a22434d53223b6d6574615f6b6579776f7264737c733a333a22434d53223b6d61705f6c6f636174696f6e7c733a3433323a223c696672616d65207372633d2268747470733a2f2f7777772e676f6f676c652e636f6d2f6d6170732f656d6265643f70623d21316d313821316d313221316d33213164333938382e3334363133383832313736382132643130312e323337333334343134363135392133642d312e3535363532313433363431393331353821326d3321316630213266302133663021336d322131693130323421326937363821346631332e3121336d3321316d322131733078326532636633656662383363353834352533413078383662326533316331396632646436612132734b616e746f72253230427570617469253230536f6c6f6b25323053656c6174616e2135653021336d32213173696421327369642134763136363731383830393138303321356d3221317369642132736964222077696474683d2236303022206865696768743d2234353022207374796c653d22626f726465723a303b2220616c6c6f7766756c6c73637265656e3d2222206c6f6164696e673d226c617a7922207265666572726572706f6c6963793d226e6f2d72656665727265722d7768656e2d646f776e6772616465223e3c2f696672616d653e223b66617669636f6e7c733a33363a2238323034333332616537336530663464633338393532343530326231613261382e706e67223b6865616465727c733a33363a2264663832363238313361633135323763633032316265656135383730386435392e706e67223b7265636170746368615f7374617475737c733a373a2264697361626c65223b7265636170746368615f736974655f6b65797c733a34303a22364c654e435441554141414141414454624c317244773847543144463244556a567445587a644d75223b7265636170746368615f7365637265745f6b65797c733a34303a22364c654e4354415541414141414771384f3049746b7a4738667341394b654a376d464d4d46463173223b74696d657a6f6e657c733a31323a22417369612f4a616b61727461223b66696c655f616c6c6f7765645f74797065737c733a32383a227064662c6a70672c6a7065672c706e672c6d6f762c6d70342c676966223b75706c6f61645f6d61785f66696c6573697a657c733a363a22333030303030223b7468756d626e61696c5f73697a655f6865696768747c733a333a22313030223b7468756d626e61696c5f73697a655f77696474687c733a333a22313530223b6d656469756d5f73697a655f6865696768747c733a333a22333038223b6d656469756d5f73697a655f77696474687c733a333a22343630223b6c617267655f73697a655f6865696768747c733a333a22363030223b6c617267655f73697a655f77696474687c733a333a22383030223b616c62756d5f636f7665725f6865696768747c733a333a22323530223b616c62756d5f636f7665725f77696474687c733a333a22343030223b62616e6e65725f6865696768747c733a323a223831223b62616e6e65725f77696474687c733a333a22323435223b696d6167655f736c696465725f6865696768747c733a333a22343030223b696d6167655f736c696465725f77696474687c733a333a22393030223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22333030223b656d706c6f7965655f70686f746f5f6865696768747c733a333a22343030223b656d706c6f7965655f70686f746f5f77696474687c733a333a22333030223b686561646d61737465725f70686f746f5f6865696768747c733a333a22343030223b686561646d61737465725f70686f746f5f77696474687c733a333a22333030223b6865616465725f6865696768747c733a323a223830223b6865616465725f77696474687c733a333a22323030223b6c6f676f5f6865696768747c733a333a22313230223b6c6f676f5f77696474687c733a333a22313230223b64656661756c745f706f73745f63617465676f72797c733a313a2231223b64656661756c745f706f73745f7374617475737c733a373a227075626c697368223b64656661756c745f706f73745f7669736962696c6974797c733a363a227075626c6963223b64656661756c745f706f73745f64697363757373696f6e7c733a343a226f70656e223b706f73745f696d6167655f7468756d626e61696c5f6865696768747c733a333a22313030223b706f73745f696d6167655f7468756d626e61696c5f77696474687c733a333a22313530223b706f73745f696d6167655f6d656469756d5f6865696768747c733a333a22323530223b706f73745f696d6167655f6d656469756d5f77696474687c733a333a22343030223b706f73745f696d6167655f6c617267655f6865696768747c733a333a22343530223b706f73745f696d6167655f6c617267655f77696474687c733a333a22383430223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f6d6f6465726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a32343a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d223b747769747465727c733a31393a2268747470733a2f2f747769747465722e636f6d223b6c696e6b65645f696e7c733a303a22223b796f75747562657c733a32333a2268747470733a2f2f7777772e796f75747562652e636f6d223b696e7374616772616d7c733a32353a2268747470733a2f2f7777772e696e7374616772616d2e636f6d223b73656e64677269645f757365726e616d657c733a303a22223b73656e64677269645f70617373776f72647c733a303a22223b73656e64677269645f6170695f6b65797c733a36393a2253472e7337614c476977725464695a6c4146724a4f425939512e6370676d765a5833625250377649786f71775553764d6c38733132394d41467a43794458694c77616e7373223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31313a224b455342414e4742504f4c223b686561646d61737465727c733a32333a224b6570616c612044696e6173204b455342414e47504f4c223b686561646d61737465725f70686f746f7c733a33363a2237343137383630613761653564623933356134376432346438396339303564662e6a7067223b7363686f6f6c5f6c6576656c7c733a313a224d223b7363686f6f6c5f7374617475737c733a313a2232223b6f776e6572736869705f7374617475737c733a333a22313038223b6465637265655f6f7065726174696e675f7065726d69747c733a313a222d223b6465637265655f6f7065726174696e675f7065726d69745f646174657c733a31303a22323032302d30352d3037223b7461676c696e657c733a32333a224b616275706174656e20536f6c6f6b2053656c6174616e223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a31323a224c7562756b20476164616e67223b76696c6c6167657c733a31323a224c7562756b20476164616e67223b7375625f64697374726963747c733a31313a224b65632e2053616e676972223b64697374726963747c733a32393a22536f6c6f6b2053656c6174616e2c2053756d6174657261204261726174223b706f7374616c5f636f64657c733a353a223237373738223b7374726565745f616464726573737c733a31343a224b6f646520506f73203237373738223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32363a226b657362616e67706f6c40736f6c73656c6b61622e676f2e6964223b776562736974657c733a32363a226b657362616e67706f6c2e736f6c73656c6b61622e676f2e6964223b6c6f676f7c733a33363a2236373733313239353637323937333935313330653165616430326163626139392e706e67223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303230223b61646d697373696f6e5f73746172745f646174657c733a31303a22323032302d30312d3031223b61646d697373696f6e5f656e645f646174657c733a31303a22323032302d31322d3331223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323032302d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323032302d31322d3331223b5f61636164656d69635f796561727c733a31353a22546168756e2050656c616a6172616e223b5f73747564656e747c733a31333a225065736572746120446964696b223b5f6964656e746974795f6e756d6265727c733a333a224e4953223b5f656d706c6f7965657c733a373a2250656761776169223b5f5f656d706c6f7965657c733a31313a224b6570656761776169616e223b5f7375626a6563747c733a31343a224d6174612050656c616a6172616e223b5f61646d697373696f6e7c733a343a2250504442223b5f6d616a6f727c733a373a224a75727573616e223b5f686561646d61737465727c733a31323a224b6570616c612044696e6173223b7468656d657c733a353a226261726b61223b6d616a6f725f636f756e747c623a303b),
('r7ddslmj3sdkaguns2cpqvd342qb3bn8', '36.67.234.41', 1667532511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373533323435383b746f6b656e7c733a33323a226661663636373236353633623936383563303437313939623436616162633036223b637372665f746f6b656e7c733a33323a226661663636373236353633623936383563303437313939623436616162633036223b736974655f6d61696e74656e616e63657c733a353a2266616c7365223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323032302d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a333a22434d53223b6d6574615f6b6579776f7264737c733a333a22434d53223b6d61705f6c6f636174696f6e7c733a3433323a223c696672616d65207372633d2268747470733a2f2f7777772e676f6f676c652e636f6d2f6d6170732f656d6265643f70623d21316d313821316d313221316d33213164333938382e3334363133383832313736382132643130312e323337333334343134363135392133642d312e3535363532313433363431393331353821326d3321316630213266302133663021336d322131693130323421326937363821346631332e3121336d3321316d322131733078326532636633656662383363353834352533413078383662326533316331396632646436612132734b616e746f72253230427570617469253230536f6c6f6b25323053656c6174616e2135653021336d32213173696421327369642134763136363731383830393138303321356d3221317369642132736964222077696474683d2236303022206865696768743d2234353022207374796c653d22626f726465723a303b2220616c6c6f7766756c6c73637265656e3d2222206c6f6164696e673d226c617a7922207265666572726572706f6c6963793d226e6f2d72656665727265722d7768656e2d646f776e6772616465223e3c2f696672616d653e223b66617669636f6e7c733a33363a2238323034333332616537336530663464633338393532343530326231613261382e706e67223b6865616465727c733a33363a2264663832363238313361633135323763633032316265656135383730386435392e706e67223b7265636170746368615f7374617475737c733a373a2264697361626c65223b7265636170746368615f736974655f6b65797c733a34303a22364c654e435441554141414141414454624c317244773847543144463244556a567445587a644d75223b7265636170746368615f7365637265745f6b65797c733a34303a22364c654e4354415541414141414771384f3049746b7a4738667341394b654a376d464d4d46463173223b74696d657a6f6e657c733a31323a22417369612f4a616b61727461223b66696c655f616c6c6f7765645f74797065737c733a32383a227064662c6a70672c6a7065672c706e672c6d6f762c6d70342c676966223b75706c6f61645f6d61785f66696c6573697a657c733a363a22333030303030223b7468756d626e61696c5f73697a655f6865696768747c733a333a22313030223b7468756d626e61696c5f73697a655f77696474687c733a333a22313530223b6d656469756d5f73697a655f6865696768747c733a333a22333038223b6d656469756d5f73697a655f77696474687c733a333a22343630223b6c617267655f73697a655f6865696768747c733a333a22363030223b6c617267655f73697a655f77696474687c733a333a22383030223b616c62756d5f636f7665725f6865696768747c733a333a22323530223b616c62756d5f636f7665725f77696474687c733a333a22343030223b62616e6e65725f6865696768747c733a323a223831223b62616e6e65725f77696474687c733a333a22323435223b696d6167655f736c696465725f6865696768747c733a333a22343030223b696d6167655f736c696465725f77696474687c733a333a22393030223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22333030223b656d706c6f7965655f70686f746f5f6865696768747c733a333a22343030223b656d706c6f7965655f70686f746f5f77696474687c733a333a22333030223b686561646d61737465725f70686f746f5f6865696768747c733a333a22343030223b686561646d61737465725f70686f746f5f77696474687c733a333a22333030223b6865616465725f6865696768747c733a323a223830223b6865616465725f77696474687c733a333a22323030223b6c6f676f5f6865696768747c733a333a22313230223b6c6f676f5f77696474687c733a333a22313230223b64656661756c745f706f73745f63617465676f72797c733a313a2231223b64656661756c745f706f73745f7374617475737c733a373a227075626c697368223b64656661756c745f706f73745f7669736962696c6974797c733a363a227075626c6963223b64656661756c745f706f73745f64697363757373696f6e7c733a343a226f70656e223b706f73745f696d6167655f7468756d626e61696c5f6865696768747c733a333a22313030223b706f73745f696d6167655f7468756d626e61696c5f77696474687c733a333a22313530223b706f73745f696d6167655f6d656469756d5f6865696768747c733a333a22323530223b706f73745f696d6167655f6d656469756d5f77696474687c733a333a22343030223b706f73745f696d6167655f6c617267655f6865696768747c733a333a22343530223b706f73745f696d6167655f6c617267655f77696474687c733a333a22383430223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f6d6f6465726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a32343a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d223b747769747465727c733a31393a2268747470733a2f2f747769747465722e636f6d223b6c696e6b65645f696e7c733a303a22223b796f75747562657c733a32333a2268747470733a2f2f7777772e796f75747562652e636f6d223b696e7374616772616d7c733a32353a2268747470733a2f2f7777772e696e7374616772616d2e636f6d223b73656e64677269645f757365726e616d657c733a303a22223b73656e64677269645f70617373776f72647c733a303a22223b73656e64677269645f6170695f6b65797c733a36393a2253472e7337614c476977725464695a6c4146724a4f425939512e6370676d765a5833625250377649786f71775553764d6c38733132394d41467a43794458694c77616e7373223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31313a224b455342414e4742504f4c223b686561646d61737465727c733a32333a224b6570616c612044696e6173204b455342414e47504f4c223b686561646d61737465725f70686f746f7c733a33363a2237343137383630613761653564623933356134376432346438396339303564662e6a7067223b7363686f6f6c5f6c6576656c7c733a313a224d223b7363686f6f6c5f7374617475737c733a313a2232223b6f776e6572736869705f7374617475737c733a333a22313038223b6465637265655f6f7065726174696e675f7065726d69747c733a313a222d223b6465637265655f6f7065726174696e675f7065726d69745f646174657c733a31303a22323032302d30352d3037223b7461676c696e657c733a32333a224b616275706174656e20536f6c6f6b2053656c6174616e223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a31323a224c7562756b20476164616e67223b76696c6c6167657c733a31323a224c7562756b20476164616e67223b7375625f64697374726963747c733a31313a224b65632e2053616e676972223b64697374726963747c733a32393a22536f6c6f6b2053656c6174616e2c2053756d6174657261204261726174223b706f7374616c5f636f64657c733a353a223237373738223b7374726565745f616464726573737c733a31343a224b6f646520506f73203237373738223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32363a226b657362616e67706f6c40736f6c73656c6b61622e676f2e6964223b776562736974657c733a32363a226b657362616e67706f6c2e736f6c73656c6b61622e676f2e6964223b6c6f676f7c733a33363a2236373733313239353637323937333935313330653165616430326163626139392e706e67223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303230223b61646d697373696f6e5f73746172745f646174657c733a31303a22323032302d30312d3031223b61646d697373696f6e5f656e645f646174657c733a31303a22323032302d31322d3331223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323032302d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323032302d31322d3331223b5f61636164656d69635f796561727c733a31353a22546168756e2050656c616a6172616e223b5f73747564656e747c733a31333a225065736572746120446964696b223b5f6964656e746974795f6e756d6265727c733a333a224e4953223b5f656d706c6f7965657c733a373a2250656761776169223b5f5f656d706c6f7965657c733a31313a224b6570656761776169616e223b5f7375626a6563747c733a31343a224d6174612050656c616a6172616e223b5f61646d697373696f6e7c733a343a2250504442223b5f6d616a6f727c733a373a224a75727573616e223b5f686561646d61737465727c733a31323a224b6570616c612044696e6173223b7468656d657c733a353a226261726b61223b6d616a6f725f636f756e747c623a303b),
('hb9nnh5isotp26l5em4197m9uqutd9d7', '36.67.234.41', 1667579933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373537393932303b746f6b656e7c733a33323a223361383966656539366361303764393564383964363665353634363061316132223b637372665f746f6b656e7c733a33323a223361383966656539366361303764393564383964363665353634363061316132223b736974655f6d61696e74656e616e63657c733a353a2266616c7365223b736974655f6d61696e74656e616e63655f656e645f646174657c733a31303a22323032302d30312d3031223b736974655f63616368657c733a353a2266616c7365223b736974655f63616368655f74696d657c733a323a223130223b6d6574615f6465736372697074696f6e7c733a333a22434d53223b6d6574615f6b6579776f7264737c733a333a22434d53223b6d61705f6c6f636174696f6e7c733a3433323a223c696672616d65207372633d2268747470733a2f2f7777772e676f6f676c652e636f6d2f6d6170732f656d6265643f70623d21316d313821316d313221316d33213164333938382e3334363133383832313736382132643130312e323337333334343134363135392133642d312e3535363532313433363431393331353821326d3321316630213266302133663021336d322131693130323421326937363821346631332e3121336d3321316d322131733078326532636633656662383363353834352533413078383662326533316331396632646436612132734b616e746f72253230427570617469253230536f6c6f6b25323053656c6174616e2135653021336d32213173696421327369642134763136363731383830393138303321356d3221317369642132736964222077696474683d2236303022206865696768743d2234353022207374796c653d22626f726465723a303b2220616c6c6f7766756c6c73637265656e3d2222206c6f6164696e673d226c617a7922207265666572726572706f6c6963793d226e6f2d72656665727265722d7768656e2d646f776e6772616465223e3c2f696672616d653e223b66617669636f6e7c733a33363a2238323034333332616537336530663464633338393532343530326231613261382e706e67223b6865616465727c733a33363a2264663832363238313361633135323763633032316265656135383730386435392e706e67223b7265636170746368615f7374617475737c733a373a2264697361626c65223b7265636170746368615f736974655f6b65797c733a34303a22364c654e435441554141414141414454624c317244773847543144463244556a567445587a644d75223b7265636170746368615f7365637265745f6b65797c733a34303a22364c654e4354415541414141414771384f3049746b7a4738667341394b654a376d464d4d46463173223b74696d657a6f6e657c733a31323a22417369612f4a616b61727461223b66696c655f616c6c6f7765645f74797065737c733a32383a227064662c6a70672c6a7065672c706e672c6d6f762c6d70342c676966223b75706c6f61645f6d61785f66696c6573697a657c733a363a22333030303030223b7468756d626e61696c5f73697a655f6865696768747c733a333a22313030223b7468756d626e61696c5f73697a655f77696474687c733a333a22313530223b6d656469756d5f73697a655f6865696768747c733a333a22333038223b6d656469756d5f73697a655f77696474687c733a333a22343630223b6c617267655f73697a655f6865696768747c733a333a22363030223b6c617267655f73697a655f77696474687c733a333a22383030223b616c62756d5f636f7665725f6865696768747c733a333a22323530223b616c62756d5f636f7665725f77696474687c733a333a22343030223b62616e6e65725f6865696768747c733a323a223831223b62616e6e65725f77696474687c733a333a22323435223b696d6167655f736c696465725f6865696768747c733a333a22343030223b696d6167655f736c696465725f77696474687c733a333a22393030223b73747564656e745f70686f746f5f6865696768747c733a333a22343030223b73747564656e745f70686f746f5f77696474687c733a333a22333030223b656d706c6f7965655f70686f746f5f6865696768747c733a333a22343030223b656d706c6f7965655f70686f746f5f77696474687c733a333a22333030223b686561646d61737465725f70686f746f5f6865696768747c733a333a22343030223b686561646d61737465725f70686f746f5f77696474687c733a333a22333030223b6865616465725f6865696768747c733a323a223830223b6865616465725f77696474687c733a333a22323030223b6c6f676f5f6865696768747c733a333a22313230223b6c6f676f5f77696474687c733a333a22313230223b64656661756c745f706f73745f63617465676f72797c733a313a2231223b64656661756c745f706f73745f7374617475737c733a373a227075626c697368223b64656661756c745f706f73745f7669736962696c6974797c733a363a227075626c6963223b64656661756c745f706f73745f64697363757373696f6e7c733a343a226f70656e223b706f73745f696d6167655f7468756d626e61696c5f6865696768747c733a333a22313030223b706f73745f696d6167655f7468756d626e61696c5f77696474687c733a333a22313530223b706f73745f696d6167655f6d656469756d5f6865696768747c733a333a22323530223b706f73745f696d6167655f6d656469756d5f77696474687c733a333a22343030223b706f73745f696d6167655f6c617267655f6865696768747c733a333a22343530223b706f73745f696d6167655f6c617267655f77696474687c733a333a22383430223b706f73745f7065725f706167657c733a323a223130223b706f73745f7273735f636f756e747c733a323a223130223b706f73745f72656c617465645f636f756e747c733a323a223130223b636f6d6d656e745f7065725f706167657c733a323a223130223b636f6d6d656e745f6d6f6465726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f726567697374726174696f6e7c733a353a2266616c7365223b636f6d6d656e745f626c61636b6c6973747c733a373a226b616d70726574223b636f6d6d656e745f6f726465727c733a333a22617363223b66616365626f6f6b7c733a32343a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d223b747769747465727c733a31393a2268747470733a2f2f747769747465722e636f6d223b6c696e6b65645f696e7c733a303a22223b796f75747562657c733a32333a2268747470733a2f2f7777772e796f75747562652e636f6d223b696e7374616772616d7c733a32353a2268747470733a2f2f7777772e696e7374616772616d2e636f6d223b73656e64677269645f757365726e616d657c733a303a22223b73656e64677269645f70617373776f72647c733a303a22223b73656e64677269645f6170695f6b65797c733a36393a2253472e7337614c476977725464695a6c4146724a4f425939512e6370676d765a5833625250377649786f71775553764d6c38733132394d41467a43794458694c77616e7373223b6e70736e7c733a333a22313233223b7363686f6f6c5f6e616d657c733a31313a224b455342414e4742504f4c223b686561646d61737465727c733a32333a224b6570616c612044696e6173204b455342414e47504f4c223b686561646d61737465725f70686f746f7c733a33363a2237343137383630613761653564623933356134376432346438396339303564662e6a7067223b7363686f6f6c5f6c6576656c7c733a313a224d223b7363686f6f6c5f7374617475737c733a313a2232223b6f776e6572736869705f7374617475737c733a333a22313038223b6465637265655f6f7065726174696e675f7065726d69747c733a313a222d223b6465637265655f6f7065726174696e675f7065726d69745f646174657c733a31303a22323032302d30352d3037223b7461676c696e657c733a32333a224b616275706174656e20536f6c6f6b2053656c6174616e223b72747c733a323a223132223b72777c733a323a223036223b7375625f76696c6c6167657c733a31323a224c7562756b20476164616e67223b76696c6c6167657c733a31323a224c7562756b20476164616e67223b7375625f64697374726963747c733a31313a224b65632e2053616e676972223b64697374726963747c733a32393a22536f6c6f6b2053656c6174616e2c2053756d6174657261204261726174223b706f7374616c5f636f64657c733a353a223237373738223b7374726565745f616464726573737c733a31343a224b6f646520506f73203237373738223b70686f6e657c733a31303a2230323332313233343536223b6661787c733a31303a2230323332313233343536223b656d61696c7c733a32363a226b657362616e67706f6c40736f6c73656c6b61622e676f2e6964223b776562736974657c733a32363a226b657362616e67706f6c2e736f6c73656c6b61622e676f2e6964223b6c6f676f7c733a33363a2236373733313239353637323937333935313330653165616430326163626139392e706e67223b61646d697373696f6e5f7374617475737c733a343a226f70656e223b61646d697373696f6e5f796561727c733a343a2232303230223b61646d697373696f6e5f73746172745f646174657c733a31303a22323032302d30312d3031223b61646d697373696f6e5f656e645f646174657c733a31303a22323032302d31322d3331223b616e6e6f756e63656d656e745f73746172745f646174657c733a31303a22323032302d30312d3031223b616e6e6f756e63656d656e745f656e645f646174657c733a31303a22323032302d31322d3331223b5f61636164656d69635f796561727c733a31353a22546168756e2050656c616a6172616e223b5f73747564656e747c733a31333a225065736572746120446964696b223b5f6964656e746974795f6e756d6265727c733a333a224e4953223b5f656d706c6f7965657c733a373a2250656761776169223b5f5f656d706c6f7965657c733a31313a224b6570656761776169616e223b5f7375626a6563747c733a31343a224d6174612050656c616a6172616e223b5f61646d697373696f6e7c733a343a2250504442223b5f6d616a6f727c733a373a224a75727573616e223b5f686561646d61737465727c733a31323a224b6570616c612044696e6173223b7468656d657c733a353a226261726b61223b6d616a6f725f636f756e747c623a303b757365725f69647c733a313a2231223b757365725f6e616d657c733a31333a2261646d696e6973747261746f72223b757365725f656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f747970657c733a31303a2273757065725f75736572223b757365725f70726f66696c655f69647c4e3b6861735f6c6f67696e7c623a313b757365725f70726976696c656765737c613a31343a7b693a303b733a393a2264617368626f617264223b693a313b733a31353a226368616e67655f70617373776f7264223b693a323b733a31313a226d61696e74656e616e6365223b693a333b733a353a227573657273223b693a343b733a393a2261646d697373696f6e223b693a353b733a31303a22617070656172616e6365223b693a363b733a343a22626c6f67223b693a373b733a393a22656d706c6f79656573223b693a383b733a353a226d65646961223b693a393b733a373a22706c7567696e73223b693a31303b733a393a227265666572656e6365223b693a31313b733a383a2273657474696e6773223b693a31323b733a383a2261636164656d6963223b693a31333b733a373a2270726f66696c65223b7d);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academic_year` (`academic_year`);

--
-- Indeks untuk tabel `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `achievements_student_id__idx` (`student_id`) USING BTREE;

--
-- Indeks untuk tabel `admission_phases`
--
ALTER TABLE `admission_phases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`academic_year_id`,`phase_name`),
  ADD KEY `admission_phases_academic_year_id__idx` (`academic_year_id`) USING BTREE;

--
-- Indeks untuk tabel `admission_quotas`
--
ALTER TABLE `admission_quotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`academic_year_id`,`admission_type_id`,`major_id`),
  ADD KEY `admission_quotas_academic_year_id__idx` (`academic_year_id`) USING BTREE,
  ADD KEY `admission_quotas_admission_type_id__idx` (`admission_type_id`) USING BTREE,
  ADD KEY `admission_quotas_major_id__idx` (`major_id`) USING BTREE;

--
-- Indeks untuk tabel `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `album_title` (`album_title`);

--
-- Indeks untuk tabel `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`question_id`,`answer`),
  ADD KEY `answers_question_id__idx` (`question_id`) USING BTREE;

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`category_name`,`category_type`);

--
-- Indeks untuk tabel `class_groups`
--
ALTER TABLE `class_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`class_group`,`sub_class_group`,`major_id`),
  ADD KEY `class_groups_major_id__idx` (`major_id`) USING BTREE;

--
-- Indeks untuk tabel `class_group_settings`
--
ALTER TABLE `class_group_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`academic_year_id`,`class_group_id`),
  ADD KEY `class_group_settings_academic_year_id__idx` (`academic_year_id`) USING BTREE,
  ADD KEY `class_group_settings_class_group_id__idx` (`class_group_id`) USING BTREE;

--
-- Indeks untuk tabel `class_group_students`
--
ALTER TABLE `class_group_students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`class_group_setting_id`,`student_id`),
  ADD KEY `class_group_students_class_group_setting_id__idx` (`class_group_setting_id`) USING BTREE,
  ADD KEY `class_group_students_student_id__idx` (`student_id`) USING BTREE;

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_comment_post_id__idx` (`comment_post_id`) USING BTREE;

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_nik__idx` (`nik`) USING BTREE,
  ADD KEY `employees_full_name__idx` (`full_name`) USING BTREE,
  ADD KEY `employees_email__idx` (`email`) USING BTREE,
  ADD KEY `employees_religion_id__idx` (`religion_id`) USING BTREE,
  ADD KEY `employees_marriage_status_id__idx` (`marriage_status_id`) USING BTREE,
  ADD KEY `employees_spouse_employment_id__idx` (`spouse_employment_id`) USING BTREE,
  ADD KEY `employees_employment_status_id__idx` (`employment_status_id`) USING BTREE,
  ADD KEY `employees_employment_type_id__idx` (`employment_type_id`) USING BTREE,
  ADD KEY `employees_institution_lifter_id__idx` (`institution_lifter_id`) USING BTREE,
  ADD KEY `employees_rank_id__idx` (`rank_id`) USING BTREE,
  ADD KEY `employees_salary_source_id__idx` (`salary_source_id`) USING BTREE,
  ADD KEY `employees_laboratory_skill_id__idx` (`laboratory_skill_id`) USING BTREE,
  ADD KEY `employees_special_need_id__idx` (`special_need_id`) USING BTREE;

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_file_category_id__idx` (`file_category_id`) USING BTREE;

--
-- Indeks untuk tabel `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`link_url`,`link_type`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `major_name` (`major_name`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_name` (`module_name`);

--
-- Indeks untuk tabel `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`option_group`,`option_name`),
  ADD KEY `options_option_group__idx` (`option_group`) USING BTREE;

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_photo_album_id__idx` (`photo_album_id`) USING BTREE;

--
-- Indeks untuk tabel `pollings`
--
ALTER TABLE `pollings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollings_answer_id__idx` (`answer_id`) USING BTREE;

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_author__idx` (`post_author`) USING BTREE;

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indeks untuk tabel `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`quote`,`quote_by`);

--
-- Indeks untuk tabel `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scholarships_student_id__idx` (`student_id`) USING BTREE;

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`setting_group`,`setting_variable`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_registration_number__idx` (`registration_number`) USING BTREE,
  ADD KEY `students_identity_number__idx` (`identity_number`) USING BTREE,
  ADD KEY `students_full_name__idx` (`full_name`) USING BTREE,
  ADD KEY `students_first_choice_id__idx` (`first_choice_id`) USING BTREE,
  ADD KEY `students_second_choice_id__idx` (`second_choice_id`) USING BTREE,
  ADD KEY `students_major_id__idx` (`major_id`) USING BTREE,
  ADD KEY `students_admission_phase_id__idx` (`admission_phase_id`) USING BTREE,
  ADD KEY `students_admission_type_id__idx` (`admission_type_id`) USING BTREE,
  ADD KEY `students_student_status_id__idx` (`student_status_id`) USING BTREE;

--
-- Indeks untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`tag`);

--
-- Indeks untuk tabel `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `theme_name` (`theme_name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_user_group_id__idx` (`user_group_id`) USING BTREE,
  ADD KEY `users_user_profile_id__idx` (`user_profile_id`) USING BTREE;

--
-- Indeks untuk tabel `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_group` (`user_group`);

--
-- Indeks untuk tabel `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_field` (`user_group_id`,`module_id`),
  ADD KEY `user_privileges_user_group_id__idx` (`user_group_id`) USING BTREE,
  ADD KEY `user_privileges_module_id__idx` (`module_id`) USING BTREE;

--
-- Indeks untuk tabel `_sessions`
--
ALTER TABLE `_sessions`
  ADD KEY `ci_sessions_TIMESTAMP` (`timestamp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `admission_phases`
--
ALTER TABLE `admission_phases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `admission_quotas`
--
ALTER TABLE `admission_quotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `class_groups`
--
ALTER TABLE `class_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_group_settings`
--
ALTER TABLE `class_group_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_group_students`
--
ALTER TABLE `class_group_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pollings`
--
ALTER TABLE `pollings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_privileges`
--
ALTER TABLE `user_privileges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
