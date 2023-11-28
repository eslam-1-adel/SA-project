-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 10:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `category` int(11) NOT NULL,
  `Hname` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `description`, `category`, `Hname`, `price`, `date`, `time`, `image`, `link`) VALUES
(1, 'Sonic the Hedgehog 2', 'Action - Adventure - Comedy', 1, 'H1', 200, '2023-12-10', '6:9 pm', 'https://m.media-amazon.com/images/M/MV5BODRlNTY5ZjktZjE0Ni00YjZhLTk3NTItYzk0ZjYxN2QxMWEzXkEyXkFqcGdeQXVyMjMwNDgzNjc@.jpg', 'https://www.youtube.com/watch?v=G5kzUpWAusI'),
(2, 'Morbius', 'Action - Adventure - Horror', 1, 'H2', 220, '2023-12-12', '9:12 midnight', 'https://s3.amazonaws.com/static.rogerebert.com/uploads/movie/movie_poster/morbius-2022/large_morbius-poster-2022.jpeg', 'https://www.youtube.com/watch?v=oZ6iiRrz1SY'),
(3, 'Uncharted', 'Action - Adventure', 1, 'H3', 250, '2023-12-09', '6:9 pm', 'https://www.crew-united.com/Media/Images/1466/1466731/1466731.entity.jpg', 'https://www.youtube.com/watch?v=eHp3MbsCbMg'),
(4, 'The Batman', 'Action - Crime - Drama', 1, 'H2', 240, '2023-12-08', '3:6 pm', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/74xTEgt7R36Fpooo50r9T25onhq.jpg', 'https://www.youtube.com/watch?v=mqqft2x_Aa4'),
(5, 'MEG 2', 'Action - Adventure - horror', 1, 'H4', 230, '2023-12-06', '9:12 midnight', 'https://variety.com/wp-content/uploads/2023/08/MEG2-FP-0109-cr-res.jpg?w=1000&h=563&crop=1', 'https://www.youtube.com/watch?v=dG91B3hHyY4'),
(6, 'dumb and dumber', 'Comedy', 1, 'H3', 150, '2023-12-12', '9:12 midnight', 'https://images-na.ssl-images-amazon.com/images/I/91jhEwcQf2L.jpg', 'https://www.youtube.com/watch?v=l13yPhimE3o'),
(7, 'برنامج البرنامج', 'سياسي - ساخر - كوميدي', 2, 'H2', 150, '2023-12-06', '6:9 pm', 'https://static.srpcdigital.com/styles/1037xauto/public/2013/10/24/1382626748351904300.jpg', 'https://www.youtube.com/watch?v=2-FBgBFImEc'),
(8, 'صباحو تحدي ', 'تحدي - كرة قدم - كوميدي ', 2, 'H4', 140, '2023-12-08', '9:12 midnight', 'https://i.ytimg.com/vi/jQsv11lT0y8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDcc6k58RmGpi602rcnegSDH5x1oA', 'https://www.youtube.com/shorts/Qsmt1XKxFS8'),
(9, 'تحدي الثلاثين', 'منافسة - تحدي - نهائي', 2, 'H3', 170, '2023-12-07', '9:12 midnight', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/12.jpg?raw=true', 'https://www.youtube.com/shorts/icvqAvh9Zqw'),
(10, 'مسرح مصر', 'كوميدي - عائلي', 3, 'H3', 80, '2023-12-10', '6:9 pm', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/Masrah_Masr.jpg?raw=true', 'https://www.youtube.com/shorts/PLluP-BGO0Y'),
(11, 'علاء الدين', 'استعراضي - كوميدي - دراما', 3, 'H2', 300, '2023-12-15', '6:9 pm', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/1.jpg?raw=true', 'https://www.youtube.com/shorts/qKZat3r6dZQ'),
(12, 'سيدتي الجميلة', 'كوميدي - عائلي - ترفيهي', 3, 'H4', 150, '2023-12-11', '6:9 pm', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/2.jpg?raw=true', 'https://www.youtube.com/shorts/X1JgrePs3yg'),
(13, 'كازينو بديعة', 'كوميدي - استعراضي', 3, 'H1', 180, '2023-12-11', '3:6 pm', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/4.jpg?raw=true', 'https://www.youtube.com/watch?v=8769PZzWr8M'),
(14, 'انستونا', 'كوميدي - غنائي - عائلي', 3, 'H2', 200, '2023-12-09', '6:9 pm', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/5.jpg?raw=true', 'https://www.youtube.com/watch?v=vagtuQgB9Co'),
(15, 'ياما في الجراب يا حاوي', 'عائلي - استعراضي', 3, 'H3', 190, '2023-12-13', '6:9 pm', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/3.jpg?raw=true', 'https://www.youtube.com/watch?v=yj_BE_449a4'),
(16, 'AMR ELGAMAL', 'كوميدي - عائلي - ترفيهي', 4, 'H1', 140, '2023-12-13', '9:12 midnight', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/6.jpg?raw=true', 'https://www.youtube.com/watch?v=WYX-_4EbSS4'),
(17, 'MOHAMMED SALEM', 'كوميدي - مواقف', 4, 'H3', 170, '2023-12-31', '9:12 midnight', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/7.jpg?raw=true', 'https://www.youtube.com/shorts/B4taPPveY0c'),
(18, 'MOHAMMED HELMY', 'كوميدي - عائلي', 4, 'H3', 180, '2023-12-08', '9:12 midnight', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/8.jpg?raw=true', 'https://www.youtube.com/shorts/v4knYZTW8q4'),
(19, 'TAHA ELDOSOKY', 'كوميدي - مواقف', 4, 'H4', 200, '2023-12-09', '9:12 midnight', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/9.jpg?raw=true', 'https://www.youtube.com/shorts/liIjQVWolbM'),
(20, 'WALID ELMOJAZI', 'كوميدي - ترفيهي', 4, 'H3', 190, '2023-12-08', '6:9 pm', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/10.jpg?raw=true', 'https://www.youtube.com/shorts/rLRJ2ij_2z4'),
(21, 'YEHIA ELSADY', 'كوميدي - ترفيهي', 4, 'H4', 170, '2023-12-16', '6:9 pm', 'https://github.com/eslam-1-adel/SA-project/blob/main/assets/img/blog/11.jpg?raw=true', 'https://www.youtube.com/shorts/bULJSkGws3o');

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `name` varchar(50) NOT NULL,
  `numofseats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`name`, `numofseats`) VALUES
('H1', 60),
('H2', 45),
('H3', 50),
('H4', 55);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `ticket_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `movie_id`, `users_id`, `ticket_num`) VALUES
(1, 4, 2, 5),
(2, 6, 2, 3),
(3, 9, 2, 4),
(4, 14, 2, 1),
(5, 16, 2, 5),
(6, 6, 3, 6),
(7, 7, 3, 2),
(8, 15, 3, 2),
(9, 16, 3, 15),
(10, 3, 4, 3),
(11, 4, 4, 2),
(12, 9, 4, 10),
(13, 10, 4, 7),
(14, 18, 4, 1),
(15, 1, 5, 5),
(16, 2, 5, 6),
(17, 8, 5, 7),
(19, 19, 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `telephone`) VALUES
(1, 'admin', '0000', '012'),
(2, 'Islam', '1234', '011'),
(3, 'tarek', '369', '012'),
(4, 'diaa', '1478', '012'),
(5, 'ahmed', '310', '015');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
