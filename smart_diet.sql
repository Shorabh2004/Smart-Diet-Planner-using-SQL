-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: smart_diet
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_levels`
--

DROP TABLE IF EXISTS `activity_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_levels` (
  `code` varchar(20) NOT NULL,
  `multiplier` decimal(4,2) NOT NULL,
  PRIMARY KEY (`code`),
  CONSTRAINT `activity_levels_chk_1` CHECK ((`multiplier` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_levels`
--

LOCK TABLES `activity_levels` WRITE;
/*!40000 ALTER TABLE `activity_levels` DISABLE KEYS */;
INSERT INTO `activity_levels` VALUES ('active',1.72),('active_1',1.72),('active_2',1.74),('active_3',1.76),('active_4',1.78),('active_5',1.80),('athlete_1',2.10),('athlete_2',2.20),('athlete_3',2.30),('athlete_4',2.40),('athlete_5',2.50),('extreme',2.30),('extremely_active_1',1.92),('extremely_active_2',1.94),('extremely_active_3',1.96),('extremely_active_4',1.98),('extremely_active_5',2.00),('light',1.37),('light_1',1.22),('light_10',1.40),('light_2',1.24),('light_3',1.26),('light_4',1.28),('light_5',1.30),('light_6',1.32),('light_7',1.34),('light_8',1.36),('light_9',1.38),('light_moderate_1',1.42),('light_moderate_2',1.44),('light_moderate_3',1.46),('light_moderate_4',1.48),('light_moderate_5',1.50),('moderate',1.55),('moderate_1',1.52),('moderate_2',1.54),('moderate_3',1.56),('moderate_4',1.58),('moderate_5',1.60),('moderate_high_1',1.62),('moderate_high_2',1.64),('moderate_high_3',1.66),('moderate_high_4',1.68),('moderate_high_5',1.70),('sedentary',1.20),('sedentary_1',1.10),('sedentary_2',1.12),('sedentary_3',1.14),('sedentary_4',1.16),('sedentary_5',1.18),('sedentary_6',1.20),('super_active',2.10),('very_active',1.90),('very_active_1',1.82),('very_active_2',1.84),('very_active_3',1.86),('very_active_4',1.88),('very_active_5',1.90);
/*!40000 ALTER TABLE `activity_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergies`
--

DROP TABLE IF EXISTS `allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergies` (
  `allergy_id` int NOT NULL AUTO_INCREMENT,
  `allergy_name` varchar(100) NOT NULL,
  PRIMARY KEY (`allergy_id`),
  UNIQUE KEY `allergy_name` (`allergy_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergies`
--

LOCK TABLES `allergies` WRITE;
/*!40000 ALTER TABLE `allergies` DISABLE KEYS */;
INSERT INTO `allergies` VALUES (3,'Gluten'),(2,'Lactose'),(1,'Nuts');
/*!40000 ALTER TABLE `allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'keto'),(5,'paleo'),(3,'standard'),(2,'vegan'),(1,'vegetarian');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conditions` (
  `condition_id` int NOT NULL AUTO_INCREMENT,
  `condition_name` varchar(100) NOT NULL,
  PRIMARY KEY (`condition_id`),
  UNIQUE KEY `condition_name` (`condition_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditions`
--

LOCK TABLES `conditions` WRITE;
/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
INSERT INTO `conditions` VALUES (1,'Diabetes'),(2,'Hypertension'),(3,'PCOS');
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet_plans`
--

DROP TABLE IF EXISTS `diet_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diet_plans` (
  `plan_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `plan_name` varchar(120) NOT NULL,
  `goal_calories_kcal` int NOT NULL,
  `created_on` date NOT NULL DEFAULT (curdate()),
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`plan_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `diet_plans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet_plans`
--

LOCK TABLES `diet_plans` WRITE;
/*!40000 ALTER TABLE `diet_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `diet_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_items`
--

DROP TABLE IF EXISTS `food_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_items` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(120) NOT NULL,
  `serving_desc` varchar(60) NOT NULL DEFAULT '1 serving',
  `serving_size_g` decimal(6,1) DEFAULT NULL,
  `calories_kcal` int NOT NULL,
  `protein_g` decimal(6,2) NOT NULL DEFAULT '0.00',
  `carbs_g` decimal(6,2) NOT NULL DEFAULT '0.00',
  `fat_g` decimal(6,2) NOT NULL DEFAULT '0.00',
  `sugar_g` decimal(6,2) NOT NULL DEFAULT '0.00',
  `sodium_mg` int NOT NULL DEFAULT '0',
  `category` enum('standard','vegetarian','vegan','keto','paleo') NOT NULL DEFAULT 'standard',
  `meal_type` enum('breakfast','lunch','dinner','snack') NOT NULL,
  `contains_nuts` tinyint(1) NOT NULL DEFAULT '0',
  `is_dairy` tinyint(1) NOT NULL DEFAULT '0',
  `is_gluten` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`food_id`),
  CONSTRAINT `food_items_chk_1` CHECK ((`calories_kcal` between 0 and 2000))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_items`
--

LOCK TABLES `food_items` WRITE;
/*!40000 ALTER TABLE `food_items` DISABLE KEYS */;
INSERT INTO `food_items` VALUES (1,'Oats Porridge','1 bowl',180.0,300,10.00,54.00,5.00,5.00,150,'vegetarian','breakfast',0,0,1),(2,'Greek Yogurt','1 cup',170.0,120,20.00,6.00,0.00,6.00,60,'standard','breakfast',0,1,0),(3,'Paneer Bhurji','150 g',150.0,350,25.00,10.00,22.00,6.00,400,'vegetarian','lunch',0,1,0),(4,'Grilled Chicken Breast','150 g',150.0,250,45.00,0.00,6.00,0.00,90,'standard','lunch',0,0,0),(5,'Mixed Nuts','30 g',30.0,180,6.00,8.00,15.00,2.00,0,'keto','snack',1,0,0),(6,'Quinoa Salad','1 bowl',200.0,320,12.00,48.00,8.00,4.00,200,'vegan','dinner',0,0,0),(7,'Tofu Stir Fry','1 plate',220.0,280,18.00,22.00,12.00,6.00,500,'vegan','dinner',0,0,0),(8,'Egg Omelette','2 eggs',120.0,190,14.00,2.00,14.00,2.00,180,'standard','breakfast',0,0,0),(9,'Peanut Butter Sandwich','1 sandwich',130.0,350,14.00,32.00,18.00,8.00,320,'standard','breakfast',1,0,1),(10,'Brown Rice','1 cup cooked',195.0,215,5.00,45.00,2.00,1.00,10,'vegan','lunch',0,0,0),(11,'Almond Milk','1 cup',240.0,60,2.00,8.00,2.00,7.00,150,'vegan','breakfast',1,0,0),(12,'Whole Wheat Bread','2 slices',56.0,140,6.00,24.00,2.00,4.00,220,'vegetarian','breakfast',0,0,1),(13,'Broccoli Soup','1 bowl',250.0,150,8.00,18.00,4.00,5.00,350,'vegan','lunch',0,0,0),(14,'Salmon Fillet','200 g',200.0,300,34.00,0.00,20.00,0.00,100,'paleo','dinner',0,0,0),(15,'Veggie Wrap','1 wrap',180.0,280,10.00,40.00,8.00,6.00,400,'vegetarian','lunch',0,1,1),(16,'Avocado Toast','1 slice',80.0,160,4.00,18.00,8.00,2.00,200,'vegan','breakfast',0,0,1),(17,'Protein Shake','1 glass',300.0,200,25.00,12.00,4.00,10.00,180,'standard','snack',0,1,0),(18,'Keto Egg Muffins','2 pieces',110.0,220,12.00,4.00,18.00,1.00,250,'keto','breakfast',0,0,0),(19,'Mushroom Risotto','1 plate',250.0,350,12.00,55.00,10.00,4.00,600,'vegetarian','dinner',0,1,1),(20,'Cauliflower Rice','1 cup',150.0,150,5.00,30.00,2.00,2.00,50,'vegan','lunch',0,0,0),(21,'Chia Pudding','1 bowl',150.0,200,6.00,20.00,8.00,6.00,100,'vegan','breakfast',1,0,0),(22,'Lentil Soup','1 bowl',200.0,220,14.00,30.00,6.00,3.00,350,'vegan','lunch',0,0,0),(23,'Grilled Fish','150 g',150.0,220,28.00,0.00,12.00,0.00,120,'paleo','dinner',0,0,0),(24,'Fruit Salad','1 bowl',250.0,180,4.00,45.00,1.00,30.00,10,'vegan','snack',0,0,0),(25,'Turkey Sandwich','1 sandwich',200.0,320,20.00,30.00,10.00,4.00,500,'standard','lunch',0,0,1),(26,'Sweet Potato Mash','1 cup',200.0,180,4.00,40.00,2.00,8.00,50,'vegan','dinner',0,0,0),(27,'Baked Beans','1 cup',180.0,250,12.00,45.00,6.00,10.00,600,'vegetarian','lunch',0,0,0),(28,'Hummus & Veggies','1 plate',200.0,220,8.00,20.00,10.00,2.00,400,'vegan','snack',0,0,0),(29,'Shrimp Salad','1 bowl',180.0,200,15.00,10.00,8.00,4.00,350,'paleo','lunch',0,0,0),(30,'Chicken Soup','1 bowl',250.0,180,18.00,8.00,6.00,2.00,500,'standard','dinner',0,0,0),(31,'Pasta Primavera','1 plate',300.0,400,15.00,60.00,12.00,6.00,700,'vegetarian','dinner',0,1,1),(32,'Walnut Brownie','1 piece',100.0,320,6.00,40.00,18.00,25.00,100,'vegetarian','snack',1,1,1),(33,'Banana Smoothie','1 glass',250.0,180,5.00,38.00,2.00,20.00,50,'vegan','snack',0,1,0),(34,'Tofu Scramble','1 plate',200.0,220,16.00,14.00,10.00,4.00,300,'vegan','breakfast',0,0,0),(35,'Cottage Cheese Salad','1 bowl',180.0,150,12.00,8.00,6.00,4.00,250,'vegetarian','snack',0,1,0),(36,'Keto Bacon Wrap','1 wrap',150.0,350,20.00,4.00,28.00,1.00,400,'keto','lunch',0,0,0),(37,'Gluten-Free Pancakes','2 pieces',120.0,210,6.00,30.00,6.00,8.00,150,'standard','breakfast',0,1,0),(38,'Beef Steak','200 g',200.0,400,40.00,0.00,20.00,0.00,90,'paleo','dinner',0,0,0),(39,'Egg Fried Rice','1 plate',250.0,350,14.00,50.00,12.00,4.00,600,'standard','lunch',0,0,1),(40,'Vegetable Soup','1 bowl',200.0,120,6.00,18.00,2.00,3.00,200,'vegan','lunch',0,0,0);
/*!40000 ALTER TABLE `food_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal_items`
--

DROP TABLE IF EXISTS `meal_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meal_items` (
  `meal_item_id` int NOT NULL AUTO_INCREMENT,
  `meal_id` int NOT NULL,
  `food_id` int NOT NULL,
  `servings` decimal(5,2) NOT NULL DEFAULT '1.00',
  PRIMARY KEY (`meal_item_id`),
  KEY `meal_id` (`meal_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `meal_items_ibfk_1` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`meal_id`) ON DELETE CASCADE,
  CONSTRAINT `meal_items_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`food_id`) ON DELETE RESTRICT,
  CONSTRAINT `meal_items_chk_1` CHECK ((`servings` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal_items`
--

LOCK TABLES `meal_items` WRITE;
/*!40000 ALTER TABLE `meal_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `meal_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals`
--

DROP TABLE IF EXISTS `meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meals` (
  `meal_id` int NOT NULL AUTO_INCREMENT,
  `plan_id` int NOT NULL,
  `meal_type` enum('breakfast','lunch','dinner','snack') NOT NULL,
  `meal_date` date NOT NULL,
  PRIMARY KEY (`meal_id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `diet_plans` (`plan_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals`
--

LOCK TABLES `meals` WRITE;
/*!40000 ALTER TABLE `meals` DISABLE KEYS */;
/*!40000 ALTER TABLE `meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_allergies`
--

DROP TABLE IF EXISTS `user_allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_allergies` (
  `user_id` int NOT NULL,
  `allergy_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`allergy_id`),
  KEY `allergy_id` (`allergy_id`),
  CONSTRAINT `user_allergies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_allergies_ibfk_2` FOREIGN KEY (`allergy_id`) REFERENCES `allergies` (`allergy_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_allergies`
--

LOCK TABLES `user_allergies` WRITE;
/*!40000 ALTER TABLE `user_allergies` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_conditions`
--

DROP TABLE IF EXISTS `user_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_conditions` (
  `user_id` int NOT NULL,
  `condition_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`condition_id`),
  KEY `condition_id` (`condition_id`),
  CONSTRAINT `user_conditions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_conditions_ibfk_2` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`condition_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_conditions`
--

LOCK TABLES `user_conditions` WRITE;
/*!40000 ALTER TABLE `user_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `age_years` int NOT NULL,
  `height_cm` decimal(5,2) NOT NULL,
  `weight_kg` decimal(5,2) NOT NULL,
  `activity_level` varchar(20) NOT NULL,
  `goal` enum('weight_loss','maintenance','weight_gain') NOT NULL DEFAULT 'maintenance',
  `diet_preference` enum('standard','vegetarian','vegan','keto','paleo') NOT NULL DEFAULT 'standard',
  PRIMARY KEY (`user_id`),
  KEY `fk_users_activity` (`activity_level`),
  CONSTRAINT `fk_users_activity` FOREIGN KEY (`activity_level`) REFERENCES `activity_levels` (`code`),
  CONSTRAINT `users_chk_1` CHECK ((`age_years` between 5 and 100)),
  CONSTRAINT `users_chk_2` CHECK ((`height_cm` between 50 and 250)),
  CONSTRAINT `users_chk_3` CHECK ((`weight_kg` between 20 and 400))
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (50,'Akshit','M',22,178.00,72.00,'moderate','weight_gain','standard'),(51,'Riya','F',26,162.00,58.00,'light','maintenance','vegetarian'),(52,'Aman','M',35,170.00,85.00,'sedentary','weight_loss','keto'),(53,'Priya','F',29,168.00,62.00,'active','maintenance','vegan'),(54,'Karan','M',31,182.00,90.00,'very_active','weight_gain','standard'),(55,'Simran','F',24,160.00,54.00,'light','weight_loss','vegetarian'),(56,'Raj','M',28,175.00,70.00,'moderate','maintenance','keto'),(57,'Ananya','F',33,165.00,60.00,'sedentary','weight_loss','vegan'),(58,'Vikram','M',40,180.00,88.00,'active','weight_gain','standard'),(59,'Meera','F',27,158.00,50.00,'light','maintenance','vegetarian'),(60,'Arjun','M',21,172.00,65.00,'moderate','weight_gain','standard'),(61,'Neha','F',25,164.00,56.00,'sedentary','weight_loss','vegan'),(62,'Sahil','M',37,178.00,82.00,'very_active','maintenance','keto'),(63,'Pooja','F',30,167.00,59.00,'light','weight_loss','vegetarian'),(64,'Dev','M',34,181.00,92.00,'active','weight_gain','standard'),(65,'Tanya','F',23,162.00,55.00,'moderate','maintenance','vegan'),(66,'Rohit','M',29,176.00,73.00,'super_active','weight_gain','standard'),(67,'Isha','F',28,159.00,53.00,'light','weight_loss','vegetarian'),(68,'Kabir','M',36,184.00,95.00,'extreme','weight_gain','keto'),(69,'Sana','F',32,166.00,61.00,'active','maintenance','vegan'),(70,'Yash','M',26,174.00,77.00,'moderate','weight_gain','standard'),(71,'Anjali','F',27,160.00,52.00,'sedentary','weight_loss','vegetarian'),(72,'Harsh','M',38,182.00,91.00,'very_active','maintenance','standard'),(73,'Komal','F',25,165.00,57.00,'light','maintenance','vegan'),(74,'Aayush','M',24,179.00,75.00,'super_active','weight_gain','standard'),(75,'Shreya','F',29,163.00,55.00,'moderate','maintenance','vegetarian'),(76,'Nikhil','M',33,180.00,89.00,'active','weight_gain','keto'),(77,'Divya','F',26,158.00,51.00,'sedentary','weight_loss','vegan'),(78,'Parth','M',35,177.00,80.00,'very_active','maintenance','standard'),(79,'Sneha','F',31,164.00,56.00,'light','weight_loss','vegetarian'),(80,'Rajat','M',30,183.00,93.00,'super_active','weight_gain','standard'),(81,'Pallavi','F',28,161.00,54.00,'moderate','maintenance','vegan'),(82,'Manav','M',40,185.00,96.00,'extreme','weight_gain','keto'),(83,'Aarti','F',27,167.00,59.00,'active','maintenance','vegetarian'),(84,'Varun','M',23,172.00,68.00,'moderate','weight_loss','standard'),(85,'Ritika','F',34,160.00,53.00,'light','maintenance','vegan'),(86,'Aditya','M',29,179.00,84.00,'very_active','weight_gain','keto'),(87,'Bhavna','F',32,165.00,60.00,'sedentary','weight_loss','vegetarian'),(88,'Gaurav','M',37,181.00,90.00,'super_active','maintenance','standard'),(89,'Naina','F',25,163.00,55.00,'moderate','weight_gain','vegan'),(90,'Ramesh','M',36,178.00,83.00,'active','maintenance','standard'),(91,'Sheetal','F',24,159.00,52.00,'light','weight_loss','vegetarian'),(92,'Pranav','M',28,176.00,78.00,'very_active','maintenance','standard'),(93,'Kavya','F',27,164.00,56.00,'sedentary','weight_loss','vegan'),(94,'Mohit','M',31,182.00,88.00,'extreme','weight_gain','keto'),(95,'Dia','F',26,161.00,54.00,'light','maintenance','vegetarian'),(96,'Lakshay','M',30,180.00,86.00,'super_active','weight_gain','standard'),(97,'Ayesha','F',29,166.00,60.00,'moderate','maintenance','vegan'),(98,'Deepak','M',34,183.00,92.00,'active','weight_gain','standard'),(99,'Akshit','M',22,178.00,72.00,'moderate','weight_gain','standard'),(100,'Riya','F',26,162.00,58.00,'light','maintenance','vegetarian'),(101,'Aman','M',35,170.00,85.00,'sedentary','weight_loss','keto'),(102,'Meera','F',29,168.00,60.00,'light','weight_loss','vegan'),(103,'Raj','M',40,175.00,90.00,'active','maintenance','paleo'),(104,'Neha','F',24,160.00,55.00,'moderate','weight_gain','vegetarian'),(105,'Arjun','M',31,182.00,78.00,'sedentary','maintenance','standard'),(106,'Priya','F',33,165.00,68.00,'light','weight_loss','keto'),(107,'Vikas','M',28,172.00,80.00,'active','weight_gain','standard'),(108,'Sanya','F',27,158.00,50.00,'very_active','maintenance','vegan');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_daily_totals`
--

DROP TABLE IF EXISTS `v_daily_totals`;
/*!50001 DROP VIEW IF EXISTS `v_daily_totals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_daily_totals` AS SELECT 
 1 AS `plan_id`,
 1 AS `meal_date`,
 1 AS `day_kcal`,
 1 AS `day_protein_g`,
 1 AS `day_carbs_g`,
 1 AS `day_fat_g`,
 1 AS `day_sugar_g`,
 1 AS `day_sodium_mg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_meal_macros`
--

DROP TABLE IF EXISTS `v_meal_macros`;
/*!50001 DROP VIEW IF EXISTS `v_meal_macros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_meal_macros` AS SELECT 
 1 AS `meal_id`,
 1 AS `plan_id`,
 1 AS `meal_type`,
 1 AS `meal_date`,
 1 AS `total_kcal`,
 1 AS `total_protein_g`,
 1 AS `total_carbs_g`,
 1 AS `total_fat_g`,
 1 AS `total_sugar_g`,
 1 AS `total_sodium_mg`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_daily_totals`
--

/*!50001 DROP VIEW IF EXISTS `v_daily_totals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_daily_totals` AS select `v_meal_macros`.`plan_id` AS `plan_id`,`v_meal_macros`.`meal_date` AS `meal_date`,sum(`v_meal_macros`.`total_kcal`) AS `day_kcal`,sum(`v_meal_macros`.`total_protein_g`) AS `day_protein_g`,sum(`v_meal_macros`.`total_carbs_g`) AS `day_carbs_g`,sum(`v_meal_macros`.`total_fat_g`) AS `day_fat_g`,sum(`v_meal_macros`.`total_sugar_g`) AS `day_sugar_g`,sum(`v_meal_macros`.`total_sodium_mg`) AS `day_sodium_mg` from `v_meal_macros` group by `v_meal_macros`.`plan_id`,`v_meal_macros`.`meal_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_meal_macros`
--

/*!50001 DROP VIEW IF EXISTS `v_meal_macros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_meal_macros` AS select `m`.`meal_id` AS `meal_id`,`m`.`plan_id` AS `plan_id`,`m`.`meal_type` AS `meal_type`,`m`.`meal_date` AS `meal_date`,sum((`fi`.`calories_kcal` * `mi`.`servings`)) AS `total_kcal`,sum((`fi`.`protein_g` * `mi`.`servings`)) AS `total_protein_g`,sum((`fi`.`carbs_g` * `mi`.`servings`)) AS `total_carbs_g`,sum((`fi`.`fat_g` * `mi`.`servings`)) AS `total_fat_g`,sum((`fi`.`sugar_g` * `mi`.`servings`)) AS `total_sugar_g`,sum((`fi`.`sodium_mg` * `mi`.`servings`)) AS `total_sodium_mg` from ((`meals` `m` join `meal_items` `mi` on((`mi`.`meal_id` = `m`.`meal_id`))) join `food_items` `fi` on((`fi`.`food_id` = `mi`.`food_id`))) group by `m`.`meal_id`,`m`.`plan_id`,`m`.`meal_type`,`m`.`meal_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-14 23:41:21
