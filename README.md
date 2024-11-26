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

4. Deploy to Tomcat
- Copy the generated WAR file to Tomcat's webapps directory
- Start Tomcat server
  cd apache-tomcat-9.0.97/bin
  ./startup.sh
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


brew services stop mysql@8.0

brew services start mysql@8.0
cd /Users/yoyowu/NEU/Seattle-Airbnb-Web-Application
# 1. 复制更新的文件到 Tomcat webapps 目录
cp -r Voyage/src/main/webapp/* apache-tomcat-9.0.97/webapps/Voyage/

# 2. 如果修改了 Java 文件，需要重新编译并复制 class 文件
javac -cp "lib/*:." voyage/servlet/*.java
cp -r voyage apache-tomcat-9.0.97/webapps/Voyage/WEB-INF/classes/

# 3. 重启 Tomcat
./apache-tomcat-9.0.97/bin/shutdown.sh
./apache-tomcat-9.0.97/bin/startup.sh

启动 Tomcat
cd apache-tomcat-9.0.97/bin
./startup.sh
运行自动部署脚本：
cd /Users/yoyowu/NEU/Seattle-Airbnb-Web-Application
./auto-deploy.sh