-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 05:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobile_app.jpg', 'Now, one book can help you master mobile app development with both market-leading platforms: Apple\'s iOS and Google\'s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou\'ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you\'re new to iOS, you\'ll also find an easy, practical introduction to Objective-C, Apple\'s native language.', '20.00', 6),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', '20.00', 2),
('978-0070635463', 'UNIX : Concepts and Applications | 4th Edition', 'Sumitabha Das', 'sumitabha das.jpg', 'This book is both an exhaustive reference and an outstanding guide for the beginner. Real-world examples make new concepts easy to grasp while the practice exercises take comprehension to a new level by forcing the user to think. An unparalleled reference apparatus, this is a book that users will reach for now and for years to come.', '450.00', 10),
('978-0072465631', 'Database Management Systems, 3rd Edition', 'Ramakrishnan and Gehrke', 'book3ed.jpg', 'This very current new edition also features pedagogical improvements (e.g., chapter objectives, review questions), and updated and extended  discussions of data mining, database tuning wizards, decision support, information retrieval, Internet security, object-oriented databases, transaction processing, and XML data management. Throughout, the coverage has been revised and expanded to reflect the new SQL:1999 standard, including extensions that support multimedia data, object-relational databases, OLAP,  recursive queries, spatial data, and SQL-J. The flexible organization and up-to-date discussion of advanced topics also makes the book ideal for use in a two-course sequence.', '550.00', 10),
('978-0132126953', 'Computer Networks, 5th Edition', 'Andrew S Tanenbaum', '0132126958.jpg', 'Appropriate for Computer Networking or Introduction to Networking courses at both the undergraduate and graduate level in Computer Science, Electrical Engineering, CIS, MIS, and Business Departments.\r\n\r\nTanenbaum takes a structured approach to explaining how networks work from the inside out. He starts with an explanation of the physical layer of networking, computer hardware and transmission systems; then works his way up to network applications. Tanenbaum\'s in-depth application coverage includes email; the domain name system; the World Wide Web (both client- and server-side); and multimedia (including voice over IP, Internet radio video on demand, video conferencing, and streaming media. Each chapter follows a consistent approach: Tanenbaum presents key principles, then illustrates them utilizing real-world example networks that run through the entire book—the Internet, and wireless networks, including Wireless LANs, broadband wireless and Bluetooth. The Fifth Edition includes a chapter devoted exclusively to network security. The textbook is supplemented by a Solutions Manual, as well as a Website containing PowerPoint slides, art in various forms, and other tools for instruction, including a protocol simulator whereby students can develop and test their own network protocols.', '440.00', 8),
('978-0132288064', 'Automata, Computability and Complexity: Theory and Applicati', 'Elaine Rich', 'elaine rich.jpg', 'For upper level courses on Automata.  \r\n\r\nCombining classic theory with unique applications, this crisp narrative is supported by abundant examples and clarifies key concepts by introducing important uses of techniques in real systems. Broad-ranging coverage allows instructors to easily customize course material to fit their unique requirements.', '400.00', 8),
('978-0132856201', 'Computer Networking A Top-Down Approach, 6th Edition', 'James F Kurose and Keith W Ross', '0132856204.jpg', 'Computer Networking continues with an early emphasis on application-layer paradigms and application programming interfaces (the top layer), encouraging a hands-on experience with protocols and networking concepts, before working down the protocol stack to more abstract layers.\r\nThis book has become the dominant book for this course because of the authors’ reputations, the precision of explanation, the quality of the art program, and the value of their own supplements.', '450.00', 8),
('978-0133814743', 'Computer And Communication Networks, 2nd Edition', 'Nader F Mir', '0133814742.jpg', 'Computer and Communication Networks, Second Edition first establishes a solid foundation in basic networking concepts, TCP/IP schemes, wireless networking, Internet applications, and network security. Next, Mir delves into the mathematical analysis of networks, as well as advanced networking protocols. This fully-updated text thoroughly explains the modern technologies of networking and communications among computers, servers, routers, and other smart communication devices, helping readers design cost-effective networks that meet emerging requirements. Offering uniquely balanced coverage of all key basic and advanced topics, it teaches through extensive, up-to-date case studies, 400 examples and exercises, and 250+ illustrative figures. Nader F. Mir provides the practical, scenario-based information many networking books lack, and offers a uniquely effective blend of theory and implementation. Drawing on extensive experience in the field, he introduces a wide spectrum of contemporary applications, and covers several key topics that competitive texts skim past or ignore completely, such as Software-Defined Networking (SDN) and Information-Centric Networking.', '470.00', 9),
('978-0133970777', 'Fundamentals of Database Systems, 7th Edition', 'Ramez Elmasri and Shamkant B. Navathe', 'cover1.jpg', 'This book introduces the fundamental concepts necessary for designing, using, and implementing database systems and database applications. Our presentation stresses the fundamentals of database modeling and design, the languages and models provided by the database management systems, and database system implementation techniques.', '600.00', 8),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', '20.00', 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', '20.00', 1),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', '20.00', 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', '20.00', 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', '20.00', 1),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '20.00', 4),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', '	Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won\'t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', '20.00', 4),
('978-1-49192-706-9', 'C# 6.0 in a Nutshell, 6th Edition', 'Joseph Albahari, Ben Albahari', 'c_sharp_6.jpg', 'When you have questions about C# 6.0 or the .NET CLR and its core Framework assemblies, this bestselling guide has the answers you need. C# has become a language of unusual flexibility and breadth since its premiere in 2000, but this continual growth means there\'s still much more to learn.\r\n\r\nOrganized around concepts and use cases, this thoroughly updated sixth edition provides intermediate and advanced programmers with a concise map of C# and .NET knowledge. Dive in and discover why this Nutshell guide is considered the definitive reference on C#.', '20.00', 3),
('978-1259064753', 'Data Communications and Networking, 5th Edition, Indian Edit', 'Behrouz A Forouzan', '9781259064753-1000x1000h.jpeg', 'Data Communications and Networking is designed to help students understand the basics of data communications and networking, and the protocols used in the Internet in particular by using the protocol layering of the Internet and TCP/IP protocol suite. Technologies related to data communication and networking may be the fastest growing in today\'s culture. The appearance of some new social networking applications is a testimony to this claim. In this Internet-oriented society, specialists need to be trained to run and manage the Internet, part of the Internet, or an organization\'s network that is connected to the Internet. As both the number and types of students are increasing, it is essential to have a textbook that provides coverage of the latest advances, while presenting the material in a way that is accessible to students with little or no background in the field.\r\nUsing a bottom-up approach, Data Communications and Networking presents this highly technical subject matter without relying on complex formulas by using a strong pedagogical approach supported by more than 830 figures. Now in its Fifth Edition, this textbook brings the beginning student right to the forefront of the latest advances in the field, while presenting the fundamentals in a clear, straightforward manner. Students will find better coverage, improved figures and better explanations on cutting-edge material. The \"bottom-up\" approach allows instructors to cover the material in one course, rather than having separate courses on data communications and networking.', '500.00', 10),
('978-1593275990', 'Automate The Boring Stuff With Python', 'Al Sweigart', 'automate phython.jpg', 'Automate the boring stuff with Python is an awesome book for learning how to program in this amazing language. After reading this book you\'ll realise how many of the things you are tediously doing in your day to day interactions with computer can be sped up with simple Python scripts.', '350.00', 11),
('978-9352134755', 'Think Python , 2nd Edition', 'Allen B. Downey', 'think phython.jpg', 'Think Python is an introduction to Python programming for beginners. It starts with basic concepts of programming, and is carefully designed to define all terms when they are first used and to develop each new concept in a logical progression.', '525.00', 12),
('9788131509869', 'Computer Networks', 'Mayank Dave', '9788131509869.jpg', 'Computer Networks covers the curriculum requirements for a single-semester course on computer networks. Primarily intended to be used as a textbook for undergraduate students of computer science and engineering, information technology, and electronics and communication engineering, the book will also be useful to students pursuing MCA. The book provides a comprehensive introduction to computer networks, including a history of computer networks, network architecture and models, and switching techniques. It goes on to cover the various principles, standards, and protocols developed for 1.Communication over different types of communication media 2.Error control 3.Reliable end-to-end transmission 4.Local and wide area networks 5.Interconnection to different networks 6.Routing 7.Network security 8.Network management Written in an easy-to-underst and manner, the book discusses all the relevant topics comprehensively with practical examples. The text is rich in illustrations and diagrams to clarify concepts. It includes end-of-chapter exercises to test the students\' understanding of the concepts discussed', '425.00', 7),
('? 978-0321637734', 'Advanced Programming in the UNIX Environment, 3rd Edition', 'W. Richard Stevens & Stephen A. Rago', 'B00DB3G8KY.01._SCLZZZZZZZ_SX500_.jpg', 'This edition covers more than seventy new interfaces, including POSIX asynchronous I/O, spin locks, barriers, and POSIX semaphores. Most obsolete interfaces have been removed, except for a few that are ubiquitous. Nearly all examples have been tested on four modern platforms: Solaris 10, Mac OS X version 10.6.8 (Darwin 10.8.0), FreeBSD 8.0, and Ubuntu version 12.04 (based on Linux 3.2).', '4000.00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(4, 'Ajay Singh', 'Jammu', 'Jammu', '182144', 'India'),
(5, 'rajputajay', 'Jammu', 'Jammu', '182144', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(6, 4, '3195.00', '2022-01-16 11:33:07', 'Ajay Singh', 'Jammu', 'Jammu', '182144', 'India'),
(7, 5, '1900.00', '2022-02-04 04:18:45', 'rajputajay', 'Jammu', 'Jammu', '182144', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(7, '? 978-0321637734', '4000.00', 0),
(7, '978-0070635463', '450.00', 3),
(7, '978-0072465631', '550.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley'),
(7, 'Cengage Learning'),
(8, 'Pearson'),
(9, 'Prentice Hall'),
(10, 'McGraw Hill Education'),
(11, 'No Starch Press'),
(12, 'Shroff/O\'Reilly'),
(13, 'Addison-Wesley');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
