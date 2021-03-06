-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 03 2016 г., 20:01
-- Версия сервера: 5.6.21
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `proxi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `getdata`
--

DROP TABLE IF EXISTS `getdata`;
CREATE TABLE IF NOT EXISTS `getdata` (
`id` int(11) NOT NULL,
  `login` varchar(64) NOT NULL,
  `date_ins` date NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `date_birth` date NOT NULL,
  `fam` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `patron` varchar(64) NOT NULL,
  `response` longtext NOT NULL,
  `response_date` datetime NOT NULL,
  `request_ok` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `getdata`
--

INSERT INTO `getdata` (`id`, `login`, `date_ins`, `area`, `date_birth`, `fam`, `name`, `patron`, `response`, `response_date`, `request_ok`) VALUES
(1, '', '0000-00-00', 1, '0000-00-00', 'Smith', 'John', '', '', '0000-00-00 00:00:00', 0),
(2, 'wijef', '0000-00-00', 0, '0000-00-00', 'Петров', 'Юрьевич', 'Василий', '', '0000-00-00 00:00:00', 0),
(3, 'jpiofjw', '0000-00-00', 0, '1969-02-03', 'Светлов', 'Петрович', 'Тарас', '', '0000-00-00 00:00:00', 0),
(4, 'ppofjw', '0000-00-00', 0, '1973-04-03', 'Круглов', 'Васильевич', 'Егор', '', '0000-00-00 00:00:00', 0),
(5, 'pojpoj', '0000-00-00', 0, '1982-06-03', 'Нестеров', 'Петрович', 'Павел', '', '0000-00-00 00:00:00', 0),
(6, 'pokpoj', '0000-00-00', 0, '1954-03-05', 'Климов', 'Иванович', 'Иван', '', '0000-00-00 00:00:00', 0),
(7, '', '0000-00-00', 0, '1956-01-03', 'Гибсон', 'Мел', '', '', '0000-00-00 00:00:00', 0),
(8, '', '0000-00-00', 0, '1965-01-04', 'Ормонд', 'Джулия', '', '', '0000-00-00 00:00:00', 0),
(9, '', '0000-00-00', 0, '1938-01-06', 'Челентано', 'Адриано', '', '', '0000-00-00 00:00:00', 0),
(10, '', '0000-00-00', 0, '1964-01-07', 'Кейдж', 'Николас', '', '', '0000-00-00 00:00:00', 0),
(11, '', '0000-00-00', 0, '1947-01-08', 'Боуи', 'Дэвид', '', '', '0000-00-00 00:00:00', 0),
(12, '', '0000-00-00', 0, '1935-01-08', 'Прэсли', 'Элвис', '', '', '0000-00-00 00:00:00', 0),
(13, '', '0000-00-00', 0, '1883-01-10', 'Николаевич', 'Алексей', '', '', '0000-00-00 00:00:00', 0),
(14, '', '0000-00-00', 0, '1948-01-14', 'Харламов', 'Валерий', '', '', '0000-00-00 00:00:00', 0),
(15, '', '0000-00-00', 0, '1962-01-17', 'Кэрри', 'Джим', '', '', '0000-00-00 00:00:00', 0),
(16, '', '0000-00-00', 0, '1955-01-18', 'Костнер', 'Кевин', '', '', '0000-00-00 00:00:00', 0),
(17, '', '0000-00-00', 0, '1938-01-25', 'Высоцкий', 'Владимир', '', '', '0000-00-00 00:00:00', 0),
(18, '', '0000-00-00', 0, '1961-01-24', 'Кински', 'Настасья', '', '', '0000-00-00 00:00:00', 0),
(19, '', '0000-00-00', 0, '1964-01-27', 'Фонда', 'Бриджит', '', '', '0000-00-00 00:00:00', 0),
(20, '', '0000-00-00', 0, '1980-01-27', 'Сафин', 'Марат', '', '', '0000-00-00 00:00:00', 0),
(21, '', '0000-00-00', 0, '1756-01-27', 'Амадей', 'Вольфанг', '', '', '0000-00-00 00:00:00', 0),
(22, '', '0000-00-00', 0, '1860-01-29', 'Павлович', 'Антон', '', '', '0000-00-00 00:00:00', 0),
(23, '', '0000-00-00', 0, '1981-01-31', 'Началова', 'Юлия', '', '', '0000-00-00 00:00:00', 0),
(24, '', '0000-00-00', 0, '1965-02-01', 'Ли', 'Брендон', '', '', '0000-00-00 00:00:00', 0),
(25, '', '0000-00-00', 0, '1931-02-01', 'Николаевич', 'Борис', '', '', '0000-00-00 00:00:00', 0),
(26, '', '0000-00-00', 0, '1981-02-02', 'Лобков', 'Дмитрий', '', '', '0000-00-00 00:00:00', 0),
(27, '', '0000-00-00', 0, '1945-02-05', 'Рэмплинг', 'Шарлотта', '', '', '0000-00-00 00:00:00', 0),
(28, '', '0000-00-00', 0, '1812-02-07', 'Диккенс', 'Чарльз', '', '', '0000-00-00 00:00:00', 0),
(29, '', '0000-00-00', 0, '1834-02-08', 'Менделеев', 'Дмитрий', '', '', '0000-00-00 00:00:00', 0),
(30, '', '0000-00-00', 0, '1969-02-11', 'Энистон', 'Дженнифер', '', '', '0000-00-00 00:00:00', 0),
(31, '', '0000-00-00', 0, '1926-02-11', 'Нильсон', 'Лесли', '', '', '0000-00-00 00:00:00', 0),
(32, '', '0000-00-00', 0, '1944-02-14', 'Паркер', 'Алан', '', '', '0000-00-00 00:00:00', 0),
(33, '', '0000-00-00', 0, '1564-02-15', 'Галилей', 'Галилео', '', '', '0000-00-00 00:00:00', 0),
(34, '', '0000-00-00', 0, '1906-02-17', 'Барто', 'Агния', '', '', '0000-00-00 00:00:00', 0),
(35, '', '0000-00-00', 0, '1974-02-18', 'Кафельников', 'Евгений', '', '', '0000-00-00 00:00:00', 0),
(36, '', '0000-00-00', 0, '1964-02-18', 'Диллон', 'Мэтт', '', '', '0000-00-00 00:00:00', 0),
(37, '', '0000-00-00', 0, '1473-02-19', 'Коперник', 'Николай', '', '', '0000-00-00 00:00:00', 0),
(38, '', '0000-00-00', 0, '1945-02-19', 'Антонов', 'Юрий', '', '', '0000-00-00 00:00:00', 0),
(39, '', '0000-00-00', 0, '0000-00-00', 'Расторгуев', 'Николай', '', '', '0000-00-00 00:00:00', 0),
(40, '', '0000-00-00', 0, '1788-02-22', 'Шопенгауэр', 'Артур', '', '', '0000-00-00 00:00:00', 0),
(41, '', '0000-00-00', 0, '1975-02-22', 'Бэрримор', 'Дрю', '', '', '0000-00-00 00:00:00', 0),
(42, '', '0000-00-00', 0, '1944-02-23', 'Янковский', 'Олег', '', '', '0000-00-00 00:00:00', 0),
(43, '', '0000-00-00', 0, '1802-02-26', 'Мари', 'Виктор', '', '', '0000-00-00 00:00:00', 0),
(44, '', '0000-00-00', 0, '1902-02-26', 'Старостин', 'Николай', '', '', '0000-00-00 00:00:00', 0),
(45, '', '0000-00-00', 0, '1932-02-27', 'Тэйлор', 'Элизабет', '', '', '0000-00-00 00:00:00', 0),
(46, '', '0000-00-00', 0, '1863-03-01', 'Сологуб', 'Федор', '', '', '0000-00-00 00:00:00', 0),
(47, '', '0000-00-00', 0, '1931-03-02', 'Горбачев', 'Михаил', '', '', '0000-00-00 00:00:00', 0),
(48, '', '0000-00-00', 0, '1678-03-04', 'Вивальди', 'Антонио', '', '', '0000-00-00 00:00:00', 0),
(49, '', '0000-00-00', 0, '1955-03-05', 'Мути', 'Орнелла', '', '', '0000-00-00 00:00:00', 0),
(50, '', '0000-00-00', 0, '1928-03-06', 'Гарсиа', 'Габриэль', '', '', '0000-00-00 00:00:00', 0),
(51, '', '0000-00-00', 0, '1475-03-06', 'Буонарроти', 'Микеланджело', '', '', '0000-00-00 00:00:00', 0),
(52, '', '0000-00-00', 0, '1964-03-09', 'Бинош', 'Жульет', '', '', '0000-00-00 00:00:00', 0),
(53, '', '0000-00-00', 0, '1934-03-09', 'Гагарин', 'Юрий', '', '', '0000-00-00 00:00:00', 0),
(54, '', '0000-00-00', 0, '1958-03-10', 'Стоун', 'Шерон', '', '', '0000-00-00 00:00:00', 0),
(55, '', '0000-00-00', 0, '1737-03-12', 'Баженов', 'Василий', '', '', '0000-00-00 00:00:00', 0),
(56, '', '0000-00-00', 0, '1951-03-13', 'Алферова', 'Ирина', '', '', '0000-00-00 00:00:00', 0),
(57, '', '0000-00-00', 0, '1913-03-13', 'Михалков', 'Сергей', '', '', '0000-00-00 00:00:00', 0),
(58, '', '0000-00-00', 0, '1879-03-14', 'Эйнштейн', 'Альберт', '', '', '0000-00-00 00:00:00', 0),
(59, '', '0000-00-00', 0, '1937-03-15', 'Распутин', 'Валентин', '', '', '0000-00-00 00:00:00', 0),
(60, '', '0000-00-00', 0, '1859-03-16', 'Попов', 'Александр', '', '', '0000-00-00 00:00:00', 0),
(61, '', '0000-00-00', 0, '1941-03-16', 'Бертолуччи', 'Бернардо', '', '', '0000-00-00 00:00:00', 0),
(62, '', '0000-00-00', 0, '1951-03-17', 'Рассел', 'Курт', '', '', '0000-00-00 00:00:00', 0),
(63, '', '0000-00-00', 0, '1856-03-17', 'Врубель', 'Михаил', '', '', '0000-00-00 00:00:00', 0),
(64, '', '0000-00-00', 0, '1955-03-19', 'Уиллис', 'Брюс', '', '', '0000-00-00 00:00:00', 0),
(65, '', '0000-00-00', 0, '1915-03-20', 'Рихтер', 'Святослав', '', '', '0000-00-00 00:00:00', 0),
(66, '', '0000-00-00', 0, '1958-03-21', 'Олдмен', 'Гэри', '', '', '0000-00-00 00:00:00', 0),
(67, '', '0000-00-00', 0, '1865-03-21', 'Себастьян', 'Иоганн', '', '', '0000-00-00 00:00:00', 0),
(68, '', '0000-00-00', 0, '1839-03-21', 'Мусоргский', 'Модест', '', '', '0000-00-00 00:00:00', 0),
(69, '', '0000-00-00', 0, '1946-03-21', 'Далтон', 'Тимоти', '', '', '0000-00-00 00:00:00', 0),
(70, '', '0000-00-00', 0, '1599-03-22', 'Ван', 'Антонис', '', '', '0000-00-00 00:00:00', 0),
(71, '', '0000-00-00', 0, '1985-03-22', 'Найтли', 'Кейра', '', '', '0000-00-00 00:00:00', 0),
(72, '', '0000-00-00', 0, '1947-03-25', 'Джон', 'Элтон', '', '', '0000-00-00 00:00:00', 0),
(73, '', '0000-00-00', 0, '1944-03-26', 'Росс', 'Дайана', '', '', '0000-00-00 00:00:00', 0),
(74, '', '0000-00-00', 0, '1963-03-27', 'Тарантино', 'Квентин', '', '', '0000-00-00 00:00:00', 0),
(75, '', '0000-00-00', 0, '1483-03-28', 'Санти', 'Рафаэль', '', '', '0000-00-00 00:00:00', 0),
(76, '', '0000-00-00', 0, '1957-03-29', 'Ламберт', 'Кристофер', '', '', '0000-00-00 00:00:00', 0),
(77, '', '0000-00-00', 0, '1853-03-30', 'Ван', 'Винсент', '', '', '0000-00-00 00:00:00', 0),
(78, '', '0000-00-00', 0, '1938-03-31', 'Збруев', 'Александр', '', '', '0000-00-00 00:00:00', 0),
(79, '', '0000-00-00', 0, '1943-03-31', 'Уокен', 'Кристофер', '', '', '0000-00-00 00:00:00', 0),
(80, '', '0000-00-00', 0, '1873-04-01', 'Рахманинов', 'Сергей', '', '', '0000-00-00 00:00:00', 0),
(81, '', '0000-00-00', 0, '1809-04-01', 'Васильевич', 'Николай', '', '', '0000-00-00 00:00:00', 0),
(82, '', '0000-00-00', 0, '1805-04-02', 'Христиан', 'Ганс', '', '', '0000-00-00 00:00:00', 0),
(83, '', '0000-00-00', 0, '1958-04-03', 'Болдуин', 'Алек', '', '', '0000-00-00 00:00:00', 0),
(84, '', '0000-00-00', 0, '1961-04-03', 'Мерфи', 'Эдди', '', '', '0000-00-00 00:00:00', 0),
(85, '', '0000-00-00', 0, '1924-04-03', 'Брандо', 'Марлон', '', '', '0000-00-00 00:00:00', 0),
(86, '', '0000-00-00', 0, '1920-04-05', 'Хейли', 'Артур', '', '', '0000-00-00 00:00:00', 0),
(87, '', '0000-00-00', 0, '1836-04-06', 'Склифосковский', 'Николай', '', '', '0000-00-00 00:00:00', 0),
(88, '', '0000-00-00', 0, '1954-04-07', 'Чан', 'Джекки', '', '', '0000-00-00 00:00:00', 0),
(89, '', '0000-00-00', 0, '1964-04-07', 'Кроу', 'Рассел', '', '', '0000-00-00 00:00:00', 0),
(90, '', '0000-00-00', 0, '1939-04-07', 'Форд', 'Фрэнсис', '', '', '0000-00-00 00:00:00', 0),
(91, '', '0000-00-00', 0, '1968-04-08', 'Аркетт', 'Патрисия', '', '', '0000-00-00 00:00:00', 0),
(92, '', '0000-00-00', 0, '1963-04-13', 'Каспаров', 'Гарри', '', '', '0000-00-00 00:00:00', 0),
(93, '', '0000-00-00', 0, '1862-04-14', 'Столыпин', 'Петр', '', '', '0000-00-00 00:00:00', 0),
(94, '', '0000-00-00', 0, '1949-04-15', 'Пугачева', 'Алла', '', '', '0000-00-00 00:00:00', 0),
(95, '', '0000-00-00', 0, '1983-04-15', 'Ковальчук', 'Илья', '', '', '0000-00-00 00:00:00', 0),
(96, '', '0000-00-00', 0, '1452-04-15', 'Да', 'Леонардо', '', '', '0000-00-00 00:00:00', 0),
(97, '', '0000-00-00', 0, '1939-04-15', 'Кардинале', 'Клаудиа', '', '', '0000-00-00 00:00:00', 0),
(98, '', '0000-00-00', 0, '1889-04-16', 'Чаплин', 'Чарли', '', '', '0000-00-00 00:00:00', 0),
(99, '', '0000-00-00', 0, '1954-04-16', 'Баркин', 'Эллен', '', '', '0000-00-00 00:00:00', 0),
(100, '', '0000-00-00', 0, '1959-04-17', 'Бин', 'Шон', '', '', '0000-00-00 00:00:00', 0),
(101, '', '0000-00-00', 0, '1947-04-18', 'Вудс', 'Джеймс', '', '', '0000-00-00 00:00:00', 0),
(102, '', '0000-00-00', 0, '1956-04-18', 'Робертс', 'Эрик', '', '', '0000-00-00 00:00:00', 0),
(103, '', '0000-00-00', 0, '1968-04-19', 'Джадд', 'Эшли', '', '', '0000-00-00 00:00:00', 0),
(104, '', '0000-00-00', 0, '1949-04-20', 'Мальцев', 'Александр', '', '', '0000-00-00 00:00:00', 0),
(105, '', '0000-00-00', 0, '1949-04-20', 'Лэнг', 'Джессика', '', '', '0000-00-00 00:00:00', 0),
(106, '', '0000-00-00', 0, '1958-04-21', 'Макдауэлл', 'Энди', '', '', '0000-00-00 00:00:00', 0),
(107, '', '0000-00-00', 0, '1870-04-22', 'Ленин', 'Владимир', '', '', '0000-00-00 00:00:00', 0),
(108, '', '0000-00-00', 0, '1937-04-22', 'Николсон', 'Джек', '', '', '0000-00-00 00:00:00', 0),
(109, '', '0000-00-00', 0, '1564-04-23', 'Шекспир', 'Уильям', '', '', '0000-00-00 00:00:00', 0),
(110, '', '0000-00-00', 0, '1891-04-23', 'Прокофьев', 'Сергей', '', '', '0000-00-00 00:00:00', 0),
(111, '', '0000-00-00', 0, '1942-04-24', 'Стрейзенд', 'Барбара', '', '', '0000-00-00 00:00:00', 0),
(112, '', '0000-00-00', 0, '1899-04-24', 'Набоков', 'Владимир', '', '', '0000-00-00 00:00:00', 0),
(113, '', '0000-00-00', 0, '1957-04-24', 'Пфайфер', 'Мишель', '', '', '0000-00-00 00:00:00', 0),
(114, '', '0000-00-00', 0, '1940-04-25', 'Пачино', 'Аль', '', '', '0000-00-00 00:00:00', 0),
(115, '', '0000-00-00', 0, '1952-04-25', 'Третьяк', 'Владислав', '', '', '0000-00-00 00:00:00', 0),
(116, '', '0000-00-00', 0, '1969-04-25', 'Зельвегер', 'Рене', '', '', '0000-00-00 00:00:00', 0),
(117, '', '0000-00-00', 0, '1967-04-28', 'Вюрер', 'Кэри', '', '', '0000-00-00 00:00:00', 0),
(118, '', '0000-00-00', 0, '1974-04-28', 'Крус', 'Пенелопа', '', '', '0000-00-00 00:00:00', 0),
(119, '', '0000-00-00', 0, '1967-04-30', 'Киркоров', 'Филипп', '', '', '0000-00-00 00:00:00', 0),
(120, '', '0000-00-00', 0, '1818-05-05', 'Маркс', 'Карл', '', '', '0000-00-00 00:00:00', 0),
(121, '', '0000-00-00', 0, '1856-05-06', 'Фрейд', 'Зигмунд', '', '', '0000-00-00 00:00:00', 0),
(122, '', '0000-00-00', 0, '1833-05-07', 'Брамс', 'Иоганнес', '', '', '0000-00-00 00:00:00', 0),
(123, '', '0000-00-00', 0, '1840-05-07', 'Ильич', 'Петр', '', '', '0000-00-00 00:00:00', 0),
(124, '', '0000-00-00', 0, '1961-05-08', 'Клуни', 'Джордж', '', '', '0000-00-00 00:00:00', 0),
(125, '', '0000-00-00', 0, '1960-05-09', 'Фиорентино', 'Линда', '', '', '0000-00-00 00:00:00', 0),
(126, '', '0000-00-00', 0, '1938-05-10', 'Влади', 'Марина', '', '', '0000-00-00 00:00:00', 0),
(127, '', '0000-00-00', 0, '1864-05-10', 'Лилиан', 'Этель', '', '', '0000-00-00 00:00:00', 0),
(128, '', '0000-00-00', 0, '1840-05-13', 'Доде', 'Альфонс', '', '', '0000-00-00 00:00:00', 0),
(129, '', '0000-00-00', 0, '1969-05-14', 'Бланшетт', 'Кейт', '', '', '0000-00-00 00:00:00', 0),
(130, '', '0000-00-00', 0, '1961-05-14', 'Рот', 'Тим', '', '', '0000-00-00 00:00:00', 0),
(131, '', '0000-00-00', 0, '1891-05-15', 'Булгаков', 'Михаил', '', '', '0000-00-00 00:00:00', 0),
(132, '', '0000-00-00', 0, '1966-05-16', 'Джексон', 'Джанет', '', '', '0000-00-00 00:00:00', 0),
(133, '', '0000-00-00', 0, '1953-05-16', 'Броснан', 'Пирс', '', '', '0000-00-00 00:00:00', 0),
(134, '', '0000-00-00', 0, '1887-05-16', 'Северянин', 'Игорь', '', '', '0000-00-00 00:00:00', 0),
(135, '', '0000-00-00', 0, '1920-05-18', 'Павел', 'Иоанн', '', '', '0000-00-00 00:00:00', 0),
(136, '', '0000-00-00', 0, '1048-05-18', 'Хайям', 'Омар', '', '', '0000-00-00 00:00:00', 0),
(137, '', '0000-00-00', 0, '1977-05-19', 'Орейро', 'Наталия', '', '', '0000-00-00 00:00:00', 0),
(138, '', '0000-00-00', 0, '1779-05-20', 'де', 'Оноре', '', '', '0000-00-00 00:00:00', 0),
(139, '', '0000-00-00', 0, '1949-05-21', 'Полищук', 'Любовь', '', '', '0000-00-00 00:00:00', 0),
(140, '', '0000-00-00', 0, '1937-05-22', 'Понедельник', 'Виктор', '', '', '0000-00-00 00:00:00', 0),
(141, '', '0000-00-00', 0, '1859-05-22', 'Конан', 'Артур', '', '', '0000-00-00 00:00:00', 0),
(142, '', '0000-00-00', 0, '1813-05-22', 'Вагнер', 'Рихард', '', '', '0000-00-00 00:00:00', 0),
(143, '', '0000-00-00', 0, '1976-05-23', 'Титов', 'Егор', '', '', '0000-00-00 00:00:00', 0),
(144, '', '0000-00-00', 0, '1941-05-24', 'Дилан', 'Боб', '', '', '0000-00-00 00:00:00', 0),
(145, '', '0000-00-00', 0, '1905-05-24', 'Шолохов', 'Михаил', '', '', '0000-00-00 00:00:00', 0),
(146, '', '0000-00-00', 0, '1963-05-25', 'Майерс', 'Майк', '', '', '0000-00-00 00:00:00', 0),
(147, '', '0000-00-00', 0, '1942-05-25', 'Калягин', 'Александр', '', '', '0000-00-00 00:00:00', 0),
(148, '', '0000-00-00', 0, '1968-05-28', 'Миноуг', 'Кайли', '', '', '0000-00-00 00:00:00', 0),
(149, '', '0000-00-00', 0, '1965-05-31', 'Шилдс', 'Брук', '', '', '0000-00-00 00:00:00', 0),
(150, '', '0000-00-00', 0, '1930-05-31', 'Иствуд', 'Клинт', '', '', '0000-00-00 00:00:00', 0),
(151, '', '0000-00-00', 0, '1950-05-31', 'Беренджер', 'Том', '', '', '0000-00-00 00:00:00', 0),
(152, '', '0000-00-00', 0, '1926-06-01', 'Монро', 'Мэрилин', '', '', '0000-00-00 00:00:00', 0),
(153, '', '0000-00-00', 0, '1804-06-01', 'Глинка', 'Михаил', '', '', '0000-00-00 00:00:00', 0),
(154, '', '0000-00-00', 0, '1982-06-03', 'Исимбаева', 'Елена', '', '', '0000-00-00 00:00:00', 0),
(155, '', '0000-00-00', 0, '1975-06-04', 'Джоли', 'Анжелина', '', '', '0000-00-00 00:00:00', 0),
(156, '', '0000-00-00', 0, '1930-06-04', 'Тихонов', 'Виктор', '', '', '0000-00-00 00:00:00', 0),
(157, '', '0000-00-00', 0, '1220-06-05', 'Невский', 'Александр', '', '', '0000-00-00 00:00:00', 0),
(158, '', '0000-00-00', 0, '1941-06-05', 'Брыльска', 'Барбара', '', '', '0000-00-00 00:00:00', 0),
(159, '', '0000-00-00', 0, '1799-06-06', 'Сергеевич', 'Александр', '', '', '0000-00-00 00:00:00', 0),
(160, '', '0000-00-00', 0, '1946-06-06', 'Сталлоне', 'Сильвестр', '', '', '0000-00-00 00:00:00', 0),
(161, '', '0000-00-00', 0, '1963-06-09', 'Депп', 'Джонни', '', '', '0000-00-00 00:00:00', 0),
(162, '', '0000-00-00', 0, '1961-06-09', 'Джи', 'Майкл', '', '', '0000-00-00 00:00:00', 0),
(163, '', '0000-00-00', 0, '1981-06-09', 'Портман', 'Натали', '', '', '0000-00-00 00:00:00', 0),
(164, '', '0000-00-00', 0, '1930-06-10', 'Глазунов', 'Илья', '', '', '0000-00-00 00:00:00', 0),
(165, '', '0000-00-00', 0, '1929-06-10', 'Зыкина', 'Людмила', '', '', '0000-00-00 00:00:00', 0),
(166, '', '0000-00-00', 0, '1965-06-10', 'Херли', 'Элизабет', '', '', '0000-00-00 00:00:00', 0),
(167, '', '0000-00-00', 0, '1910-06-11', 'Ив', 'Жак', '', '', '0000-00-00 00:00:00', 0),
(168, '', '0000-00-00', 0, '1946-06-11', 'Видов', 'Олег', '', '', '0000-00-00 00:00:00', 0),
(169, '', '0000-00-00', 0, '1928-06-14', 'Че', 'Эрнесто', '', '', '0000-00-00 00:00:00', 0),
(170, '', '0000-00-00', 0, '1954-06-15', 'Белуши', 'Джеймс', '', '', '0000-00-00 00:00:00', 0),
(171, '', '0000-00-00', 0, '1964-06-15', 'Кокс', 'Кортни', '', '', '0000-00-00 00:00:00', 0),
(172, '', '0000-00-00', 0, '1943-06-15', 'Макдауэлл', 'Мальком', '', '', '0000-00-00 00:00:00', 0),
(173, '', '0000-00-00', 0, '1963-06-15', 'Хант', 'Хэлен', '', '', '0000-00-00 00:00:00', 0),
(174, '', '0000-00-00', 0, '1952-06-18', 'Росселини', 'Изобелла', '', '', '0000-00-00 00:00:00', 0),
(175, '', '0000-00-00', 0, '1942-06-18', 'Маккартни', 'Пол', '', '', '0000-00-00 00:00:00', 0),
(176, '', '0000-00-00', 0, '1935-06-18', 'Соломин', 'Юрий', '', '', '0000-00-00 00:00:00', 0),
(177, '', '0000-00-00', 0, '1812-06-18', 'Гончаров', 'Иван', '', '', '0000-00-00 00:00:00', 0),
(178, '', '0000-00-00', 0, '1967-06-20', 'Кидман', 'Николь', '', '', '0000-00-00 00:00:00', 0),
(179, '', '0000-00-00', 0, '1910-06-21', 'Твардовский', 'Александр', '', '', '0000-00-00 00:00:00', 0),
(180, '', '0000-00-00', 0, '1947-06-22', 'Варлей', 'Наталья', '', '', '0000-00-00 00:00:00', 0),
(181, '', '0000-00-00', 0, '1898-06-22', 'Мария', 'Эрих', '', '', '0000-00-00 00:00:00', 0),
(182, '', '0000-00-00', 0, '1949-06-22', 'Стрип', 'Мэрил', '', '', '0000-00-00 00:00:00', 0),
(183, '', '0000-00-00', 0, '1889-06-23', 'Ахматова', 'Анна', '', '', '0000-00-00 00:00:00', 0),
(188, 'root', '2016-04-27', 0, '1982-05-21', 'Муромов', 'Андрей', 'Павлович', '', '0000-00-00 00:00:00', 1),
(185, 'root', '0000-00-00', 0, '1982-05-21', 'Муромов', 'Андрей', 'Павлович', '', '0000-00-00 00:00:00', 0),
(189, 'akozlov', '2016-04-27', 0, '1982-05-21', 'Муромов', 'Андрей', 'Павлович', '', '0000-00-00 00:00:00', 1),
(190, 'root', '2016-04-28', 0, '1982-05-21', 'Костин', 'Алексей', 'Миронович', '', '0000-00-00 00:00:00', 1),
(191, 'root', '2016-04-28', 0, '1982-05-21', 'Костин', 'Алексей', 'Миронович', '', '0000-00-00 00:00:00', 1),
(192, 'root', '2016-04-29', 0, '1982-05-21', 'Костин2', 'Алексей', 'Миронович', '', '0000-00-00 00:00:00', 1),
(193, 'user22', '2016-04-29', 0, '1982-05-21', 'Костин3', 'Алексей', 'Миронович', '', '0000-00-00 00:00:00', 1),
(194, 'user22', '2016-04-29', 0, '1982-05-21', 'Костин4', 'Алексей', 'Миронович', '', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `name`) VALUES
(1, 'Все регионы'),
(22, 'Алтайский край'),
(28, 'Амурская область'),
(29, 'Архангельская область'),
(30, 'Астраханская область'),
(31, 'Белгородская область'),
(32, 'Брянская область'),
(33, 'Владимирская область'),
(34, 'Волгоградская область'),
(35, 'Вологодская область'),
(36, 'Воронежская область'),
(79, 'Еврейская АО'),
(75, 'Забайкальский край'),
(37, 'Ивановская область'),
(1, 'Все регионы'),
(22, 'Алтайский край'),
(28, 'Амурская область'),
(29, 'Архангельская область'),
(30, 'Астраханская область'),
(31, 'Белгородская область'),
(32, 'Брянская область'),
(33, 'Владимирская область'),
(34, 'Волгоградская область'),
(35, 'Вологодская область'),
(36, 'Воронежская область'),
(79, 'Еврейская АО'),
(75, 'Забайкальский край'),
(37, 'Ивановская область'),
(79, 'Еврейская АО'),
(75, 'Забайкальский край'),
(37, 'Ивановская область'),
(38, 'Иркутская область'),
(7, 'Кабардино-Балкария'),
(39, 'Калининградская область'),
(40, 'Калужская область'),
(41, 'Камчатский край'),
(9, 'Карачаево-Черкесия'),
(42, 'Кемеровская область'),
(43, 'Кировская область'),
(44, 'Костромская область'),
(23, 'Краснодарский край'),
(24, 'Красноярский край'),
(45, 'Курганская область'),
(46, 'Курская область'),
(47, 'Ленинградская область'),
(48, 'Липецкая область'),
(49, 'Магаданская область'),
(77, 'Москва'),
(50, 'Московская область'),
(51, 'Мурманская область'),
(83, 'Ненецкий АО'),
(52, 'Нижегородская область'),
(53, 'Новгородская область'),
(54, 'Новосибирская область'),
(55, 'Омская область'),
(56, 'Оренбургская область'),
(57, 'Орловская область'),
(58, 'Пензенская область'),
(59, 'Пермский край'),
(25, 'Приморский край'),
(60, 'Псковская область'),
(1, 'Республика Адыгея'),
(4, 'Республика Алтай'),
(2, 'Республика Башкортостан'),
(3, 'Республика Бурятия'),
(5, 'Республика Дагестан'),
(6, 'Республика Ингушетия'),
(8, 'Республика Калмыкия'),
(10, 'Республика Карелия'),
(11, 'Республика Коми'),
(82, 'Республика Крым'),
(12, 'Республика Марий-Эл'),
(13, 'Республика Мордовия'),
(14, 'Республика Саха (Якутия)'),
(16, 'Республика Татарстан'),
(17, 'Республика Тыва'),
(19, 'Республика Хакасия'),
(61, 'Ростовская область'),
(62, 'Рязанская область'),
(82, 'Республика Крым'),
(12, 'Республика Марий-Эл'),
(13, 'Республика Мордовия'),
(14, 'Республика Саха (Якутия)'),
(16, 'Республика Татарстан'),
(17, 'Республика Тыва'),
(19, 'Республика Хакасия'),
(61, 'Ростовская область'),
(62, 'Рязанская область'),
(63, 'Самарская область'),
(78, 'Санкт-Петербург'),
(64, 'Саратовская область'),
(65, 'Сахалинская область'),
(66, 'Свердловская область'),
(92, 'Севастополь'),
(15, 'Северная Осетия-Алания'),
(67, 'Смоленская область'),
(26, 'Ставропольский край'),
(68, 'Тамбовская область'),
(69, 'Тверская область'),
(70, 'Томская область'),
(71, 'Тульская область'),
(72, 'Тюменская область'),
(18, 'Удмуртская Республика'),
(73, 'Ульяновская область'),
(99, 'Управление по исполнению особо важных исполнительных производств'),
(27, 'Хабаровский край'),
(86, 'Ханты-Мансийский АО'),
(74, 'Челябинская область'),
(20, 'Чеченская Республика'),
(21, 'Чувашская Республика'),
(87, 'Чукотский АО'),
(89, 'Ямало-Ненецкий АО'),
(76, 'Ярославская область');

-- --------------------------------------------------------

--
-- Структура таблицы `variables`
--

DROP TABLE IF EXISTS `variables`;
CREATE TABLE IF NOT EXISTS `variables` (
`id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `variables`
--

INSERT INTO `variables` (`id`, `name`, `value`) VALUES
(1, 'test', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;s:4:"name";s:4:"test";}');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `getdata`
--
ALTER TABLE `getdata`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `variables`
--
ALTER TABLE `variables`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `getdata`
--
ALTER TABLE `getdata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT для таблицы `variables`
--
ALTER TABLE `variables`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
