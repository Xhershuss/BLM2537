-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Oca 2025, 14:09:25
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `contact_form`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `name` varchar(50) CHARACTER SET ucs2 COLLATE ucs2_turkish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET ucs2 COLLATE ucs2_turkish_ci NOT NULL,
  `description` text CHARACTER SET ucs2 COLLATE ucs2_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`name`, `email`, `description`) VALUES
('Xhershus', 'eren_ozunlu@hotmail.com', 'Bu harika yemek sitesi gerçekten çok etkileyici! Zengin içerik ve kullanımı kolay arayüzü sayesinde her bir tarife kolayca ulaşmak mümkün. Ünlü şeflerin imza yemeklerini detaylı bir şekilde sunmanız, her yemeği bir sanat eseri gibi hissettiriyor. Görseller ve açıklamalar ise yemeklerin nasıl hazırlanacağı konusunda çok faydalı. Ayrıca, farklı kategorilerdeki yemekleri filtreleme özelliği, tarif arayışını daha da keyifli hale getiriyor. Her bir detayda mutfak kültürüne olan sevginiz ve saygınız net bir şekilde hissediliyor. Gerçekten harika bir iş çıkarmışsınız, bu siteyi sıkça ziyaret edeceğim!'),
('Yggdrasill', 'yggdrasil@hotmail.com', 'Bu yemek sitesi gerçekten bir başyapıt! Tarifler o kadar detaylı ve açıklayıcı ki, her biri adeta bir yemek dersi gibi. Ünlü şeflerin tariflerine kolayca ulaşmak ve onların mutfak sırlarını öğrenmek harika bir deneyim. Görseller mükemmel, her yemeği yapmaya başlamak için sabırsızlanıyorum. Ayrıca, yemek kategorileri arasındaki geçiş çok pratik, aradığım tarifleri hızlıca bulabiliyorum. Mutfak teknikleri ve şef biyografileri gibi ekstra bilgiler de siteye ayrı bir değer katıyor. Böyle kaliteli bir platforma sahip olduğunuz için tebrik ederim, kesinlikle sık ziyaret edeceğim!'),
('yemekTutkunu45', 'yemekTutkunu45@gmail.com', 'Bu yemek sitesi tam anlamıyla bir ilham kaynağı! Tariflerinizin detayları ve zengin içeriği sayesinde yemek yapmak bir zevke dönüştü. Ünlü şeflerin tariflerine kolayca erişebilmek ve onların mutfak sırlarını öğrenmek gerçekten çok değerli. Siteye her girdiğimde farklı bir tarif denemek için heyecanlanıyorum. Ayrıca, yemek kategorilerinin çeşitliliği ve arama filtresi ile istediğim tarife hızla ulaşmak oldukça kolay. Görsellerin kalitesi ise bir başka artı, her yemeği yapmaya başlamadan önce gözlerim doygun oluyor. Gerçekten harika bir iş çıkarmışsınız, her açıdan mükemmel bir deneyim!'),
('huseyin43', 'huseyin43@gmail.com', '   Günümüzde gastronomi çok ilgi çekmeye başladı. Yeterinden fazla kaynak olmasına rağmen güvenirliliği tartışılma noktasına gelmiştir. Özellikle yaratıcı şeflerin tüketicilerin yorumlarını önemsediğini biliyoruz. Bu site ile gastronomiye katkı sunan şefleri yakından takip edeceğiz. Emeği geçenleri tebrik ediyorum.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
