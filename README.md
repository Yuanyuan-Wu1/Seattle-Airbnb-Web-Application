# Voyage - Airbnb-like Web Application

## Table of Contents
- [Project Overview](#project-overview)
- [Technology Stack](#technology-stack)
- [Project Structure](#project-structure)
- [Key Components](#key-components)
- [Database Schema](#database-schema)
- [Features](#features)
- [Quick Start Guide](#quick-start-guide)
- [Setup Instructions](#setup-instructions)
- [Key Technical Features](#key-technical-features)
- [Future Enhancements](#future-enhancements)
- [Troubleshooting](#troubleshooting)
- [Contributors](#contributors)
- [License](#license)

## Project Overview
Voyage is a web application that replicates core Airbnb functionalities, allowing users to browse and search for accommodations in Seattle. Built with Java EE technologies and following the MVC architecture pattern.
### Live Demo
- URL: http://167.234.209.20:8080/voyage

### Current Features
- Smart Search: Advanced search features for finding perfect stays
- Local Insights: Explore Seattle's unique neighborhoods
- Verified Reviews: Authentic guest reviews system
- User Management: Login/Sign up functionality

## Technology Stack
- **Backend**: Java EE (Jakarta EE)
- **Frontend**: JSP, HTML, CSS, JavaScript
- **Database**: MySQL
- **Server**: Apache Tomcat
- **Build**: Direct deployment to Tomcat (no Maven)

## Project Structure
Voyage/
├── src/
│   └── main/
│       ├── java/
│       │   └── voyage/
│       │       ├── dal/         # Data Access Layer
│       │       │   ├── ConnectionManager.java
│       │       │   ├── ListingsDao.java
│       │       │   └── HostsDao.java
│       │       ├── model/       # Data Models
│       │       │   ├── Listings.java
│       │       │   ├── Hosts.java
│       │       │   └── ListingsWithMinPrice.java
│       │       └── servlet/     # Servlets (Controllers)
│       │           └── FindListings.java
│       └── webapp/
│           ├── css/            # Stylesheets
│           │   └── styles.css
│           ├── js/             # JavaScript files
│           │   └── app.js
│           ├── WEB-INF/
│           │   └── web.xml     # Web configuration
│           └── FindListings.jsp # JSP Views

## Key Components

### 1. Data Access Layer (DAL)
- `ConnectionManager.java`: Manages database connections
- `ListingsDao.java`: Handles listing operations (search, retrieve)
- `HostsDao.java`: Manages host data operations

### 2. Models
- `Listings.java`: Property information
- `Hosts.java`: Host details
- `ListingsWithMinPrice.java`: Combined listing and price data

### 3. Controllers (Servlets)
- `FindListings.java`: Main servlet for listing operations
  - Handles search requests
  - Processes listing data
  - Forwards to JSP views

### 4. Views (JSP)
- `FindListings.jsp`: Main listing display
  - Responsive design
  - Dynamic content rendering
  - Host information display

  ## Database Schema
  Key tables:
  - `Listings`: Property details
  - `Hosts`: Host information
  - `Neighborhoods`: Location data
  - `PriceCalendar`: Pricing information

  ## Features
  - Property listing search
  - Host profile display
  - Property details view
  - Dynamic pricing display
  - Location-based search
  - Rating system

  ## Quick Start Guide

  ### 1. Environment Setup
  Required Software:
  - JDK 11 or higher
  - MySQL 8.x
  - Apache Tomcat 9.x

  ### 2. MySQL Setup
  1. Login to MySQL
  mysql -u root -p
  2. Create Database
  CREATE DATABASE voyage;
  USE voyage;
  3. Import Data (Execute in order)
  source schema.sql
  source listings.sql
  source hosts.sql
  4. Verify Data
  SELECT FROM Listings LIMIT 5;
  SELECT FROM Hosts LIMIT 5;


### 3. Project Setup
1. **Download Project**
   - Download the project files
   - Extract to a local directory

2. **Database Connection**
   - Open `src/main/java/voyage/dal/ConnectionManager.java`
   - Update database credentials:
   ```java
   private final String URL = "jdbc:mysql://localhost:3306/voyage";
   private final String USER = "your_username";  // Change this
   private final String PASSWORD = "your_password";  // Change this
   ```

### 4. Tomcat Deployment
1. **Prepare Tomcat**
   ```bash
   # Start Tomcat
   cd /path/to/tomcat
   ./bin/startup.sh  # (Linux/Mac)
   # or
   .\bin\startup.bat # (Windows)
   ```

2. **Deploy Project**
   - Copy entire `Voyage` folder to: `/path/to/tomcat/webapps/`
   - Final path should be: `tomcat/webapps/Voyage/`

### 5. Launch Application
1. Start MySQL server
2. Start Tomcat server
3. Access: `http://localhost:8080/Voyage`

## Troubleshooting

### Database Connection Issues
bash
# Check if MySQL is running
sudo service mysql status # Linux
brew services list # Mac
Verify database exists
mysql -u root -p
SHOW DATABASES;



### Tomcat Issues
Common problems and solutions:
1. **404 Error**
   - Verify project folder name is exactly "Voyage"
   - Check Tomcat webapps directory
   - Ensure all files are in correct locations

2. **500 Error**
   - Check database connection
   - Verify SQL credentials
   - Review Tomcat logs: `/path/to/tomcat/logs/catalina.out`

3. **Port Conflicts**
   - Default port is 8080
   - Change in Tomcat's server.xml if needed

### Development Tips
1. **Making Changes**
   - Edit Java files
   - Modify JSP pages
   - Update CSS/JS

2. **Testing Changes**
   ```bash
   # Restart Tomcat
   ./bin/shutdown.sh
   ./bin/startup.sh
   ```

3. **Viewing Changes**
   - Clear browser cache (Ctrl+F5)
   - Refresh page

## Key Technical Features
- MVC Architecture
- DAO Pattern
- Prepared Statements
- Connection Management
- RESTful URLs
- Responsive Design
- Error Handling

## Future Enhancements
- User Authentication
- Booking System
- Payment Integration
- Advanced Search
- Review System
- Host Dashboard

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Acknowledgments
- Data source: Seattle Airbnb Open Data
- [Other acknowledgments]
