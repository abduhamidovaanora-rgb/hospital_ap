CREATE TABLE specialisation(
specialisation_id SERIAL PRIMARY KEY,
Specialisation_name VARCHAR(50) NOT NULL
);

CREATE TABLE doctors (
doctor_id SERIAL PRIMARY KEY,
doctor_name VARCHAR(60) NOT NULL,
doctor_specialisation BIGINT UNSIGNED,
 FOREIGN KEY (doctor_specialisation) REFERENCES Specialisation (Specialisation_id),
password_hash VARCHAR(255) NOT NULL, 
email VARCHAR(100) NOT NULL UNIQUE, 
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE patients(
patient_id SERIAL PRIMARY KEY,
patient_name VARCHAR(60) NOT NULL,
password_hash VARCHAR(255) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE appointments (
Appointment_id SERIAL PRIMARY KEY,
patient_id BIGINT UNSIGNED,
 FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
 doctor_id  BIGINT UNSIGNED,
 FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
 created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
 appointment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 appointment_canceled_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
comments VARCHAR(450)
)

-- made some changes to the table specialisation 

ALTER TABLE specialisation
RENAME COLUMN Specialisation_name TO specialisation_name
