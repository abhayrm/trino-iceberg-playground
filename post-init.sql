CREATE SCHEMA example.example_s3_schema
WITH
  (location = 's3://warehouse/test');

CREATE TABLE example.example_s3_schema.employees_test (name varchar, salary decimal(10, 2))
WITH
  (format = 'PARQUET');

-- INSERT INTO
--   example.example_s3_schema.employees_test (name, salary)
-- VALUES
--   ('Sam Evans', 55000);
INSERT INTO
  example.example_s3_schema.employees_test (name, salary)
VALUES
  ('Sam Evans', 55000),
  ('Liam Scott', 48000),
  ('Ava Patel', 62000),
  ('Noah Kim', 51000),
  ('Olivia Singh', 69000),
  ('Mason Wang', 47000),
  ('Isabella Chen', 74000),
  ('Lucas Garcia', 53000),
  ('Mia Rodriguez', 57000),
  ('Ethan Lee', 46000),
  ('Emma Sharma', 60000),
  ('James Brown', 52000),
  ('Amelia Davis', 65000),
  ('Benjamin Taylor', 56000),
  ('Sophia Wilson', 61000),
  ('Henry Moore', 59000),
  ('Charlotte Hall', 70000),
  ('Elijah Allen', 64000),
  ('Harper Young', 72000),
  ('William Hernandez', 63000),
  ('Evelyn King', 58000),
  ('Alexander Wright', 75000),
  ('Abigail Scott', 67000),
  ('Daniel Lopez', 73000),
  ('Emily Martinez', 68000),
  ('Jacob Hill', 69000),
  ('Avery Adams', 62000),
  ('Michael Baker', 50000),
  ('Ella Gonzalez', 71000),
  ('Sebastian Nelson', 49000),
  ('Grace Carter', 66000),
  ('Jackson Rivera', 55000),
  ('Chloe Campbell', 69000),
  ('Logan Mitchell', 60000),
  ('Scarlett Perez', 72000),
  ('Jayden Roberts', 47000),
  ('Aria Turner', 65000),
  ('Matthew Phillips', 52000),
  ('Luna Parker', 69000),
  ('David Evans', 56000),
  ('Zoe Edwards', 58000),
  ('Joseph Morgan', 54000),
  ('Nora Stewart', 70000),
  ('Samuel Cook', 69000),
  ('Layla Morris', 62000),
  ('Carter Rogers', 49000),
  ('Victoria Reed', 73000),
  ('Owen Bailey', 67000),
  ('Riley Cooper', 51000),
  ('Wyatt Bell', 69000);

-- 
-- Decimal array test
-- 
-- Create table
CREATE TABLE example.example_s3_schema.array_test (name varchar, salaries array(decimal(10, 2)))
WITH
  (format = 'PARQUET');

-- Insert sample data
INSERT INTO example.example_s3_schema.array_test (name, salaries)
VALUES 
  ('Employee_1', ARRAY[45000.00, 47000.00, 48000.00]),
  ('Employee_2', ARRAY[51000.00, 52000.00, 53000.00, 54000.00]),
  ('Employee_3', ARRAY[60000.00, 62000.00, 61000.00, 60500.00]),
  ('Employee_4', ARRAY[70000.00, 71000.00, 69000.00, 72000.00, 73000.00]),
  ('Employee_5', ARRAY[30000.00, 35000.00, 34000.00]),
  ('Employee_6', ARRAY[80000.00, 81000.00, 82000.00]),
  ('Employee_7', ARRAY[55000.00, 56000.00, 57000.00, 58000.00]),
  ('Employee_8', ARRAY[47000.00, 49000.00, 50000.00]),
  ('Employee_9', ARRAY[90000.00, 88000.00, 86000.00, 85000.00]),
  ('Employee_10', ARRAY[66000.00, 67000.00, 68000.00, 69000.00]);

  
-- [QUERY] Sum of all arrays
-- SELECT SUM(salary) AS grand_total
-- FROM example.example_s3_schema.array_test,
-- UNNEST(salaries) AS t(salary);