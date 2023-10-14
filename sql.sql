-- Create a database
CREATE DATABASE IF NOT EXISTS tasks;

-- Use the tasks database
USE tasks;

-- Create a table for tasks
CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    completed BOOLEAN NOT NULL DEFAULT 0
);

-- Insert some initial data
INSERT INTO tasks (title, description, completed) VALUES
    ('Task 1', 'This is the first task', 0),
    ('Task 2', 'This is the second task', 1),
    ('Task 3', 'This is the third task', 0);
