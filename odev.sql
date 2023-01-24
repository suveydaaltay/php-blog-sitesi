-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 18 Oca 2023, 18:46:40
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `odev`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `abone`
--

CREATE TABLE `abone` (
  `abone_id` int(11) NOT NULL,
  `abone_email` varchar(240) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `abone`
--

INSERT INTO `abone` (`abone_id`, `abone_email`) VALUES
(1, 'suveyda.altay.mdbf19@iste.edu.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `ayar_id` int(1) NOT NULL,
  `ayar_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `ayar_anahtar` varchar(400) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_logo` varchar(120) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(160) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_telefon` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_email` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(120) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_instagram` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(150) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`ayar_id`, `ayar_baslik`, `ayar_aciklama`, `ayar_anahtar`, `ayar_logo`, `ayar_adres`, `ayar_telefon`, `ayar_email`, `ayar_facebook`, `ayar_instagram`, `ayar_youtube`, `ayar_twitter`) VALUES
(1, 'yazılım ', 'admin panelli blog sitesi', 'blog sitesi', '', 'blog', '05555555555', 'suveydaaltay3@gmail.com', 'https://www.facebook.com', 'https://www.instagram.com/suveydaaltay', 'https://www.youtube.com/suveydaaltay', 'https://www.twitter.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `blog_baslik` varchar(240) COLLATE utf8_turkish_ci NOT NULL,
  `blog_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `blog_resim` varchar(280) COLLATE utf8_turkish_ci NOT NULL,
  `blog_sira` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `blog_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `blog_anahtarkelime` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_baslik`, `blog_aciklama`, `blog_resim`, `blog_sira`, `kullanici_id`, `blog_zaman`, `blog_anahtarkelime`) VALUES
(6, 'günümüzde yapay zeka', '', '701611995381835673792pexels-designecologist-1779487.jpg', 9, 0, '2023-01-02 13:58:06', 'yapay zeka'),
(7, 'otonom sistemler', '<p>otonom sistemlerin savunma sanayisindeki yeri</p>\r\n', '598813394700474547572pexels-vlada-karpovich-4050470.jpg', 10, 0, '2023-01-02 13:59:28', 'otonom,robot'),
(8, 'otomatik sistemler', '<p>otomatik sistemlerin g&uuml;n&uuml;m&uuml;zdeki &ouml;nemi</p>\r\n', '452842612059556333979pexels-fox-1038916.jpg', 11, 0, '2023-01-02 14:00:38', 'sistem '),
(10, 'makine mühendisliği', '<p>makine m&uuml;hendisliğinin g&uuml;n&uuml;m&uuml;zdeki &ouml;nemi&nbsp;</p>\r\n', '873486332550823446561pexels-josh-sorenson-1714205.jpg', 5, 0, '2023-01-03 16:22:23', 'mühendislik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ekip`
--

CREATE TABLE `ekip` (
  `ekip_id` int(11) NOT NULL,
  `ekip_isim` varchar(240) COLLATE utf8_turkish_ci NOT NULL,
  `ekip_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ekip_konum` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ekip_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `ekip_twitter` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ekip_instagram` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ekip_facebook` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ekip_youtube` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ekip_sira` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ekip`
--

INSERT INTO `ekip` (`ekip_id`, `ekip_isim`, `ekip_resim`, `ekip_konum`, `ekip_aciklama`, `ekip_twitter`, `ekip_instagram`, `ekip_facebook`, `ekip_youtube`, `ekip_sira`) VALUES
(4, '', '267079690315298367851pexels-picjumbocom-196658.jpg', '', '', '', '', '', '', 0),
(5, 'sevgi', '145028658185051064103pexels-drew-williams-2657669.jpg', 'yazar', '<p>en iyi blog yazarı</p>\r\n', '', '', '', '', 2),
(6, 'sevgi', '145028658185051064103pexels-drew-williams-2657669.jpg', 'yazar', '<p>en iyi blog yazarı</p>\r\n', '', '', '', '', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_resim` varchar(240) COLLATE utf8_turkish_ci NOT NULL,
  `galeri_sira` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `galeri_resim`, `galeri_sira`) VALUES
(4, '63727220407409776933pexels-picjumbocom-196658.jpg', 4),
(5, '20207175930483213695pexels-luis-gomes-546819.jpg', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(240) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_aciklama`, `hakkimizda_resim`) VALUES
(1, 'Yazılım Yolcusu Hakkında', '<h2 style=\"font-style:italic\"><em>Sitemiz blog sitesidir 2022 yılında kurulmasına rağmen</em></h2>\r\n\r\n<h2 style=\"font-style:italic\"><em>&ccedil;ok değerli yazarla birlikte yazılım sekt&ouml;r&uuml;ndeki gelişmelerden</em></h2>\r\n\r\n<h2 style=\"font-style:italic\"><em>siz değerli okurlarımızı doğru ve g&uuml;venilir bir şekilde gelişmelerden haberdar etmekteyiz.</em></h2>\r\n\r\n<h2 style=\"font-style:italic\"><a href=\"http://www.yazılımyolcusu.com\"><ins>linke tıklayın j</ins></a></h2>\r\n\r\n<h2 style=\"font-style:italic\">&nbsp;</h2>\r\n\r\n<h2 style=\"font-style:italic\">&nbsp;</h2>\r\n\r\n<h2 style=\"font-style:italic\">&nbsp;</h2>\r\n\r\n<h2 style=\"font-style:italic\"><a href=\"http://www.yazılımyolcusu.com\"><ins><img alt=\"\" src=\"https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1260&amp;h=750&amp;dpr=1\" style=\"height:332px; width:500px\" /></ins></a></h2>\r\n', 'resimler/hakkimizda/500466572165638281060.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `icerik_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `icerik_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_resim` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_sira` int(11) NOT NULL,
  `icerik_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `icerik_anahtarkelime` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`icerik_id`, `kategori_id`, `icerik_baslik`, `icerik_resim`, `icerik_sira`, `icerik_aciklama`, `icerik_zaman`, `icerik_anahtarkelime`) VALUES
(1, 0, 'Yazılım yolcusu blog sitesi(admin panelli)', '95867282232668362771pexels-andrew-neel-3178818.jpg', 5, '<p>denrmd</p>\r\n', '2023-01-02 23:30:53', 'denemem'),
(2, 0, 'Yazılım yolcusu blog sitesi(admin panelli)', '95867282232668362771pexels-andrew-neel-3178818.jpg', 5, '<p>denrmd</p>\r\n', '2023-01-02 23:30:53', 'denemem'),
(3, 2, 'otomatik sistemler', '37888138759726158380pexels-djordje-petrovic-2102416.jpg', 4, '<p>otomatik sistemlerin &ouml;nemi</p>\r\n', '2023-01-03 15:51:40', 'sistem');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_baslik` varchar(240) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(11) NOT NULL,
  `kategori_durum` int(11) NOT NULL,
  `kategori_zaman` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_baslik`, `kategori_sira`, `kategori_durum`, `kategori_zaman`) VALUES
(1, 'süveyda ', 5, 1, '2023-01-02 22:13:57'),
(2, 'yapay zeka', 2, 1, '2023-01-03 15:38:10'),
(3, 'otonom', 3, 1, '2023-01-03 15:38:26'),
(4, 'süveyda ', 5, 1, '2023-01-03 15:55:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_adsoyad` varchar(240) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_sifre` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_email` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_zaman` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_adsoyad`, `kullanici_sifre`, `kullanici_email`, `kullanici_zaman`) VALUES
(1, 'süveyda altay', '827ccb0eea8a706c4c34a16891f84e7b', 'suveydaaltay3@gmail.com', '2023-01-03 22:10:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_listesi`
--

CREATE TABLE `menu_listesi` (
  `id` int(11) NOT NULL,
  `sira` int(11) DEFAULT NULL,
  `baslik` varchar(350) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `link` varchar(350) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `durum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `menu_listesi`
--

INSERT INTO `menu_listesi` (`id`, `sira`, `baslik`, `link`, `durum`) VALUES
(2, 1, 'ANA SAYFA', 'index.php', 1),
(3, 2, 'HAKKKIMIZDA', 'hakkimizda.php', 1),
(4, 3, 'EKİP', 'ekip.php', 1),
(5, 4, 'GALERİ', 'galeri.php', 1),
(6, 5, 'BLOG', 'blog.php', 1),
(7, 6, 'İLETİŞİM', 'iletisim.php', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `sayfaadi` text COLLATE utf8_turkish_ci NOT NULL,
  `sayfabaslik` text COLLATE utf8_turkish_ci NOT NULL,
  `sayficerik` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `sayfaadi`, `sayfabaslik`, `sayficerik`, `resim`) VALUES
(1, 'hakkımda', 'hakkımda 2222', 'içerikkkk', 'resim'),
(2, 'etkinlik', 'başlık22', 'içerikkkkkk', 'resimmm22'),
(3, 'Servislerimiz', 'Servislerimizi Buradan Takip Edebilirsiniz', '<p>Servislerimiz ile ilgili yazı</p>\r\n', 'resim.jpg'),
(4, 'Servislerimiz', 'Servislerimizi Buradan Takip Edebilirsiniz', '<p>Servislerimiz ile ilgili yazı</p>\r\n', 'resim.jpg'),
(5, 'Servislerimiz', 'Servislerimizi Buradan Takip Edebilirsiniz', '<p>Servislerimiz ile ilgili yazı</p>\r\n', 'resim.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_baslik` varchar(240) COLLATE utf8_turkish_ci NOT NULL,
  `slider_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `slider_buton` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `slider_link` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_baslik`, `slider_aciklama`, `slider_buton`, `slider_link`, `slider_resim`) VALUES
(1, 'yazılım yolcusu', '<p>hoş geldiniz</p>\r\n', 'tıkla', 'https//www.yazilimyolcusu.com', '185909734326603946552pexels-andrea-piacquadio-840996.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `yorum_kategori` varchar(240) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_id` int(11) NOT NULL,
  `yorum_adsoyad` varchar(280) COLLATE utf8_turkish_ci NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `yorum_onay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `abone`
--
ALTER TABLE `abone`
  ADD PRIMARY KEY (`abone_id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Tablo için indeksler `ekip`
--
ALTER TABLE `ekip`
  ADD PRIMARY KEY (`ekip_id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`icerik_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu_listesi`
--
ALTER TABLE `menu_listesi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `abone`
--
ALTER TABLE `abone`
  MODIFY `abone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `ekip`
--
ALTER TABLE `ekip`
  MODIFY `ekip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `icerik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu_listesi`
--
ALTER TABLE `menu_listesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
