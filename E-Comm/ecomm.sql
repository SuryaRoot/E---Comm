-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 03:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat name`, `cat_slug`) VALUES
(1, 'Laptops', 'Laptops'),
(2, 'Desktop PC', 'Desktop PC'),
(3, 'Tablets', 'Tablets'),
(4, 'Smart Phones', 'Smart Phones');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '2023-01-21', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', '2018-07-09', 3),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>4K video recording at 30 fps</p>\r\n\r\n<p>12-megapixel camera</p>\r\n\r\n<p>Fingerprint resistant coating</p>\r\n\r\n<p>Antireflective coating</p>\r\n\r\n<p>Face Time video calling</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '0000-00-00', 0),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '0000-00-00', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>All-new gaming desktop featuring powerful AMD Ryzen&trade; processors, graphics ready for VR, LED lighting and a meticulous design for optimal cooling.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 599.99, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2018-05-10', 1),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 799.99, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2018-05-10', 2),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2018-05-12', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2018-05-12', 2),
(28, 4, 'Samsung Note 8', '<p>See the bigger picture and communicate in a whole new way. With the Galaxy Note8 in your hand, bigger things are just waiting to happen.&nbsp;</p>\r\n\r\n<h3>The Infinity Display that&#39;s larger than life.&nbsp;</h3>\r\n\r\n<p>More screen means more space to do great things. Go big with the Galaxy Note8&#39;s 6.3&quot; screen. It&#39;s the largest ever screen on a Note device and it still fits easily in your hand.</p>\r\n\r\n<p>*Infinity Display: a near bezel-less, full-frontal glass, edge-to-edge screen.</p>\r\n\r\n<p>*Screen measured diagonally as a full rectangle without accounting for the rounded corners.</p>\r\n\r\n<p>Use the S Pen to express yourself in ways that make a difference. Draw your own emojis to show how you feel or write a message on a photo and send it as a handwritten note. Do things that matter with the S Pen.</p>\r\n\r\n<p>*Image simulated for illustration purpose only.</p>\r\n', 'samsung-note-8', 829, 'samsung-note-8.jpg', '0000-00-00', 0),
(29, 4, 'Samsung Galaxy S9+ [128 GB]', '<h2>The revolutionary camera that adapts like the human eye.&nbsp;</h2>\r\n\r\n<h3>Capture stunning pictures in bright daylight and super low light.</h3>\r\n\r\n<p>Our category-defining Dual Aperture lens adapts like the human eye. It&#39;s able to automatically switch between various lighting conditions with ease&mdash;making your photos look great whether it&#39;s bright or dark, day or night.</p>\r\n\r\n<p>*Dual Aperture supports F1.5 and F2.4 modes. Installed on the rear camera (Galaxy S9)/rear wide camera (Galaxy S9+).</p>\r\n\r\n<p>Add music. Make GIFs. Get likes</p>\r\n\r\n<p>Super Slow-mo lets you see the things you could have missed in the blink of an eye. Set the video to music or turn it into a looping GIF, and share it with a tap. Then sit back and watch the reactions roll in.</p>\r\n', 'samsung-galaxy-s9-128-gb', 889.99, 'samsung-galaxy-s9-128-gb.jpg', '2018-07-09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', 'admin', 1, 'Code', 'Projects', '', '', 'thanos1.jpg', 1, '', 'Pq2jDWIYzmkuAeM', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
