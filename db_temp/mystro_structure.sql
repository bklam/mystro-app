-- Table structure for the mystro database

CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  family_id INTEGER NOT NULL,
  teacher_id INTEGER NOT NULL,
  first_name VARCHAR (255) NOT NULL,
  last_name VARCHAR (255) NOT NULL,
  email VARCHAR (255),
  phone VARCHAR (10),
  start_date DATE DEFAULT NOW() NOT NULL,
  end_date DATE,
  outstanding_balance INTEGER DEFAULT 0 NOT NULL,
  active BOOLEAN DEFAULT 't' NOT NULL
);

CREATE TABLE families(
  id SERIAL PRIMARY KEY,
  family_name VARCHAR (255) NOT NULL,
  location_id INTEGER NOT NULL,
  email VARCHAR (255),
  phone VARCHAR (10),
  total_balance INTEGER NOT NULL
);

CREATE TABLE teachers(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR (255) NOT NULL,
  last_name VARCHAR (255) NOT NULL,
  location_id INTEGER NOT NULL,
  email VARCHAR (255),
  phone VARCHAR (10)
);

CREATE TABLE payments(
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL,
  lesson_id INTEGER NOT NULL,
  amount INTEGER NOT NULL,
  payment_date DATE NOT NULL,
  method VARCHAR (255) NOT NULL
);

CREATE TABLE lessons(
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL,
  teacher_id INTEGER NOT NULL,
  location_id INTEGER NOT NULL,
  lesson_type_id INTEGER NOT NULL,
  date DATE NOT NULL,
  start_time TIME WITH TIME ZONE NOT NULL,
  end_time TIME WITH TIME ZONE NOT NULL,
  total_cost INTEGER DEFAULT 0 NOT NULL
);

CREATE TABLE locations(
  id SERIAL PRIMARY KEY,
  description VARCHAR (255),
  address VARCHAR (255) NOT NULL,
  city VARCHAR (255) NOT NULL,
  state VARCHAR (2) NOT NULL,
  zip VARCHAR (5) NOT NULL
);

CREATE TABLE lesson_rates_history(
  id SERIAL PRIMARY KEY,
  lesson_type_id INTEGER NOT NULL,
  start_date DATE,
  end_date DATE,
  rate INTEGER
);

CREATE TABLE lesson_types(
  id SERIAL PRIMARY KEY,
  description VARCHAR (255),
  duration INTEGER NOT NULL
);