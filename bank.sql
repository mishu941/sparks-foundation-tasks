SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Mishu Jain', 'Seema Jain', 500, '2021-08-12 11:02:27'),
(2, 'Seema jain', 'Khushi Jain', 600, '2021-08-12 11:10:31');
CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1089, 'Mishu Jain', 'mishu941@gmail.com', 46600),
(2654, 'Chirag Jain', 'chirag@gmail.com', 30620),
(3624, 'Gaurav Sharma', 'gaurav@gmail.com', 40000),
(4542, 'Khushi Jain', 'khushi@gmail.com', 48800),
(5345, 'Shubham Sharma', 'shubham@gmail.com', 35000),
(5465, 'Harshit Jain', 'harshit123@gmail.com', 49500),
(6554, 'Manish Saini', 'manish@gmail.com', 40000),
(7875, 'Charu Sharma', 'charu@gmail.com', 49480),
(8877, 'Megha Jain', 'megha@gmail.com', 40000),
(9245, 'Seema Jain', 'seema@gmail.com', 30000);
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;