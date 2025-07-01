CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(150) UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  role VARCHAR(32),
  phone VARCHAR(32)
);
CREATE TABLE rehearsals (
  id SERIAL PRIMARY KEY,
  date_time TIMESTAMP NOT NULL,
  location VARCHAR(150),
  created_by INTEGER REFERENCES users(id),
  notes TEXT
);
CREATE TABLE attendance (
  id SERIAL PRIMARY KEY,
  rehearsal_id INTEGER REFERENCES rehearsals(id),
  user_id INTEGER REFERENCES users(id),
  status VARCHAR(16)
);
