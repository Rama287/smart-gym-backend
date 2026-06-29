# Smart Gym Assistant - Backend

## Overview

The backend of Smart Gym Assistant is built using Node.js and Express.js. It provides a REST API for authentication, user management, and workout tracking.

It connects to a PostgreSQL database for persistent storage.

---

## Technologies Used

* Node.js (Runtime environment)
* Express.js (Backend framework)
* PostgreSQL (Database)
* pg (Database driver)
* dotenv (Environment variables)
* cors (Cross-origin handling)
* nodemon (Development tool)

---

## Architecture

The backend follows a **layered architecture**:

* Routes → Handle API requests
* Controllers → Business logic (inside routes in this project)
* Database → PostgreSQL queries
* Config → Database connection setup

This follows:
 Separation of concerns
 Modular structure
 Clean API design principles

---

## Database Design

### Users Table

* id (Primary Key)
* name
* email
* password
* role (user/admin)
* status (Active/Blocked)

### Workouts Table

* id (Primary Key)
* user_id (Foreign Key)
* exercise_name
* sets
* reps

---

## API Endpoints

### Authentication

* POST /api/signup → Create user
* POST /api/login → Login user

### Users Management

* GET /api/users → Get all users
* DELETE /api/users/:id → Delete user
* PUT /api/users/:id/status → Block/Unblock user

### Workout Management

* GET /api/workouts/:userId → Get user workouts
* POST /api/workouts → Add workout
* PUT /api/workouts/:id → Update workout
* DELETE /api/workouts/:id → Delete workout

### Admin Features

* GET /api/admin/workouts → View all workouts with user details

---

## Authentication Flow

1. User registers
2. Data stored in PostgreSQL
3. User logs in
4. Server validates credentials
5. Role is returned (user/admin)
6. Frontend uses role for routing

---

## Database Connection

PostgreSQL connection is handled in:

```
config/db.js
```

Environment variables are stored in:

```
.env
```

---

## Best Practices Used

* RESTful API design
* Error handling using try/catch
* Environment variables for security
* Clean modular structure
* Separation of routes and database logic
* DRY principle

---

## How to Run

```
npm install
npm run dev
```

Backend runs on:

```
http://localhost:5000
```

---

## Project Strengths

* Full CRUD operations
* Role-based authentication
* Clean database design
* Scalable architecture
* Real-world API structure

---

## Conclusion

The backend provides a secure and structured API that supports all frontend features and ensures smooth data flow between the client and database.
