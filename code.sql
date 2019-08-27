-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Sie 2019, 22:57
-- Wersja serwera: 10.1.39-MariaDB
-- Wersja PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `code`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 3, 'Muzyka', '2019-07-01 20:02:55'),
(3, 3, 'Sport', '2019-07-01 20:02:59'),
(4, 2, 'Food', '2019-07-01 20:21:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 28, 'Łukasz', 'lswider1@wp.pl', 'Świetny post', '2019-06-20 14:22:54'),
(2, 28, 'Damian', 'damian@gmail.com', 'Dziękuję za post', '2019-06-20 14:33:07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(7, 1, 2, 'bbbbbbbbbbbb', 'bbbbbbbbbbbb', '<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem pr&oacute;bnej książki. Pięć wiek&oacute;w p&oacute;źniej zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym r&oacute;żne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druk&oacute;w na komputerach osobistych, jak Aldus PageMaker</p>\r\n', '', '2019-05-28 20:16:07'),
(8, 1, 2, 'aaa', 'aaa', '<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem pr&oacute;bnej książki. Pięć wiek&oacute;w p&oacute;źniej zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym r&oacute;żne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druk&oacute;w na komputerach osobistych, jak Aldus PageMaker</p>\r\n', '', '2019-05-28 20:16:16'),
(9, 2, 2, 'lorem', 'lorem', 'aa Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker', '', '2019-05-28 20:19:55'),
(10, 2, 2, 'Post ckeditor', 'Post-ckeditor', '<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem pr&oacute;bnej książki. Pięć wiek&oacute;w p&oacute;źniej zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym r&oacute;żne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druk&oacute;w na komputerach osobistych, jak Aldus PageMaker</p>\r\n', '', '2019-05-30 19:44:53'),
(11, 2, 2, 'Post 5', 'Post-5', '<p>To jest piąty testowy post</p>\r\n', '', '2019-06-02 20:07:38'),
(27, 1, 2, 'Testowy postaaa', 'Testowy-postaaa', '<p>vvv</p>\r\n', 'pobrane.jpg', '2019-06-09 13:02:51'),
(28, 1, 2, 'Bez obrazka', 'Bez-obrazka', '<p>bez obrazka</p>\r\n', 'noimage.jpg', '2019-06-11 20:01:29'),
(29, 1, 2, 'Testowy post', 'Testowy-post', '<p>aaaaaaaaa</p>\r\n', 'pobrane.jpg', '2019-06-24 20:04:24'),
(30, 2, 2, 'Testowy post', 'Testowy-post', '<p>aaaaaaaaa</p>\r\n', 'pobrane.jpg', '2019-06-24 20:04:55'),
(31, 1, 3, 'testowy post karolka', 'testowy-post-karolka', '<p>testowy post karolka</p>\r\n', 'noimage.jpg', '2019-06-25 20:23:39');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(2, 'Łukasz', '27-650', 'damian@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-06-25 19:51:32'),
(3, 'Karol', '27-650', 'karol@gmail.com', 'karolek', '7346ee3ef90aa77b17e1dff82f44bb80', '2019-06-25 20:19:22');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
