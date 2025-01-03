# 📒 E-Notes Application - Spring MVC CRUD Project

## 🚀 Overview
E-Notes is a **Spring MVC-based web application** that allows registered users to create, read, update, and delete (CRUD) notes securely. This project demonstrates **user authentication**, **session management**, and **database interaction** using **Hibernate**.

## ✨ Features
- 🔐 **User Registration & Login** - Only registered users can log in.
- 📝 **Add Notes** - Users can create new notes.
- ✏️ **Edit Notes** - Existing notes can be updated.
- 🗑️ **Delete Notes** - Unnecessary notes can be removed.
- 📱 **Responsive Design** - User-friendly interface with **Bootstrap**.
- 🔒 **Security** - Access restricted to registered users only.

## 🛠️ Tech Stack
- **Back-End:** Java, Spring MVC (with Hibernate Integration)
- **Front-End:** JSP, Bootstrap, HTML, CSS
- **Database:** MySQL
- **Server:** Apache Tomcat
- **Build Tool:** Maven
- **IDE:** Eclipse

## 📋 Prerequisites
1. **Java 8 or later** - [Download Here](https://www.oracle.com/java/technologies/javase-downloads.html)
2. **Apache Maven** - [Download Here](https://maven.apache.org/download.cgi)
3. **MySQL Database** - [Download Here](https://dev.mysql.com/downloads/installer/)
4. **Eclipse IDE** - [Download Here](https://www.eclipse.org/downloads/)
5. **Apache Tomcat** - [Download Here](https://tomcat.apache.org/download-90.cgi)

## 🚦 Setup Instructions
### 1. Clone the Repository
```bash
git clone https://github.com/solocoder9/E-Notes-WebApp.git
cd E-Notes-WebApp
```

### 2. Import Project in Eclipse
1. Open Eclipse IDE.
2. Go to **File > Import > Existing Maven Projects**.
3. Select the cloned repository directory and click **Finish**.

### 3. Configure Database
1. Create a database in MySQL:
```sql
CREATE DATABASE enotes_db;
```
2. Update the database connection details in `spring-servlet.xml`.

### 4. Build and Run the Project
```bash
mvn clean install
mvn tomcat9:run
```

### 5. Access the Application
Open your browser and navigate to: 
```
http://localhost:8080/E-Notes-WebApp/
```

## 🌐 API Endpoints
### **Authentication**
- **POST** `/register` - Register a new user.  
- **POST** `/login` - Log in with existing credentials.  
- **GET** `/logout` - Log out the current session.  

### **Notes Management**
- **GET** `/notes` - View all notes for the logged-in user.  
- **POST** `/notes/add` - Add a new note.  
- **PUT** `/notes/edit/{id}` - Edit an existing note by ID.  
- **DELETE** `/notes/delete/{id}` - Delete a note by ID.  

## 🧑‍💻 Usage
1. **Register:** Create an account.
2. **Login:** Access your dashboard.
3. **Manage Notes:** Add, edit, or delete notes.
4. **Logout:** Securely end the session.

## 📦 Dependencies
- **Spring MVC:** Framework for MVC architecture.
- **Hibernate:** ORM framework for database interaction.
- **MySQL Connector:** Database connection driver.
- **Bootstrap:** CSS framework for responsive design.

## 🤝 Contribution Guidelines
1. Fork the repository.
2. Create a new branch:
```bash
git checkout -b feature-branch
```
3. Commit changes:
```bash
git commit -m "Add new feature"
```
4. Push changes:
```bash
git push origin feature-branch
```
5. Open a pull request.

## 📜 License
This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

## 📧 Contact
For questions or suggestions, feel free to reach out:
- **Email:** solocoder9@gmail.com
- **GitHub:** [solocoder9](https://github.com/solocoder9)

