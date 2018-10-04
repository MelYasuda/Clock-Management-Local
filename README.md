# _Clock Management_

#### _C# Group Week Project 2018_

#### By _**Akjal Jaenbai, Chan Lee, Connor McCarthy, Mel Yasuda**_

## Description
It is an application which lets employees to clock in and out and check their timesheet.

## URL
ClockManagement.azurewebsites.net
![Screenshot](/ClockManagement/wwwroot/img/thumbnail/screenshot.png)
## Specifications
* The program allows the user to create their account with their user name, login password and the department they belong to.
* The program allows the user to log in with their user name and login password.
* The program shows a list of all the employees.
* The program shows a list of all the departments.
* The program allows the user to clock in.
* The program allows the user to clock out.
* The program shows the time the user has clocked in.
* The program shows the time the user has clocked out.
* The program shows the duration between the user's clock-in and clock-out times as total work hours.
* The program shows the list of all the clock-in and clock-out times of the user.
* The program shows the total work hours of the individual works.
* The program shows the total work hours of the all works.
* The program won't allow unauthorized users to access any routes other than the home index route.
* The program allows the user to edit the user information.
* The program allows the user to delete the user information.

## Setup/Installation Requirements
1. Clone the following repository: https://github.com/goenchan/Clock-Management-Local
2. On terminal, go to ClockManagement directory
3. Run "dotnet restore"
4. Run "dotnet build"
5. Open http://localhost:5000 on a browser

* Database Creation Instruction (Useing MySQL)
1. CREATE DATABASE clock_management;
2. USE clock_management;
3. CREATE TABLE stylists (id serial PRIMARY KEY, name VARCHAR(255), username VARCHAR(255), password VARCHAR(255));
4. CREATE TABLE departments (id serial PRIMARY KEY, name VARCHAR(255));
5. CREATE TABLE departments_employees (id serial PRIMARY KEY, department_id INT(11), employee_id INT(11));
6. CREATE TABLE employees_hours (id serial PRIMARY KEY, clock_in datetime, clock_out datetime, hours time, employee_id INT(11));

OR

* Import the clock_management.sql file to your MySQL database

## Deployed Version
https://clockmanagement.azurewebsites.net/

## Known Bugs
TBD

## Support and contact details
* Chan Lee, chanethanlee@gmail.com

## Technologies Used
* html
* CSS
* Javascript
* C#
* MySQL

### License

Copyright (c) 2018 **_Akjal Jaenbai, Chan Lee, Connor McCarthy, Mel Yasuda, Epicodus_**
