CREATE TABLE blood_donors (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
blood_type VARCHAR(255) NOT NULL,
last_donation DATE NOT NULL,
PRIMARY KEY (id)
);
CREATE TABLE blood_types (
id INT NOT NULL AUTO_INCREMENT,
blood_type VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
CREATE TABLE blood_donations (
id INT NOT NULL AUTO_INCREMENT,
donor_id INT NOT NULL,
blood_type_id INT NOT NULL,
donation_date DATE NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (donor_id) REFERENCES blood_donors (id),
FOREIGN KEY (blood_type_id) REFERENCES blood_types (id)
);
