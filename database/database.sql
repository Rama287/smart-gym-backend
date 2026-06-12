CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(100) NOT NULL,
  role VARCHAR(20) NOT NULL DEFAULT 'user',
  status VARCHAR(20) NOT NULL DEFAULT 'Active'
);

CREATE TABLE workouts (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  exercise_name VARCHAR(100) NOT NULL,
  sets INTEGER NOT NULL,
  reps INTEGER NOT NULL
);

INSERT INTO users (name, email, password, role, status) VALUES
('Rama User', 'rama@example.com', '1234', 'user', 'Active'),
('Admin User', 'admin@gym.com', 'admin123', 'admin', 'Active');

INSERT INTO workouts (user_id, exercise_name, sets, reps) VALUES
(1, 'Push Ups', 3, 12),
(1, 'Squats', 4, 10);