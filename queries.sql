-- Insert Users
INSERT INTO users (name, email, password, role)
VALUES ('Dr Smith', 'doctor@gmail.com', 'hashedpassword', 'doctor');

INSERT INTO users (name, email, password, role)
VALUES ('Aarya', 'aarya@gmail.com', 'hashedpassword', 'patient');

-- View Users
SELECT * FROM users;

-- Insert Prescription
INSERT INTO prescriptions
(doctor_id, patient_id, medicine, dosage, notes)
VALUES
(1, 2, 'Paracetamol', '2 times daily', 'After food');

-- View Prescriptions
SELECT * FROM prescriptions;

-- Update Prescription
UPDATE prescriptions
SET medicine = 'Ibuprofen',
dosage = '3 times daily',
notes = 'Take after meals'
WHERE id = 1;