# Voyage - Your Personal Airbnb Solution

Voyage is a one-stop website for Airbnb travel planning that helps users find their ideal accommodations based on personalized criteria. Our platform provides enhanced search features and detailed insights that go beyond the standard Airbnb website.

## Features

### 1. Enhanced Search Experience
- Intuitive search interface with instant results
- Location-based property filtering
- Advanced search parameters
- Responsive design for all devices

### 2. User-Friendly Navigation
- Clean and modern interface
- Smooth scrolling functionality
- Mobile-responsive navigation menu
- Quick access to key features

### 3. Property Insights
- Detailed property information
- Price comparisons
- Neighborhood insights
- Guest reviews and ratings

## Technology Stack

- Frontend: HTML5, CSS3, JavaScript
- Backend: Java, JSP
- Database: MySQL
- Server: Apache Tomcat
- Additional Libraries: Font Awesome 5.12.1

## Getting Started

### Prerequisites
- Java Development Kit (JDK) 8 or higher
- Apache Tomcat 9.x
- MySQL 8.0
- Maven 3.x

### Installation

1. Clone the repository
   bash
   git clone https://github.com/yourusername/Voyage.git
   cd Voyage
2. Configure database connection
- Create a MySQL database
- Update database credentials in `src/main/resources/application.properties`

3. Build the project
   bash
   mvn clean install
4. Deploy to Tomcat
- Copy the generated WAR file to Tomcat's webapps directory
- Start Tomcat server

5. Access the application  http://localhost:8080/Voyage/

## Project Structure
Voyage/
├── src/
│ └── main/
│ ├── java/ # Java source files
│ ├── webapp/
│ │ ├── css/ # Stylesheets
│ │ ├── js/ # JavaScript files
│ │ ├── images/ # Image assets
│ │ └── WEB-INF/ # Web configuration
│ └── resources/ # Application properties
└── pom.xml # Maven configuration


## Acknowledgments

- Built with [Font Awesome](https://fontawesome.com/) icons
- Inspired by Airbnb's user interface

- Tomcat
$CATALINA_HOME/bin/shutdown.sh
$CATALINA_HOME/bin/startup.sh
