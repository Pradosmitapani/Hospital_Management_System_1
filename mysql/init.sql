CREATE DATABASE IF NOT EXISTS hospital_2;
USE hospital_2;

CREATE TABLE user_dtls (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           full_name VARCHAR(255),
                           email VARCHAR(255),
                           password VARCHAR(255)
);

CREATE TABLE doctor (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        full_name VARCHAR(255),
                        dob VARCHAR(255),
                        qualification VARCHAR(255),
                        specialist VARCHAR(255),
                        email VARCHAR(255),
                        mobno VARCHAR(255),
                        password VARCHAR(255)
);

CREATE TABLE specialist (
                            id INT AUTO_INCREMENT PRIMARY KEY,
                            spec_name VARCHAR(255)
);

CREATE TABLE appointment (
                             id INT AUTO_INCREMENT PRIMARY KEY,
                             user_id INT,
                             fullname VARCHAR(255),
                             gender VARCHAR(255),
                             age VARCHAR(255),
                             appoint_date VARCHAR(255),
                             email VARCHAR(255),
                             phno VARCHAR(255),
                             diseases VARCHAR(255),
                             doctor_id INT,
                             address VARCHAR(255),
                             status VARCHAR(255),
                             FOREIGN KEY (user_id) REFERENCES user_dtls(id),
                             FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);