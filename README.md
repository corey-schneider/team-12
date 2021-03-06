
# ITCS 3160 - Database Project Team 12
Corey Schneider || Josh Clinkscales || Avimael Obispo || James Perez || Nicholas Smith


## Table of Contents
1. [ Introduction ](#intro)  
2. [ Use Case for Rating System ](#use-case)
3. [ Business Rules](#business-rules)
4. [ EERD ](#eerd)
5. [ Data Dictionary ](#DataDictionary)
6. [ MySQL Queries](#mysql-queries)
7. [ Stored Procedure](#stored-procedure)
8. [ Index ](#index)
9. [ MySQL dump ](#mysql-dump)
10. [ Video ](#video)
  
<a name="intro"></a>  
### Introduction
The idea of this project is to enhance a system for an existing database by adding a rating system. The system is a food delivery service to campus for students and faculty. This rating system will allow users to leave ratings for both the restaurants and the delivery drivers.

<hr>

<a name="use-case"></a>  
### Use Case for Rating System
![CD1](https://user-images.githubusercontent.com/57717125/99924725-5ccfa600-2d09-11eb-8414-fd4f727cb90b.png)


<hr>

<a name="business-rules"></a>  
### Business Rules
* The project adds a rating system to an already existing database, the ratings are applied to both the restaurants and the delivery drivers.
* Persons can be faculty, staff, and students.
* Persons can also be drivers, all delivery drivers are students.
* A person can order food one to many times, an individual order is tied to only one person for the order.
* The orders are for only one restaurant.
* The order can only have one location.
* The items on the order will only need to keep the total price and delivery charge, as well as keep the driver and delivery times.
* Locations where the food can be delivered, as well as a food delivery drop-off are included in the database.

<hr>

<a name="eerd"></a>  
### EERD
![UpdatedERD](https://user-images.githubusercontent.com/57717125/101294300-6dd9e600-37e4-11eb-9d04-ecd3e7a74e57.png)

Narrative: This ERD displays the relationships of a food delivery service handled by a university. Restaurants make food based on the orders made. Students are drivers that deliver food to an address. Restaurants and Drivers are given ratings based on their on performance and quality.

<hr>

<a name="DataDictionary"></a>  
### Data Dictionary
![DD2SC](https://user-images.githubusercontent.com/57717125/101294309-7b8f6b80-37e4-11eb-97aa-94efba01351a.png)

<hr>

<a name="mysql-queries"></a>  
### MySQL Queries
![Screenshot (150)](https://user-images.githubusercontent.com/57717125/102268191-fe04e300-3ee8-11eb-82f6-ab985804c473.png)
![Screenshot (151)](https://user-images.githubusercontent.com/57717125/102268330-2d1b5480-3ee9-11eb-8be4-d774c9e85930.png)
![Screenshot (152)](https://user-images.githubusercontent.com/57717125/102268228-09f0a500-3ee9-11eb-99b4-eb4991e81a79.png)
![Screenshot (153)](https://user-images.githubusercontent.com/57717125/102268345-33a9cc00-3ee9-11eb-8366-9c1ccbd1cbcf.png)

<hr>

<a name="stored-procedure"></a>  
### Stored Procedure
Procedures that get the average ratings as well as get the ratings tables.
![Screenshot (144)](https://user-images.githubusercontent.com/57717125/102252678-5bdb0000-3ed4-11eb-89c5-b4ad6bced6a7.png)
![Screenshot (156)](https://user-images.githubusercontent.com/57717125/102284813-e33f6800-3f02-11eb-88c3-58cbe45f297a.png)

![Screenshot (145)](https://user-images.githubusercontent.com/57717125/102252721-6ac1b280-3ed4-11eb-9011-c88971907105.png)
![Screenshot (157)](https://user-images.githubusercontent.com/57717125/102284829-edf9fd00-3f02-11eb-812c-3d990ac5188b.png)

![Screenshot (148)](https://user-images.githubusercontent.com/57717125/102252745-7319ed80-3ed4-11eb-9baa-91c953cf75ea.png)
![Screenshot (154)](https://user-images.githubusercontent.com/57717125/102284847-f94d2880-3f02-11eb-89a0-3a47f52f3475.png)

![Screenshot (149)](https://user-images.githubusercontent.com/57717125/102252759-79a86500-3ed4-11eb-9cc5-16c047ad2bb5.png)
![Screenshot (155)](https://user-images.githubusercontent.com/57717125/102284858-00743680-3f03-11eb-8e40-2e9303fccda4.png)


<hr>

<a name="index"></a>  
### Index
![Screenshot (160)](https://user-images.githubusercontent.com/57717125/102275797-eda63580-3ef3-11eb-8941-2359979b8f6a.png)
![Screenshot (161)](https://user-images.githubusercontent.com/57717125/102275839-ff87d880-3ef3-11eb-9952-5508bf5ff5ad.png)
![Screenshot (159)](https://user-images.githubusercontent.com/57717125/102275977-2fcf7700-3ef4-11eb-9c64-b50dcb56bb73.png)
![Screenshot (158)](https://user-images.githubusercontent.com/57717125/102275998-35c55800-3ef4-11eb-99ce-b2bb150c5640.png)



<a name="changeme"></a>

<hr>

<a name="mysql-dump"></a>  
### MySQL dump
See Dump File at the top of repository, "CampusFeedSqlDumpV2.sql".

<hr>

<a name="video"></a>  
### Video
<a href="https://youtu.be/bZ07SLZEjvE">ITCS 3160 - Team 12 Deliverable 4 Video</a>
