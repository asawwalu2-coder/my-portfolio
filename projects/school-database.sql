-- Beginner project: School database
-- Run in MySQL Workbench. This creates a demo database and sample student records.
CREATE DATABASE IF NOT EXISTS school_portfolio;
USE school_portfolio;

CREATE TABLE IF NOT EXISTS students (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(100) NOT NULL,
  age TINYINT UNSIGNED,
  course VARCHAR(80) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (full_name, age, course) VALUES
('Amina Yusuf', 19, 'Computer Science'),
('Musa Bello', 20, 'Database Systems'),
('Zainab Ibrahim', 18, 'Information Technology');

-- View all students
SELECT * FROM students;

-- Count students by course
SELECT course, COUNT(*) AS student_count
FROM students
GROUP BY course
ORDER BY student_count DESC;
