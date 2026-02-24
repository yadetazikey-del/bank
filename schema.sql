e Schema for Bank Management System

-- Users Table
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL DEFAULT 'USER', -- 'USER' or 'ADMIN'
    balance REAL DEFAULT 0.0
);

-- Transactions Table
CREATE TABLE IF NOT EXISTS transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    type TEXT, -- 'DEPOSIT', 'WITHDRAW', 'TRANSFER'
    amount REAL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

-- Initial Data
INSERT OR IGNORE INTO users (username, password, role, balance) VALUES ('admin', 'admin123', 'ADMIN', 0.0);
INSERT OR IGNORE INTO users (username, password, role, balance) VALUES ('user', 'user123', 'USER', 1000.0);
-- Databas