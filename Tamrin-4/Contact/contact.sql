CREATE TABLE contact (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(110) NOT NULL UNIQUE,
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status ENUM('new', 'in_progress', 'completed') NOT NULL DEFAULT 'new',
  PRIMARY KEY (id)
);
