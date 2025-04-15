# 🛡️ Admin Panel Web Application

This is a **Java-based Admin Panel Web Application** developed using **Java Servlets**, **JSP**, and **MySQL**. The system supports **Admin Login**, **User Management (Register, Modify, Delete, Search)**, and uses **JPA with Hibernate** for database operations. It also follows the MVC architecture and integrates **Enterprise Java Beans (EJB)** and **Bean Validation** for enterprise-level functionality.

---

## 📁 Project Structure

AdminPanelApp/ │── src/main/java/ │ ├── com.adminpanel.servlet/ │ │ ├── LoginServlet.java │ │ ├── LogoutServlet.java │ │ ├── UserManagementServlet.java │ ├── com.adminpanel.entity/ │ │ ├── Admin.java │ │ ├── User.java │ ├── com.adminpanel.dao/ │ │ ├── UserDAO.java │ ├── com.adminpanel.service/ │ │ ├── UserService.java │ ├── com.adminpanel.ejb/ │ │ ├── UserBean.java │ ├── com.adminpanel.rest/ │ │ ├── UserRestService.java │── WebContent/ │ ├── index.jsp │ ├── adminDashboard.jsp │ ├── registerUser.jsp │ ├── searchUser.jsp ├── META-INF/ │ ├── persistence.xml ├── web.xml ├── pom.xml



---

## 🚀 Features

- ✅ Admin Login with session management
- 👤 User Management:
  - Register new users
  - View user list
  - Modify user information
  - Delete user records
  - Search users
- 📡 RESTful APIs using JAX-RS
- 📦 EJB-based business logic
- 📊 MySQL Database integration
- 📐 Form validation using Bean Validation (JSR 380)
- 🎨 JSP pages with Bootstrap UI

---

## 🛠️ Technologies Used

- Java Servlets & JSP
- MySQL Database
- JPA (Hibernate)
- EJB (Enterprise Java Beans)
- RESTful Web Services (JAX-RS)
- Bean Validation
- Apache Tomcat / GlassFish Server
- Maven for dependency management

---



### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/AdminPanelApp.git
2. Import in NetBeans / Eclipse
Choose "Import as Maven Project"

Configure Tomcat or GlassFish as your runtime server

3. Set Up MySQL Database

CREATE DATABASE admin_panel;
USE admin_panel;

CREATE TABLE admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100),
  password VARCHAR(100)
);

CREATE TABLE user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  role VARCHAR(50)
);
4. Configure persistence.xml
Update your MySQL username and password:


<property name="javax.persistence.jdbc.user" value="root"/>
<property name="javax.persistence.jdbc.password" value="yourpassword"/>
5. Run the Project
Deploy on Tomcat or GlassFish

Navigate to: http://localhost:8080/AdminPanelApp/

🔒 Admin Credentials
You can insert an admin record directly via MySQL:


INSERT INTO admin (username, password) VALUES ('admin', 'admin123');



## 🔽 Cloning the Repository

To get a local copy of the project up and running, follow these steps:

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/AdminPanelApp.git
cd AdminPanelApp
